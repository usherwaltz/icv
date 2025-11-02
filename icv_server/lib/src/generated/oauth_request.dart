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
import 'auth_provider.dart' as _i2;

abstract class OAuthRequest
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  OAuthRequest._({
    required this.provider,
    required this.token,
  });

  factory OAuthRequest({
    required _i2.AuthProvider provider,
    required String token,
  }) = _OAuthRequestImpl;

  factory OAuthRequest.fromJson(Map<String, dynamic> jsonSerialization) {
    return OAuthRequest(
      provider:
          _i2.AuthProvider.fromJson((jsonSerialization['provider'] as String)),
      token: jsonSerialization['token'] as String,
    );
  }

  _i2.AuthProvider provider;

  String token;

  /// Returns a shallow copy of this [OAuthRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  OAuthRequest copyWith({
    _i2.AuthProvider? provider,
    String? token,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'provider': provider.toJson(),
      'token': token,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'provider': provider.toJson(),
      'token': token,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _OAuthRequestImpl extends OAuthRequest {
  _OAuthRequestImpl({
    required _i2.AuthProvider provider,
    required String token,
  }) : super._(
          provider: provider,
          token: token,
        );

  /// Returns a shallow copy of this [OAuthRequest]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  OAuthRequest copyWith({
    _i2.AuthProvider? provider,
    String? token,
  }) {
    return OAuthRequest(
      provider: provider ?? this.provider,
      token: token ?? this.token,
    );
  }
}
