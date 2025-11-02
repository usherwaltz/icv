// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PdfTheme _$PdfThemeFromJson(Map<String, dynamic> json) => _PdfTheme(
      option: PdfThemeOption.fromJson(json['option'] as Map<String, dynamic>),
      customTheme: json['customTheme'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PdfThemeToJson(_PdfTheme instance) => <String, dynamic>{
      'option': instance.option,
      'customTheme': instance.customTheme,
    };
