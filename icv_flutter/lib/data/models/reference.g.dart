// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reference _$ReferenceFromJson(Map<String, dynamic> json) => _Reference(
      name: json['name'] as String,
      relationship: json['relationship'] as String,
      company: json['company'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$ReferenceToJson(_Reference instance) =>
    <String, dynamic>{
      'name': instance.name,
      'relationship': instance.relationship,
      'company': instance.company,
      'email': instance.email,
      'phone': instance.phone,
    };
