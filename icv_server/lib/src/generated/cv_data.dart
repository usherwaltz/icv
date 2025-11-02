/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'storage_location.dart' as _i2;

abstract class CvData
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  CvData._({
    required this.id,
    this.userId,
    required this.templateId,
    required this.cvData,
    required this.pdfThemeSettings,
    required this.sectionOrder,
    required this.storageLocation,
    required this.saveTimestamp,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CvData({
    required int id,
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    required _i2.StorageLocation storageLocation,
    required DateTime saveTimestamp,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _CvDataImpl;

  factory CvData.fromJson(Map<String, dynamic> jsonSerialization) {
    return CvData(
      id: jsonSerialization['id'] as int,
      userId: jsonSerialization['userId'] as int?,
      templateId: jsonSerialization['templateId'] as String,
      cvData: jsonSerialization['cvData'] as String,
      pdfThemeSettings: jsonSerialization['pdfThemeSettings'] as String,
      sectionOrder: jsonSerialization['sectionOrder'] as String,
      storageLocation: _i2.StorageLocation.fromJson(
          (jsonSerialization['storageLocation'] as String)),
      saveTimestamp: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['saveTimestamp']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  int id;

  int? userId;

  String templateId;

  String cvData;

  String pdfThemeSettings;

  String sectionOrder;

  _i2.StorageLocation storageLocation;

  DateTime saveTimestamp;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [CvData]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CvData copyWith({
    int? id,
    int? userId,
    String? templateId,
    String? cvData,
    String? pdfThemeSettings,
    String? sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      if (userId != null) 'userId': userId,
      'templateId': templateId,
      'cvData': cvData,
      'pdfThemeSettings': pdfThemeSettings,
      'sectionOrder': sectionOrder,
      'storageLocation': storageLocation.toJson(),
      'saveTimestamp': saveTimestamp.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'id': id,
      if (userId != null) 'userId': userId,
      'templateId': templateId,
      'cvData': cvData,
      'pdfThemeSettings': pdfThemeSettings,
      'sectionOrder': sectionOrder,
      'storageLocation': storageLocation.toJson(),
      'saveTimestamp': saveTimestamp.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CvDataImpl extends CvData {
  _CvDataImpl({
    required int id,
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    required _i2.StorageLocation storageLocation,
    required DateTime saveTimestamp,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          templateId: templateId,
          cvData: cvData,
          pdfThemeSettings: pdfThemeSettings,
          sectionOrder: sectionOrder,
          storageLocation: storageLocation,
          saveTimestamp: saveTimestamp,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [CvData]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CvData copyWith({
    int? id,
    Object? userId = _Undefined,
    String? templateId,
    String? cvData,
    String? pdfThemeSettings,
    String? sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CvData(
      id: id ?? this.id,
      userId: userId is int? ? userId : this.userId,
      templateId: templateId ?? this.templateId,
      cvData: cvData ?? this.cvData,
      pdfThemeSettings: pdfThemeSettings ?? this.pdfThemeSettings,
      sectionOrder: sectionOrder ?? this.sectionOrder,
      storageLocation: storageLocation ?? this.storageLocation,
      saveTimestamp: saveTimestamp ?? this.saveTimestamp,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
