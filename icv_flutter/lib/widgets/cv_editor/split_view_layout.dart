import 'package:flutter/material.dart';

/// Breakpoints for responsive layout
class Breakpoints {
  static const double mobile = 768;
  static const double tablet = 1024;
}

/// Split-view layout component for CV editor
///
/// Provides a responsive layout with:
/// - Desktop (>=1024px): Side-by-side layout
/// - Tablet (768-1023px): Side-by-side or stacked (configurable)
/// - Mobile (<768px): Stacked layout (form on top, preview below)
///
/// Supports optional collapsible panels.
class SplitViewLayout extends StatefulWidget {
  /// Left side content (form container)
  final Widget leftContent;

  /// Right side content (PDF preview container)
  final Widget rightContent;

  /// Minimum width for side-by-side layout on tablet
  /// Default: 768px
  final double? tabletBreakpoint;

  /// Whether to allow panel collapsing
  /// Default: true
  final bool allowCollapse;

  /// Initial collapse state for left panel
  /// Default: false
  final bool initialLeftCollapsed;

  /// Initial collapse state for right panel
  /// Default: false
  final bool initialRightCollapsed;

  /// Spacing between panels when side-by-side
  /// Default: 16.0
  final double spacing;

  const SplitViewLayout({
    super.key,
    required this.leftContent,
    required this.rightContent,
    this.tabletBreakpoint,
    this.allowCollapse = true,
    this.initialLeftCollapsed = false,
    this.initialRightCollapsed = false,
    this.spacing = 16.0,
  });

  @override
  State<SplitViewLayout> createState() => _SplitViewLayoutState();
}

class _SplitViewLayoutState extends State<SplitViewLayout> {
  late bool _leftCollapsed;
  late bool _rightCollapsed;

  @override
  void initState() {
    super.initState();
    _leftCollapsed = widget.initialLeftCollapsed;
    _rightCollapsed = widget.initialRightCollapsed;
  }

  /// Toggle left panel collapse state
  void _toggleLeft() {
    if (widget.allowCollapse) {
      setState(() {
        _leftCollapsed = !_leftCollapsed;
      });
    }
  }

  /// Toggle right panel collapse state
  void _toggleRight() {
    if (widget.allowCollapse) {
      setState(() {
        _rightCollapsed = !_rightCollapsed;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final tabletBreakpoint = widget.tabletBreakpoint ?? Breakpoints.mobile;

        // Determine layout mode based on screen width
        final isMobile = screenWidth < tabletBreakpoint;

        // On mobile, always use stacked layout
        if (isMobile) {
          return _buildStackedLayout(context);
        }

        // On tablet or desktop, use side-by-side layout
        return _buildSideBySideLayout(context, constraints);
      },
    );
  }

  /// Build stacked layout for mobile (form on top, preview below)
  Widget _buildStackedLayout(BuildContext context) {
    return Column(
      children: [
        // Form container (top)
        Expanded(
          flex: 1,
          child: _buildScrollableContainer(
            context,
            widget.leftContent,
            title: 'Form',
            isLeft: true,
          ),
        ),
        SizedBox(height: widget.spacing),
        // Preview container (bottom)
        Expanded(
          flex: 1,
          child: _buildScrollableContainer(
            context,
            widget.rightContent,
            title: 'Preview',
            isLeft: false,
          ),
        ),
      ],
    );
  }

  /// Build side-by-side layout for tablet and desktop
  Widget _buildSideBySideLayout(
      BuildContext context, BoxConstraints constraints) {
    // If both panels are collapsed, show a message
    if (_leftCollapsed && _rightCollapsed && widget.allowCollapse) {
      return Center(
        child: SelectableText(
          'Both panels are collapsed. Click to expand.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
    }

    return Row(
      children: [
        // Left panel (form)
        if (!_leftCollapsed)
          Expanded(
            flex: _rightCollapsed ? 2 : 1,
            child: _buildScrollableContainer(
              context,
              widget.leftContent,
              title: 'Form',
              isLeft: true,
            ),
          ),
        if (!_leftCollapsed && !_rightCollapsed)
          SizedBox(width: widget.spacing),
        // Right panel (preview)
        if (!_rightCollapsed)
          Expanded(
            flex: _leftCollapsed ? 2 : 1,
            child: _buildScrollableContainer(
              context,
              widget.rightContent,
              title: 'Preview',
              isLeft: false,
            ),
          ),
        // Handle case where one panel is collapsed
        if (_leftCollapsed && !_rightCollapsed)
          _buildCollapsedPanel(context, isLeft: true),
        if (!_leftCollapsed && _rightCollapsed)
          _buildCollapsedPanel(context, isLeft: false),
      ],
    );
  }

  /// Build a scrollable container with header and collapse button
  Widget _buildScrollableContainer(
    BuildContext context,
    Widget content, {
    required String title,
    required bool isLeft,
  }) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          // Header with title and collapse button
          if (widget.allowCollapse)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.5,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      title,
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      isLeft
                          ? (_leftCollapsed
                              ? Icons.chevron_right
                              : Icons.chevron_left)
                          : (_rightCollapsed
                              ? Icons.chevron_left
                              : Icons.chevron_right),
                      size: 20,
                    ),
                    onPressed: isLeft ? _toggleLeft : _toggleRight,
                    tooltip: isLeft
                        ? (_leftCollapsed ? 'Expand Form' : 'Collapse Form')
                        : (_rightCollapsed
                            ? 'Expand Preview'
                            : 'Collapse Preview'),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ),
          // Scrollable content
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: const Radius.circular(8),
                bottomRight: const Radius.circular(8),
                topLeft: widget.allowCollapse
                    ? Radius.zero
                    : const Radius.circular(8),
                topRight: widget.allowCollapse
                    ? Radius.zero
                    : const Radius.circular(8),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(16),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight:
                            constraints.maxHeight - 32, // Account for padding
                      ),
                      child: content,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Build a collapsed panel (thin strip with expand button)
  Widget _buildCollapsedPanel(BuildContext context, {required bool isLeft}) {
    final theme = Theme.of(context);

    return Container(
      width: 48,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Center(
        child: RotatedBox(
          quarterTurns: isLeft ? 0 : 2,
          child: IconButton(
            icon: Icon(
              Icons.chevron_right,
              color: theme.colorScheme.onSurface,
            ),
            onPressed: isLeft ? _toggleLeft : _toggleRight,
            tooltip: isLeft ? 'Expand Form' : 'Expand Preview',
          ),
        ),
      ),
    );
  }
}
