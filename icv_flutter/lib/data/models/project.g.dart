// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Project _$ProjectFromJson(Map<String, dynamic> json) => _Project(
      name: json['name'] as String,
      description: json['description'] as String?,
      technologies: json['technologies'] as String?,
      url: json['url'] as String?,
      githubUrl: json['githubUrl'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      isOngoing: json['isOngoing'] as bool? ?? false,
      highlights: (json['highlights'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$ProjectToJson(_Project instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'technologies': instance.technologies,
      'url': instance.url,
      'githubUrl': instance.githubUrl,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isOngoing': instance.isOngoing,
      'highlights': instance.highlights,
    };
