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
import 'auth_provider.dart' as _i2;

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.email,
    this.passwordHash,
    _i2.AuthProvider? authProvider,
    this.providerId,
    this.themePreference,
    bool? cloudBackupEnabled,
    this.privacyPolicyAcceptedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : authProvider = authProvider ?? _i2.AuthProvider.email,
        cloudBackupEnabled = cloudBackupEnabled ?? false,
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory User({
    int? id,
    required String email,
    String? passwordHash,
    _i2.AuthProvider? authProvider,
    String? providerId,
    String? themePreference,
    bool? cloudBackupEnabled,
    DateTime? privacyPolicyAcceptedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      passwordHash: jsonSerialization['passwordHash'] as String?,
      authProvider: _i2.AuthProvider.fromJson(
          (jsonSerialization['authProvider'] as String)),
      providerId: jsonSerialization['providerId'] as String?,
      themePreference: jsonSerialization['themePreference'] as String?,
      cloudBackupEnabled: jsonSerialization['cloudBackupEnabled'] as bool,
      privacyPolicyAcceptedAt:
          jsonSerialization['privacyPolicyAcceptedAt'] == null
              ? null
              : _i1.DateTimeJsonExtension.fromJson(
                  jsonSerialization['privacyPolicyAcceptedAt']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String email;

  String? passwordHash;

  _i2.AuthProvider authProvider;

  String? providerId;

  String? themePreference;

  bool cloudBackupEnabled;

  DateTime? privacyPolicyAcceptedAt;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  User copyWith({
    int? id,
    String? email,
    String? passwordHash,
    _i2.AuthProvider? authProvider,
    String? providerId,
    String? themePreference,
    bool? cloudBackupEnabled,
    DateTime? privacyPolicyAcceptedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'email': email,
      if (passwordHash != null) 'passwordHash': passwordHash,
      'authProvider': authProvider.toJson(),
      if (providerId != null) 'providerId': providerId,
      if (themePreference != null) 'themePreference': themePreference,
      'cloudBackupEnabled': cloudBackupEnabled,
      if (privacyPolicyAcceptedAt != null)
        'privacyPolicyAcceptedAt': privacyPolicyAcceptedAt?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String email,
    String? passwordHash,
    _i2.AuthProvider? authProvider,
    String? providerId,
    String? themePreference,
    bool? cloudBackupEnabled,
    DateTime? privacyPolicyAcceptedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
          id: id,
          email: email,
          passwordHash: passwordHash,
          authProvider: authProvider,
          providerId: providerId,
          themePreference: themePreference,
          cloudBackupEnabled: cloudBackupEnabled,
          privacyPolicyAcceptedAt: privacyPolicyAcceptedAt,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  User copyWith({
    Object? id = _Undefined,
    String? email,
    Object? passwordHash = _Undefined,
    _i2.AuthProvider? authProvider,
    Object? providerId = _Undefined,
    Object? themePreference = _Undefined,
    bool? cloudBackupEnabled,
    Object? privacyPolicyAcceptedAt = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return User(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      passwordHash: passwordHash is String? ? passwordHash : this.passwordHash,
      authProvider: authProvider ?? this.authProvider,
      providerId: providerId is String? ? providerId : this.providerId,
      themePreference:
          themePreference is String? ? themePreference : this.themePreference,
      cloudBackupEnabled: cloudBackupEnabled ?? this.cloudBackupEnabled,
      privacyPolicyAcceptedAt: privacyPolicyAcceptedAt is DateTime?
          ? privacyPolicyAcceptedAt
          : this.privacyPolicyAcceptedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
