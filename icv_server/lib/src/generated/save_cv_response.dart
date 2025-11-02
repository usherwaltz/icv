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

abstract class SaveCvResponse
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  SaveCvResponse._({
    required this.success,
    this.cvId,
    this.message,
  });

  factory SaveCvResponse({
    required bool success,
    int? cvId,
    String? message,
  }) = _SaveCvResponseImpl;

  factory SaveCvResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return SaveCvResponse(
      success: jsonSerialization['success'] as bool,
      cvId: jsonSerialization['cvId'] as int?,
      message: jsonSerialization['message'] as String?,
    );
  }

  bool success;

  int? cvId;

  String? message;

  /// Returns a shallow copy of this [SaveCvResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SaveCvResponse copyWith({
    bool? success,
    int? cvId,
    String? message,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      if (cvId != null) 'cvId': cvId,
      if (message != null) 'message': message,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'success': success,
      if (cvId != null) 'cvId': cvId,
      if (message != null) 'message': message,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SaveCvResponseImpl extends SaveCvResponse {
  _SaveCvResponseImpl({
    required bool success,
    int? cvId,
    String? message,
  }) : super._(
          success: success,
          cvId: cvId,
          message: message,
        );

  /// Returns a shallow copy of this [SaveCvResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SaveCvResponse copyWith({
    bool? success,
    Object? cvId = _Undefined,
    Object? message = _Undefined,
  }) {
    return SaveCvResponse(
      success: success ?? this.success,
      cvId: cvId is int? ? cvId : this.cvId,
      message: message is String? ? message : this.message,
    );
  }
}
