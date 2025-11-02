import 'package:freezed_annotation/freezed_annotation.dart';
import 'pdf_theme_option.dart';

part 'pdf_theme.freezed.dart';
part 'pdf_theme.g.dart';

/// Represents PDF theme configuration
@freezed
abstract class PdfTheme with _$PdfTheme {
  const factory PdfTheme({
    required PdfThemeOption option,
    Map<String, dynamic>?
        customTheme, // JSON for custom theme when option is custom
  }) = _PdfTheme;

  factory PdfTheme.fromJson(Map<String, Object?> json) =>
      _$PdfThemeFromJson(json);
}
