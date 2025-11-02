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

abstract class PasswordResetConfirmRequest implements _i1.SerializableModel {
  PasswordResetConfirmRequest._({
    required this.token,
    required this.newPassword,
  });

  factory PasswordResetConfirmRequest({
    required String token,
    required String newPassword,
  }) = _PasswordResetConfirmRequestImpl;

  factory PasswordResetConfirmRequest.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return PasswordResetConfirmRequest(
      token: jsonSerialization['token'] as String,
      newPassword: jsonSerialization['newPassword'] as String,
    );
  }

  String token;

  String newPassword;

  /// Returns a shallow copy of this [PasswordResetConfirmRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PasswordResetConfirmRequest copyWith({
    String? token,
    String? newPassword,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'newPassword': newPassword,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PasswordResetConfirmRequestImpl extends PasswordResetConfirmRequest {
  _PasswordResetConfirmRequestImpl({
    required String token,
    required String newPassword,
  }) : super._(
          token: token,
          newPassword: newPassword,
        );

  /// Returns a shallow copy of this [PasswordResetConfirmRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PasswordResetConfirmRequest copyWith({
    String? token,
    String? newPassword,
  }) {
    return PasswordResetConfirmRequest(
      token: token ?? this.token,
      newPassword: newPassword ?? this.newPassword,
    );
  }
}
