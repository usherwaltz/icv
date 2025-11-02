import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_palette.freezed.dart';
part 'color_palette.g.dart';

/// Represents a color palette with dark and light variants
@freezed
abstract class ColorPalette with _$ColorPalette {
  const factory ColorPalette({
    required String id,
    required String name,
    required String primaryColor, // Hex color
    required String secondaryColor, // Hex color
    required String accentColor, // Hex color
    required String backgroundColor, // Hex color
    required String surfaceColor, // Hex color
    required String textColor, // Hex color
    // Dark variant colors
    required String primaryColorDark,
    required String secondaryColorDark,
    required String accentColorDark,
    required String backgroundColorDark,
    required String surfaceColorDark,
    required String textColorDark,
  }) = _ColorPalette;

  factory ColorPalette.fromJson(Map<String, Object?> json) =>
      _$ColorPaletteFromJson(json);
}
