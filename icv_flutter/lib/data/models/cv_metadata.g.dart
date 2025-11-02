// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CvMetadata _$CvMetadataFromJson(Map<String, dynamic> json) => _CvMetadata(
      templateId: json['templateId'] as String,
      pdfThemeOption: PdfThemeOption.fromJson(
          json['pdfThemeOption'] as Map<String, dynamic>),
      pdfCustomTheme: json['pdfCustomTheme'] as Map<String, dynamic>?,
      sectionOrder: (json['sectionOrder'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      storageLocation: json['storageLocation'] == null
          ? const StorageLocation.local()
          : StorageLocation.fromJson(
              json['storageLocation'] as Map<String, dynamic>),
      saveTimestamp: json['saveTimestamp'] == null
          ? null
          : DateTime.parse(json['saveTimestamp'] as String),
      isDirty: json['isDirty'] as bool? ?? false,
    );

Map<String, dynamic> _$CvMetadataToJson(_CvMetadata instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'pdfThemeOption': instance.pdfThemeOption,
      'pdfCustomTheme': instance.pdfCustomTheme,
      'sectionOrder': instance.sectionOrder,
      'storageLocation': instance.storageLocation,
      'saveTimestamp': instance.saveTimestamp?.toIso8601String(),
      'isDirty': instance.isDirty,
    };
