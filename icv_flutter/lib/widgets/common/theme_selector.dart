import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:icv_flutter/core/bloc/theme/theme_cubit.dart';
import 'package:icv_flutter/core/bloc/theme/theme_state.dart';
import 'package:icv_flutter/core/theme/color_palettes.dart';
import 'package:icv_flutter/data/models/color_palette.dart';

/// Theme selector widget
///
/// Allows users to:
/// - Toggle between light/dark mode
/// - Select color palette
class ThemeSelector extends StatelessWidget {
  const ThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final isDark = state.isDark;
        final themeCubit = context.read<ThemeCubit>();

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dark/Light Mode Toggle
            ShadCard(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          'Theme Mode',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 4),
                        SelectableText(
                          isDark ? 'Dark' : 'Light',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                        ),
                      ],
                    ),
                    ShadSwitch(
                      value: isDark,
                      onChanged: (_) => themeCubit.toggleTheme(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Color Palette Selector
            SelectableText(
              'Color Palette',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            _ColorPaletteGrid(
              currentPalette: state.currentPalette,
              onPaletteSelected: (palette) {
                themeCubit.setColorPalette(palette);
              },
            ),
          ],
        );
      },
    );
  }
}

/// Color palette grid selector
class _ColorPaletteGrid extends StatelessWidget {
  final ColorPalette currentPalette;
  final ValueChanged<ColorPalette> onPaletteSelected;

  const _ColorPaletteGrid({
    required this.currentPalette,
    required this.onPaletteSelected,
  });

  Color _hexToColor(String hex) {
    final hexColor = hex.replaceAll('#', '');
    if (hexColor.length == 6) {
      return Color(int.parse('FF$hexColor', radix: 16));
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  @override
  Widget build(BuildContext context) {
    final palettes = DefaultColorPalettes.all;

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 2.5,
      ),
      itemCount: palettes.length,
      itemBuilder: (context, index) {
        final palette = palettes[index];
        final isSelected = palette.id == currentPalette.id;

        return GestureDetector(
          onTap: () => onPaletteSelected(palette),
          child: ShadCard(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.outlineVariant,
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    // Color preview
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: _hexToColor(palette.primaryColor),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.outline,
                          width: 1,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Palette name
                    Expanded(
                      child: SelectableText(
                        palette.name,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                      ),
                    ),
                    // Selected indicator
                    if (isSelected)
                      Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.primary,
                        size: 20,
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
