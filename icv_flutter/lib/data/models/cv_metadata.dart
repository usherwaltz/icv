import 'package:freezed_annotation/freezed_annotation.dart';
import 'pdf_theme_option.dart';
import 'storage_location.dart';

part 'cv_metadata.freezed.dart';
part 'cv_metadata.g.dart';

/// Metadata for CV including template, theme, and storage information
@freezed
abstract class CvMetadata with _$CvMetadata {
  const factory CvMetadata({
    required String templateId,
    required PdfThemeOption pdfThemeOption,
    Map<String, dynamic>? pdfCustomTheme, // JSON for custom PDF theme
    @Default(<String>[])
    List<String> sectionOrder, // List of section identifiers
    @Default(StorageLocation.local()) StorageLocation storageLocation,
    DateTime? saveTimestamp,
    @Default(false) bool isDirty, // Tracks unsaved changes
  }) = _CvMetadata;

  factory CvMetadata.fromJson(Map<String, Object?> json) =>
      _$CvMetadataFromJson(json);
}
