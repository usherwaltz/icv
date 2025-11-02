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

abstract class UserInfo
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  UserInfo._({
    required this.id,
    required this.email,
    required this.authProvider,
    this.themePreference,
    required this.cloudBackupEnabled,
    this.privacyPolicyAcceptedAt,
  });

  factory UserInfo({
    required int id,
    required String email,
    required _i2.AuthProvider authProvider,
    String? themePreference,
    required bool cloudBackupEnabled,
    DateTime? privacyPolicyAcceptedAt,
  }) = _UserInfoImpl;

  factory UserInfo.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserInfo(
      id: jsonSerialization['id'] as int,
      email: jsonSerialization['email'] as String,
      authProvider: _i2.AuthProvider.fromJson(
          (jsonSerialization['authProvider'] as String)),
      themePreference: jsonSerialization['themePreference'] as String?,
      cloudBackupEnabled: jsonSerialization['cloudBackupEnabled'] as bool,
      privacyPolicyAcceptedAt:
          jsonSerialization['privacyPolicyAcceptedAt'] == null
              ? null
              : _i1.DateTimeJsonExtension.fromJson(
                  jsonSerialization['privacyPolicyAcceptedAt']),
    );
  }

  int id;

  String email;

  _i2.AuthProvider authProvider;

  String? themePreference;

  bool cloudBackupEnabled;

  DateTime? privacyPolicyAcceptedAt;

  /// Returns a shallow copy of this [UserInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserInfo copyWith({
    int? id,
    String? email,
    _i2.AuthProvider? authProvider,
    String? themePreference,
    bool? cloudBackupEnabled,
    DateTime? privacyPolicyAcceptedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'authProvider': authProvider.toJson(),
      if (themePreference != null) 'themePreference': themePreference,
      'cloudBackupEnabled': cloudBackupEnabled,
      if (privacyPolicyAcceptedAt != null)
        'privacyPolicyAcceptedAt': privacyPolicyAcceptedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'id': id,
      'email': email,
      'authProvider': authProvider.toJson(),
      if (themePreference != null) 'themePreference': themePreference,
      'cloudBackupEnabled': cloudBackupEnabled,
      if (privacyPolicyAcceptedAt != null)
        'privacyPolicyAcceptedAt': privacyPolicyAcceptedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserInfoImpl extends UserInfo {
  _UserInfoImpl({
    required int id,
    required String email,
    required _i2.AuthProvider authProvider,
    String? themePreference,
    required bool cloudBackupEnabled,
    DateTime? privacyPolicyAcceptedAt,
  }) : super._(
          id: id,
          email: email,
          authProvider: authProvider,
          themePreference: themePreference,
          cloudBackupEnabled: cloudBackupEnabled,
          privacyPolicyAcceptedAt: privacyPolicyAcceptedAt,
        );

  /// Returns a shallow copy of this [UserInfo]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserInfo copyWith({
    int? id,
    String? email,
    _i2.AuthProvider? authProvider,
    Object? themePreference = _Undefined,
    bool? cloudBackupEnabled,
    Object? privacyPolicyAcceptedAt = _Undefined,
  }) {
    return UserInfo(
      id: id ?? this.id,
      email: email ?? this.email,
      authProvider: authProvider ?? this.authProvider,
      themePreference:
          themePreference is String? ? themePreference : this.themePreference,
      cloudBackupEnabled: cloudBackupEnabled ?? this.cloudBackupEnabled,
      privacyPolicyAcceptedAt: privacyPolicyAcceptedAt is DateTime?
          ? privacyPolicyAcceptedAt
          : this.privacyPolicyAcceptedAt,
    );
  }
}
