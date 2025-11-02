import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_theme_option.freezed.dart';
part 'pdf_theme_option.g.dart';

/// Represents PDF theme options
@freezed
sealed class PdfThemeOption with _$PdfThemeOption {
  /// Black & White mode (grayscale, optimized for printing)
  const factory PdfThemeOption.blackWhite() = BlackWhite;

  /// Mirror App Theme (uses the same theme as the app)
  const factory PdfThemeOption.mirrorApp() = MirrorApp;

  /// PDF-Specific Theme (separate theme selection for PDF only)
  const factory PdfThemeOption.custom() = PdfCustom;

  factory PdfThemeOption.fromJson(Map<String, Object?> json) =>
      _$PdfThemeOptionFromJson(json);
}
