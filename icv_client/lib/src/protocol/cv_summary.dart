/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'storage_location.dart' as _i2;

abstract class CvSummary implements _i1.SerializableModel {
  CvSummary._({
    required this.id,
    required this.templateId,
    required this.saveTimestamp,
    required this.updatedAt,
    required this.storageLocation,
  });

  factory CvSummary({
    required int id,
    required String templateId,
    required DateTime saveTimestamp,
    required DateTime updatedAt,
    required _i2.StorageLocation storageLocation,
  }) = _CvSummaryImpl;

  factory CvSummary.fromJson(Map<String, dynamic> jsonSerialization) {
    return CvSummary(
      id: jsonSerialization['id'] as int,
      templateId: jsonSerialization['templateId'] as String,
      saveTimestamp: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['saveTimestamp']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
      storageLocation: _i2.StorageLocation.fromJson(
          (jsonSerialization['storageLocation'] as String)),
    );
  }

  int id;

  String templateId;

  DateTime saveTimestamp;

  DateTime updatedAt;

  _i2.StorageLocation storageLocation;

  /// Returns a shallow copy of this [CvSummary]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CvSummary copyWith({
    int? id,
    String? templateId,
    DateTime? saveTimestamp,
    DateTime? updatedAt,
    _i2.StorageLocation? storageLocation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'templateId': templateId,
      'saveTimestamp': saveTimestamp.toJson(),
      'updatedAt': updatedAt.toJson(),
      'storageLocation': storageLocation.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _CvSummaryImpl extends CvSummary {
  _CvSummaryImpl({
    required int id,
    required String templateId,
    required DateTime saveTimestamp,
    required DateTime updatedAt,
    required _i2.StorageLocation storageLocation,
  }) : super._(
          id: id,
          templateId: templateId,
          saveTimestamp: saveTimestamp,
          updatedAt: updatedAt,
          storageLocation: storageLocation,
        );

  /// Returns a shallow copy of this [CvSummary]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CvSummary copyWith({
    int? id,
    String? templateId,
    DateTime? saveTimestamp,
    DateTime? updatedAt,
    _i2.StorageLocation? storageLocation,
  }) {
    return CvSummary(
      id: id ?? this.id,
      templateId: templateId ?? this.templateId,
      saveTimestamp: saveTimestamp ?? this.saveTimestamp,
      updatedAt: updatedAt ?? this.updatedAt,
      storageLocation: storageLocation ?? this.storageLocation,
    );
  }
}
