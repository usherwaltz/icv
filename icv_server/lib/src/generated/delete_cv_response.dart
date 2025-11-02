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

abstract class DeleteCvResponse
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  DeleteCvResponse._({
    required this.success,
    this.message,
  });

  factory DeleteCvResponse({
    required bool success,
    String? message,
  }) = _DeleteCvResponseImpl;

  factory DeleteCvResponse.fromJson(Map<String, dynamic> jsonSerialization) {
    return DeleteCvResponse(
      success: jsonSerialization['success'] as bool,
      message: jsonSerialization['message'] as String?,
    );
  }

  bool success;

  String? message;

  /// Returns a shallow copy of this [DeleteCvResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  DeleteCvResponse copyWith({
    bool? success,
    String? message,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      if (message != null) 'message': message,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'success': success,
      if (message != null) 'message': message,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DeleteCvResponseImpl extends DeleteCvResponse {
  _DeleteCvResponseImpl({
    required bool success,
    String? message,
  }) : super._(
          success: success,
          message: message,
        );

  /// Returns a shallow copy of this [DeleteCvResponse]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  DeleteCvResponse copyWith({
    bool? success,
    Object? message = _Undefined,
  }) {
    return DeleteCvResponse(
      success: success ?? this.success,
      message: message is String? ? message : this.message,
    );
  }
}
