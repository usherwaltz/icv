import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/theme/theme_state.dart';
import 'package:icv_flutter/core/theme/color_palettes.dart';
import 'package:icv_flutter/data/models/app_theme.dart';
import 'package:icv_flutter/data/models/color_palette.dart';
import 'package:icv_flutter/data/local_storage/preference_storage_service.dart';

/// Cubit for managing app theme (light/dark mode) and color palette
class ThemeCubit extends Cubit<ThemeState> {
  final PreferenceStorageService _storage;

  ThemeCubit(this._storage) : super(const ThemeState.initial()) {
    _loadTheme();
  }

  /// Load saved theme and color palette from local storage
  Future<void> _loadTheme() async {
    try {
      final savedTheme = await _storage.loadTheme();
      final savedPalette = await _storage.loadColorPalette();

      final theme = savedTheme ?? const AppTheme.light();
      final palette = savedPalette ?? DefaultColorPalettes.defaultPalette;

      emit(ThemeState.loaded(theme: theme, colorPalette: palette));
    } catch (e) {
      emit(ThemeState.error(
        message: e.toString(),
        fallbackTheme: const AppTheme.light(),
        fallbackColorPalette: DefaultColorPalettes.defaultPalette,
      ));
    }
  }

  /// Toggle between light and dark theme
  Future<void> toggleTheme() async {
    final currentTheme = state.currentTheme;
    final newTheme = switch (currentTheme) {
      DarkTheme() => const AppTheme.light(),
      LightTheme() => const AppTheme.dark(),
    };

    await setTheme(newTheme);
  }

  /// Set specific theme
  Future<void> setTheme(AppTheme theme) async {
    try {
      await _storage.saveTheme(theme);

      emit(ThemeState.loaded(
        theme: theme,
        colorPalette: state.currentPalette,
      ));
    } catch (e) {
      emit(ThemeState.error(
        message: e.toString(),
        fallbackTheme: theme,
        fallbackColorPalette: DefaultColorPalettes.defaultPalette,
      ));
    }
  }

  /// Set specific color palette
  Future<void> setColorPalette(ColorPalette palette) async {
    try {
      await _storage.saveColorPalette(palette);

      emit(ThemeState.loaded(
        theme: state.currentTheme,
        colorPalette: palette,
      ));
    } catch (e) {
      emit(ThemeState.error(
        message: e.toString(),
        fallbackTheme: const AppTheme.light(),
        fallbackColorPalette: palette,
      ));
    }
  }
}
