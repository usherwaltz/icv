import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_theme.freezed.dart';
part 'app_theme.g.dart';

/// Represents app theme mode (dark or light)
@freezed
sealed class AppTheme with _$AppTheme {
  const factory AppTheme.dark() = DarkTheme;
  const factory AppTheme.light() = LightTheme;

  factory AppTheme.fromJson(Map<String, Object?> json) =>
      _$AppThemeFromJson(json);
}
