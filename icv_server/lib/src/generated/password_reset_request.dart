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

abstract class PasswordResetRequest
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  PasswordResetRequest._({required this.email});

  factory PasswordResetRequest({required String email}) =
      _PasswordResetRequestImpl;

  factory PasswordResetRequest.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return PasswordResetRequest(email: jsonSerialization['email'] as String);
  }

  String email;

  /// Returns a shallow copy of this [PasswordResetRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PasswordResetRequest copyWith({String? email});
  @override
  Map<String, dynamic> toJson() {
    return {'email': email};
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {'email': email};
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _PasswordResetRequestImpl extends PasswordResetRequest {
  _PasswordResetRequestImpl({required String email}) : super._(email: email);

  /// Returns a shallow copy of this [PasswordResetRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PasswordResetRequest copyWith({String? email}) {
    return PasswordResetRequest(email: email ?? this.email);
  }
}
