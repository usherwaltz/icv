// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkExperience _$WorkExperienceFromJson(Map<String, dynamic> json) =>
    _WorkExperience(
      jobTitle: json['jobTitle'] as String,
      company: json['company'] as String,
      location: json['location'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isCurrentPosition: json['isCurrentPosition'] as bool? ?? false,
      description: json['description'] as String?,
      achievements: (json['achievements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$WorkExperienceToJson(_WorkExperience instance) =>
    <String, dynamic>{
      'jobTitle': instance.jobTitle,
      'company': instance.company,
      'location': instance.location,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isCurrentPosition': instance.isCurrentPosition,
      'description': instance.description,
      'achievements': instance.achievements,
    };
