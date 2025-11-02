import 'package:freezed_annotation/freezed_annotation.dart';

part 'template.freezed.dart';
part 'template.g.dart';

/// Represents a CV template
@freezed
abstract class Template with _$Template {
  const factory Template({
    required String id,
    required String name,
    required String description,
    required String category, // e.g., "modern", "classic", "creative"
    String? previewThumbnailPath, // Optional path to preview image
  }) = _Template;

  factory Template.fromJson(Map<String, Object?> json) =>
      _$TemplateFromJson(json);
}
