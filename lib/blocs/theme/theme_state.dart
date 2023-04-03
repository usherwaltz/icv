part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeMode themeMode,
  }) = _ThemeState;

  factory ThemeState.initial() {
    return const ThemeState(
      themeMode: ThemeMode.light,
    );
  }
}
