import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icv_flutter/data/models/app_theme.dart' as models;
import 'package:icv_flutter/data/models/color_palette.dart';

/// Converts hex color string to Color object
Color _hexToColor(String hex) {
  final hexColor = hex.replaceAll('#', '');
  if (hexColor.length == 6) {
    return Color(int.parse('FF$hexColor', radix: 16));
  }
  return Color(int.parse(hexColor, radix: 16));
}

/// App theme configuration
///
/// Provides Material and Cupertino theme configurations based on
/// AppTheme mode (light/dark) and ColorPalette selection.
class AppThemeConfig {
  /// Get Material ThemeData for the given theme mode and color palette
  static ThemeData getMaterialTheme({
    required models.AppTheme appTheme,
    required ColorPalette colorPalette,
  }) {
    final isDark = appTheme is models.DarkTheme;
    final colors =
        isDark ? _getDarkColors(colorPalette) : _getLightColors(colorPalette);

    return ThemeData(
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: colors.primary,
        onPrimary: colors.onPrimary,
        secondary: colors.secondary,
        onSecondary: colors.onSecondary,
        tertiary: colors.accent,
        onTertiary: colors.onAccent,
        error: colors.error,
        onError: colors.onError,
        surface: colors.surface,
        onSurface: colors.onSurface,
        surfaceContainerHighest: colors.surfaceContainerHighest,
        onSurfaceVariant: colors.onSurfaceVariant,
        outline: colors.outline,
        outlineVariant: colors.outlineVariant,
      ),
      scaffoldBackgroundColor: colors.background,
      cardColor: colors.surface,
      canvasColor: colors.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.surface,
        foregroundColor: colors.text,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardThemeData(
        color: colors.surface,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.outlineVariant),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: colors.error),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.outline),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          color: colors.text,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: colors.text,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: colors.text,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TextStyle(
          color: colors.text,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: colors.text,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colors.text,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colors.text,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colors.text,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: colors.text,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: colors.text,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: colors.text,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: colors.text,
          fontSize: 12,
        ),
        labelLarge: TextStyle(
          color: colors.text,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: colors.text,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: colors.text,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
      dividerTheme: DividerThemeData(
        color: colors.outlineVariant,
        thickness: 1,
      ),
    );
  }

  /// Get Cupertino ThemeData for the given theme mode and color palette
  static CupertinoThemeData getCupertinoTheme({
    required models.AppTheme appTheme,
    required ColorPalette colorPalette,
  }) {
    final isDark = appTheme is models.DarkTheme;
    final colors =
        isDark ? _getDarkColors(colorPalette) : _getLightColors(colorPalette);

    return CupertinoThemeData(
      brightness: isDark ? Brightness.dark : Brightness.light,
      primaryColor: colors.primary,
      scaffoldBackgroundColor: colors.background,
      barBackgroundColor: colors.surface,
      textTheme: CupertinoTextThemeData(
        primaryColor: colors.text,
        textStyle: TextStyle(color: colors.text),
      ),
    );
  }

  /// Color scheme for light mode
  static _ThemeColors _getLightColors(ColorPalette palette) {
    return _ThemeColors(
      primary: _hexToColor(palette.primaryColor),
      onPrimary: _hexToColor('#FFFFFF'),
      secondary: _hexToColor(palette.secondaryColor),
      onSecondary: _hexToColor('#FFFFFF'),
      accent: _hexToColor(palette.accentColor),
      onAccent: _hexToColor('#FFFFFF'),
      background: _hexToColor(palette.backgroundColor),
      surface: _hexToColor(palette.surfaceColor),
      onSurface: _hexToColor(palette.textColor),
      surfaceContainerHighest:
          _hexToColor(palette.surfaceColor).withValues(alpha: 0.08),
      onSurfaceVariant: _hexToColor(palette.textColor).withValues(alpha: 0.7),
      outline: _hexToColor(palette.textColor).withValues(alpha: 0.2),
      outlineVariant: _hexToColor(palette.textColor).withValues(alpha: 0.1),
      error: _hexToColor('#DC2626'),
      onError: _hexToColor('#FFFFFF'),
      text: _hexToColor(palette.textColor),
    );
  }

  /// Color scheme for dark mode
  static _ThemeColors _getDarkColors(ColorPalette palette) {
    return _ThemeColors(
      primary: _hexToColor(palette.primaryColorDark),
      onPrimary: _hexToColor('#000000'),
      secondary: _hexToColor(palette.secondaryColorDark),
      onSecondary: _hexToColor('#FFFFFF'),
      accent: _hexToColor(palette.accentColorDark),
      onAccent: _hexToColor('#FFFFFF'),
      background: _hexToColor(palette.backgroundColorDark),
      surface: _hexToColor(palette.surfaceColorDark),
      onSurface: _hexToColor(palette.textColorDark),
      surfaceContainerHighest:
          _hexToColor(palette.surfaceColorDark).withValues(alpha: 0.12),
      onSurfaceVariant:
          _hexToColor(palette.textColorDark).withValues(alpha: 0.7),
      outline: _hexToColor(palette.textColorDark).withValues(alpha: 0.3),
      outlineVariant:
          _hexToColor(palette.textColorDark).withValues(alpha: 0.15),
      error: _hexToColor('#EF4444'),
      onError: _hexToColor('#FFFFFF'),
      text: _hexToColor(palette.textColorDark),
    );
  }
}

/// Internal color scheme representation
class _ThemeColors {
  final Color primary;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color accent;
  final Color onAccent;
  final Color background;
  final Color surface;
  final Color onSurface;
  final Color surfaceContainerHighest;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color error;
  final Color onError;
  final Color text;

  _ThemeColors({
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.accent,
    required this.onAccent,
    required this.background,
    required this.surface,
    required this.onSurface,
    required this.surfaceContainerHighest,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.error,
    required this.onError,
    required this.text,
  });
}
