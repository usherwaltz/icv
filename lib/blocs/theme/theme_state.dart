part of 'theme_bloc.dart';

/// All 'event' and 'state' classes in this project used the 'freezed' package.
/// Being there is no strict standard or convention for defining events and states in BLoC pattern,
/// I decided to use the 'freezed' package to enhance the readability and simplicity of the code.
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
