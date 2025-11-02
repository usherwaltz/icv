// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Certification _$CertificationFromJson(Map<String, dynamic> json) =>
    _Certification(
      name: json['name'] as String,
      issuer: json['issuer'] as String,
      issueDate: DateTime.parse(json['issueDate'] as String),
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
      credentialId: json['credentialId'] as String?,
      credentialUrl: json['credentialUrl'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CertificationToJson(_Certification instance) =>
    <String, dynamic>{
      'name': instance.name,
      'issuer': instance.issuer,
      'issueDate': instance.issueDate.toIso8601String(),
      'expirationDate': instance.expirationDate?.toIso8601String(),
      'credentialId': instance.credentialId,
      'credentialUrl': instance.credentialUrl,
      'description': instance.description,
    };
