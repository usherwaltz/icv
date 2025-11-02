import 'package:icv_flutter/data/models/color_palette.dart';

/// Default color palettes for the app
///
/// Each palette includes both light and dark variants.
class DefaultColorPalettes {
  /// Blue palette - Professional and trustworthy
  static const ColorPalette blue = ColorPalette(
    id: 'blue',
    name: 'Blue',
    primaryColor: '#2563EB',
    secondaryColor: '#3B82F6',
    accentColor: '#60A5FA',
    backgroundColor: '#FFFFFF',
    surfaceColor: '#F8FAFC',
    textColor: '#1E293B',
    primaryColorDark: '#3B82F6',
    secondaryColorDark: '#60A5FA',
    accentColorDark: '#93C5FD',
    backgroundColorDark: '#0F172A',
    surfaceColorDark: '#1E293B',
    textColorDark: '#F1F5F9',
  );

  /// Purple palette - Creative and modern
  static const ColorPalette purple = ColorPalette(
    id: 'purple',
    name: 'Purple',
    primaryColor: '#7C3AED',
    secondaryColor: '#8B5CF6',
    accentColor: '#A78BFA',
    backgroundColor: '#FFFFFF',
    surfaceColor: '#FAF5FF',
    textColor: '#1E293B',
    primaryColorDark: '#8B5CF6',
    secondaryColorDark: '#A78BFA',
    accentColorDark: '#C4B5FD',
    backgroundColorDark: '#1E1B4B',
    surfaceColorDark: '#312E81',
    textColorDark: '#F3E8FF',
  );

  /// Green palette - Fresh and vibrant
  static const ColorPalette green = ColorPalette(
    id: 'green',
    name: 'Green',
    primaryColor: '#059669',
    secondaryColor: '#10B981',
    accentColor: '#34D399',
    backgroundColor: '#FFFFFF',
    surfaceColor: '#F0FDF4',
    textColor: '#1E293B',
    primaryColorDark: '#10B981',
    secondaryColorDark: '#34D399',
    accentColorDark: '#6EE7B7',
    backgroundColorDark: '#064E3B',
    surfaceColorDark: '#065F46',
    textColorDark: '#D1FAE5',
  );

  /// Orange palette - Energetic and warm
  static const ColorPalette orange = ColorPalette(
    id: 'orange',
    name: 'Orange',
    primaryColor: '#EA580C',
    secondaryColor: '#F97316',
    accentColor: '#FB923C',
    backgroundColor: '#FFFFFF',
    surfaceColor: '#FFF7ED',
    textColor: '#1E293B',
    primaryColorDark: '#F97316',
    secondaryColorDark: '#FB923C',
    accentColorDark: '#FDBA74',
    backgroundColorDark: '#7C2D12',
    surfaceColorDark: '#9A3412',
    textColorDark: '#FFEDD5',
  );

  /// Indigo palette - Sophisticated and calm
  static const ColorPalette indigo = ColorPalette(
    id: 'indigo',
    name: 'Indigo',
    primaryColor: '#4F46E5',
    secondaryColor: '#6366F1',
    accentColor: '#818CF8',
    backgroundColor: '#FFFFFF',
    surfaceColor: '#EEF2FF',
    textColor: '#1E293B',
    primaryColorDark: '#6366F1',
    secondaryColorDark: '#818CF8',
    accentColorDark: '#A5B4FC',
    backgroundColorDark: '#312E81',
    surfaceColorDark: '#4338CA',
    textColorDark: '#E0E7FF',
  );

  /// Get all available color palettes
  static List<ColorPalette> get all => [
        blue,
        purple,
        green,
        orange,
        indigo,
      ];

  /// Get a color palette by ID
  static ColorPalette? getById(String id) {
    return all.firstWhere(
      (palette) => palette.id == id,
      orElse: () => blue, // Default to blue if not found
    );
  }

  /// Get the default color palette
  static ColorPalette get defaultPalette => blue;
}
