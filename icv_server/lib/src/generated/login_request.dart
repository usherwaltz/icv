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

abstract class LoginRequest
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  LoginRequest._({
    required this.email,
    required this.password,
  });

  factory LoginRequest({
    required String email,
    required String password,
  }) = _LoginRequestImpl;

  factory LoginRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return LoginRequest(
      email: jsonSerialization['email'] as String,
      password: jsonSerialization['password'] as String,
    );
  }

  String email;

  String password;

  /// Returns a shallow copy of this [LoginRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LoginRequest copyWith({
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
  Map<String, dynamic> toJsonForProtocol() {
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

class _LoginRequestImpl extends LoginRequest {
  _LoginRequestImpl({
    required String email,
    required String password,
  }) : super._(
          email: email,
          password: password,
        );

  /// Returns a shallow copy of this [LoginRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LoginRequest copyWith({
    String? email,
    String? password,
  }) {
    return LoginRequest(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
