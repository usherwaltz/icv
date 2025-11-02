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

abstract class CV implements _i1.SerializableModel {
  CV._({
    this.id,
    this.userId,
    required this.templateId,
    required this.cvData,
    required this.pdfThemeSettings,
    required this.sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : storageLocation = storageLocation ?? _i2.StorageLocation.local,
        saveTimestamp = saveTimestamp ?? DateTime.now(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory CV({
    int? id,
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CVImpl;

  factory CV.fromJson(Map<String, dynamic> jsonSerialization) {
    return CV(
      id: jsonSerialization['id'] as int?,
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  String templateId;

  String cvData;

  String pdfThemeSettings;

  String sectionOrder;

  _i2.StorageLocation storageLocation;

  DateTime saveTimestamp;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [CV]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CV copyWith({
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
      if (id != null) 'id': id,
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

class _CVImpl extends CV {
  _CVImpl({
    int? id,
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
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

  /// Returns a shallow copy of this [CV]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CV copyWith({
    Object? id = _Undefined,
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
    return CV(
      id: id is int? ? id : this.id,
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
