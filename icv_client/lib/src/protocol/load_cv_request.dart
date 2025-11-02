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

abstract class LoadCvRequest implements _i1.SerializableModel {
  LoadCvRequest._({
    required this.userId,
    required this.cvId,
  });

  factory LoadCvRequest({
    required int userId,
    required int cvId,
  }) = _LoadCvRequestImpl;

  factory LoadCvRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoadCvRequest(
      userId: jsonSerialization['userId'] as int,
      cvId: jsonSerialization['cvId'] as int,
    );
  }

  int userId;

  int cvId;

  /// Returns a shallow copy of this [LoadCvRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LoadCvRequest copyWith({
    int? userId,
    int? cvId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'cvId': cvId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _LoadCvRequestImpl extends LoadCvRequest {
  _LoadCvRequestImpl({
    required int userId,
    required int cvId,
  }) : super._(
          userId: userId,
          cvId: cvId,
        );

  /// Returns a shallow copy of this [LoadCvRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LoadCvRequest copyWith({
    int? userId,
    int? cvId,
  }) {
    return LoadCvRequest(
      userId: userId ?? this.userId,
      cvId: cvId ?? this.cvId,
    );
  }
}
