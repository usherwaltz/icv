import 'package:flutter/material.dart';

/// Wrapper widget for CV sections that displays a drag handle
/// The reorderables package handles the actual dragging
class DraggableSectionWrapper extends StatelessWidget {
  final String sectionId;
  final String sectionTitle;
  final Widget child;
  final int sectionIndex;

  const DraggableSectionWrapper({
    super.key,
    required this.sectionId,
    required this.sectionTitle,
    required this.child,
    required this.sectionIndex,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Wrap the entire card in a Stack to add drag handle icon
    return Stack(
      children: [
        // The section card itself
        child,
        // Drag handle icon in the top-right corner
        Positioned(
          top: 8,
          right: 8,
          child: MouseRegion(
            cursor: SystemMouseCursors.grab,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest
                    .withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(
                Icons.drag_handle,
                size: 20,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
