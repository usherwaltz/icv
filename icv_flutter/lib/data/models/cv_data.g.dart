// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cv_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CvData _$CvDataFromJson(Map<String, dynamic> json) => _CvData(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      linkedInUrl: json['linkedInUrl'] as String?,
      githubUrl: json['githubUrl'] as String?,
      professionalSummary: json['professionalSummary'] as String?,
      workExperience: (json['workExperience'] as List<dynamic>?)
              ?.map((e) => WorkExperience.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WorkExperience>[],
      education: (json['education'] as List<dynamic>?)
              ?.map((e) => Education.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Education>[],
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => Skill.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Skill>[],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Language>[],
      certifications: (json['certifications'] as List<dynamic>?)
              ?.map((e) => Certification.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Certification>[],
      projects: (json['projects'] as List<dynamic>?)
              ?.map((e) => Project.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Project>[],
      references: (json['references'] as List<dynamic>?)
              ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Reference>[],
    );

Map<String, dynamic> _$CvDataToJson(_CvData instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'linkedInUrl': instance.linkedInUrl,
      'githubUrl': instance.githubUrl,
      'professionalSummary': instance.professionalSummary,
      'workExperience': instance.workExperience,
      'education': instance.education,
      'skills': instance.skills,
      'languages': instance.languages,
      'certifications': instance.certifications,
      'projects': instance.projects,
      'references': instance.references,
    };
