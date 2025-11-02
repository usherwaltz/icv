// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Education _$EducationFromJson(Map<String, dynamic> json) => _Education(
      degree: json['degree'] as String,
      institution: json['institution'] as String,
      location: json['location'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isCurrentlyEnrolled: json['isCurrentlyEnrolled'] as bool? ?? false,
      fieldOfStudy: json['fieldOfStudy'] as String?,
      grade: json['grade'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$EducationToJson(_Education instance) =>
    <String, dynamic>{
      'degree': instance.degree,
      'institution': instance.institution,
      'location': instance.location,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isCurrentlyEnrolled': instance.isCurrentlyEnrolled,
      'fieldOfStudy': instance.fieldOfStudy,
      'grade': instance.grade,
      'description': instance.description,
    };
