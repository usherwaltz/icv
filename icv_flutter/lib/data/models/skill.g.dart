// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Skill _$SkillFromJson(Map<String, dynamic> json) => _Skill(
      name: json['name'] as String,
      category: json['category'] as String?,
      proficiency: json['proficiency'] as String?,
    );

Map<String, dynamic> _$SkillToJson(_Skill instance) => <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'proficiency': instance.proficiency,
    };
