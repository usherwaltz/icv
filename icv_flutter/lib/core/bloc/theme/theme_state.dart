import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icv_flutter/core/theme/color_palettes.dart';
import 'package:icv_flutter/data/models/app_theme.dart';
import 'package:icv_flutter/data/models/color_palette.dart';

part 'theme_state.freezed.dart';

/// Represents the state of app theme management
@freezed
sealed class ThemeState with _$ThemeState {
  /// Initial state with default theme
  const factory ThemeState.initial({
    @Default(AppTheme.light()) AppTheme theme,
    ColorPalette? colorPalette,
  }) = ThemeInitial;

  /// Theme loaded and active
  const factory ThemeState.loaded({
    required AppTheme theme,
    ColorPalette? colorPalette,
  }) = ThemeLoaded;

  /// Error state
  const factory ThemeState.error({
    required String message,
    AppTheme? fallbackTheme,
    ColorPalette? fallbackColorPalette,
  }) = ThemeError;
}

/// Extension methods for ThemeState to easily access current theme and palette
extension ThemeStateExtension on ThemeState {
  /// Get the current app theme (light or dark)
  /// Returns light theme as default if not available
  AppTheme get currentTheme {
    return maybeWhen(
      initial: (theme, _) => theme,
      loaded: (theme, _) => theme,
      error: (_, fallbackTheme, __) => fallbackTheme ?? const AppTheme.light(),
      orElse: () => const AppTheme.light(),
    );
  }

  /// Get the current color palette
  /// Returns default palette if not available
  ColorPalette get currentPalette {
    return maybeWhen(
      initial: (_, palette) => palette ?? DefaultColorPalettes.defaultPalette,
      loaded: (_, palette) => palette ?? DefaultColorPalettes.defaultPalette,
      error: (_, __, fallbackPalette) =>
          fallbackPalette ?? DefaultColorPalettes.defaultPalette,
      orElse: () => DefaultColorPalettes.defaultPalette,
    );
  }

  /// Check if the current theme is dark mode
  bool get isDark => currentTheme is DarkTheme;
}
