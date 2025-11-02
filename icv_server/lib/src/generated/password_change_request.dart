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

abstract class PasswordChangeRequest
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  PasswordChangeRequest._({
    required this.userId,
    required this.currentPassword,
    required this.newPassword,
  });

  factory PasswordChangeRequest({
    required int userId,
    required String currentPassword,
    required String newPassword,
  }) = _PasswordChangeRequestImpl;

  factory PasswordChangeRequest.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return PasswordChangeRequest(
      userId: jsonSerialization['userId'] as int,
      currentPassword: jsonSerialization['currentPassword'] as String,
      newPassword: jsonSerialization['newPassword'] as String,
    );
  }

  int userId;

  String currentPassword;

  String newPassword;

  /// Returns a shallow copy of this [PasswordChangeRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PasswordChangeRequest copyWith({
    int? userId,
    String? currentPassword,
    String? newPassword,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'currentPassword': currentPassword,
      'newPassword': newPassword,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'userId': userId,
      'currentPassword': currentPassword,
      'newPassword': newPassword,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PasswordChangeRequestImpl extends PasswordChangeRequest {
  _PasswordChangeRequestImpl({
    required int userId,
    required String currentPassword,
    required String newPassword,
  }) : super._(
          userId: userId,
          currentPassword: currentPassword,
          newPassword: newPassword,
        );

  /// Returns a shallow copy of this [PasswordChangeRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PasswordChangeRequest copyWith({
    int? userId,
    String? currentPassword,
    String? newPassword,
  }) {
    return PasswordChangeRequest(
      userId: userId ?? this.userId,
      currentPassword: currentPassword ?? this.currentPassword,
      newPassword: newPassword ?? this.newPassword,
    );
  }
}
