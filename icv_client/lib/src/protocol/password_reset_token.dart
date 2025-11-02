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

abstract class PasswordResetToken implements _i1.SerializableModel {
  PasswordResetToken._({
    this.id,
    required this.userId,
    required this.token,
    required this.expiresAt,
    bool? used,
    DateTime? createdAt,
  })  : used = used ?? false,
        createdAt = createdAt ?? DateTime.now();

  factory PasswordResetToken({
    int? id,
    required int userId,
    required String token,
    required DateTime expiresAt,
    bool? used,
    DateTime? createdAt,
  }) = _PasswordResetTokenImpl;

  factory PasswordResetToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return PasswordResetToken(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      token: jsonSerialization['token'] as String,
      expiresAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
      used: jsonSerialization['used'] as bool,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  String token;

  DateTime expiresAt;

  bool used;

  DateTime createdAt;

  /// Returns a shallow copy of this [PasswordResetToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PasswordResetToken copyWith({
    int? id,
    int? userId,
    String? token,
    DateTime? expiresAt,
    bool? used,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'token': token,
      'expiresAt': expiresAt.toJson(),
      'used': used,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PasswordResetTokenImpl extends PasswordResetToken {
  _PasswordResetTokenImpl({
    int? id,
    required int userId,
    required String token,
    required DateTime expiresAt,
    bool? used,
    DateTime? createdAt,
  }) : super._(
          id: id,
          userId: userId,
          token: token,
          expiresAt: expiresAt,
          used: used,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [PasswordResetToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PasswordResetToken copyWith({
    Object? id = _Undefined,
    int? userId,
    String? token,
    DateTime? expiresAt,
    bool? used,
    DateTime? createdAt,
  }) {
    return PasswordResetToken(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      token: token ?? this.token,
      expiresAt: expiresAt ?? this.expiresAt,
      used: used ?? this.used,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
