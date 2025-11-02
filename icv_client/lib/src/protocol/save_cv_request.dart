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

abstract class SaveCvRequest implements _i1.SerializableModel {
  SaveCvRequest._({
    this.userId,
    required this.templateId,
    required this.cvData,
    required this.pdfThemeSettings,
    required this.sectionOrder,
    required this.storageLocation,
  });

  factory SaveCvRequest({
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    required _i2.StorageLocation storageLocation,
  }) = _SaveCvRequestImpl;

  factory SaveCvRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return SaveCvRequest(
      userId: jsonSerialization['userId'] as int?,
      templateId: jsonSerialization['templateId'] as String,
      cvData: jsonSerialization['cvData'] as String,
      pdfThemeSettings: jsonSerialization['pdfThemeSettings'] as String,
      sectionOrder: jsonSerialization['sectionOrder'] as String,
      storageLocation: _i2.StorageLocation.fromJson(
          (jsonSerialization['storageLocation'] as String)),
    );
  }

  int? userId;

  String templateId;

  String cvData;

  String pdfThemeSettings;

  String sectionOrder;

  _i2.StorageLocation storageLocation;

  /// Returns a shallow copy of this [SaveCvRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SaveCvRequest copyWith({
    int? userId,
    String? templateId,
    String? cvData,
    String? pdfThemeSettings,
    String? sectionOrder,
    _i2.StorageLocation? storageLocation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (userId != null) 'userId': userId,
      'templateId': templateId,
      'cvData': cvData,
      'pdfThemeSettings': pdfThemeSettings,
      'sectionOrder': sectionOrder,
      'storageLocation': storageLocation.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SaveCvRequestImpl extends SaveCvRequest {
  _SaveCvRequestImpl({
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    required _i2.StorageLocation storageLocation,
  }) : super._(
          userId: userId,
          templateId: templateId,
          cvData: cvData,
          pdfThemeSettings: pdfThemeSettings,
          sectionOrder: sectionOrder,
          storageLocation: storageLocation,
        );

  /// Returns a shallow copy of this [SaveCvRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SaveCvRequest copyWith({
    Object? userId = _Undefined,
    String? templateId,
    String? cvData,
    String? pdfThemeSettings,
    String? sectionOrder,
    _i2.StorageLocation? storageLocation,
  }) {
    return SaveCvRequest(
      userId: userId is int? ? userId : this.userId,
      templateId: templateId ?? this.templateId,
      cvData: cvData ?? this.cvData,
      pdfThemeSettings: pdfThemeSettings ?? this.pdfThemeSettings,
      sectionOrder: sectionOrder ?? this.sectionOrder,
      storageLocation: storageLocation ?? this.storageLocation,
    );
  }
}
