// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Template _$TemplateFromJson(Map<String, dynamic> json) => _Template(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      previewThumbnailPath: json['previewThumbnailPath'] as String?,
    );

Map<String, dynamic> _$TemplateToJson(_Template instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'previewThumbnailPath': instance.previewThumbnailPath,
    };
