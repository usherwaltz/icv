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

abstract class RegisterRequest implements _i1.SerializableModel {
  RegisterRequest._({
    required this.email,
    required this.password,
  });

  factory RegisterRequest({
    required String email,
    required String password,
  }) = _RegisterRequestImpl;

  factory RegisterRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return RegisterRequest(
      email: jsonSerialization['email'] as String,
      password: jsonSerialization['password'] as String,
    );
  }

  String email;

  String password;

  /// Returns a shallow copy of this [RegisterRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  RegisterRequest copyWith({
    String? email,
    String? password,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _RegisterRequestImpl extends RegisterRequest {
  _RegisterRequestImpl({
    required String email,
    required String password,
  }) : super._(
          email: email,
          password: password,
        );

  /// Returns a shallow copy of this [RegisterRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  RegisterRequest copyWith({
    String? email,
    String? password,
  }) {
    return RegisterRequest(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
