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

abstract class PasswordResetToken
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PasswordResetTokenTable();

  static const db = PasswordResetTokenRepository._();

  @override
  int? id;

  int userId;

  String token;

  DateTime expiresAt;

  bool used;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'token': token,
      'expiresAt': expiresAt.toJson(),
      'used': used,
      'createdAt': createdAt.toJson(),
    };
  }

  static PasswordResetTokenInclude include() {
    return PasswordResetTokenInclude._();
  }

  static PasswordResetTokenIncludeList includeList({
    _i1.WhereExpressionBuilder<PasswordResetTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PasswordResetTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PasswordResetTokenTable>? orderByList,
    PasswordResetTokenInclude? include,
  }) {
    return PasswordResetTokenIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PasswordResetToken.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PasswordResetToken.t),
      include: include,
    );
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

class PasswordResetTokenTable extends _i1.Table<int?> {
  PasswordResetTokenTable({super.tableRelation})
      : super(tableName: 'password_reset_tokens') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    token = _i1.ColumnString(
      'token',
      this,
    );
    expiresAt = _i1.ColumnDateTime(
      'expiresAt',
      this,
    );
    used = _i1.ColumnBool(
      'used',
      this,
      hasDefault: true,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString token;

  late final _i1.ColumnDateTime expiresAt;

  late final _i1.ColumnBool used;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        token,
        expiresAt,
        used,
        createdAt,
      ];
}

class PasswordResetTokenInclude extends _i1.IncludeObject {
  PasswordResetTokenInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PasswordResetToken.t;
}

class PasswordResetTokenIncludeList extends _i1.IncludeList {
  PasswordResetTokenIncludeList._({
    _i1.WhereExpressionBuilder<PasswordResetTokenTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PasswordResetToken.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PasswordResetToken.t;
}

class PasswordResetTokenRepository {
  const PasswordResetTokenRepository._();

  /// Returns a list of [PasswordResetToken]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<PasswordResetToken>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PasswordResetTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PasswordResetTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PasswordResetTokenTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PasswordResetToken>(
      where: where?.call(PasswordResetToken.t),
      orderBy: orderBy?.call(PasswordResetToken.t),
      orderByList: orderByList?.call(PasswordResetToken.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PasswordResetToken] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<PasswordResetToken?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PasswordResetTokenTable>? where,
    int? offset,
    _i1.OrderByBuilder<PasswordResetTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PasswordResetTokenTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PasswordResetToken>(
      where: where?.call(PasswordResetToken.t),
      orderBy: orderBy?.call(PasswordResetToken.t),
      orderByList: orderByList?.call(PasswordResetToken.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PasswordResetToken] by its [id] or null if no such row exists.
  Future<PasswordResetToken?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PasswordResetToken>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PasswordResetToken]s in the list and returns the inserted rows.
  ///
  /// The returned [PasswordResetToken]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PasswordResetToken>> insert(
    _i1.Session session,
    List<PasswordResetToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PasswordResetToken>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PasswordResetToken] and returns the inserted row.
  ///
  /// The returned [PasswordResetToken] will have its `id` field set.
  Future<PasswordResetToken> insertRow(
    _i1.Session session,
    PasswordResetToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PasswordResetToken>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PasswordResetToken]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PasswordResetToken>> update(
    _i1.Session session,
    List<PasswordResetToken> rows, {
    _i1.ColumnSelections<PasswordResetTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PasswordResetToken>(
      rows,
      columns: columns?.call(PasswordResetToken.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PasswordResetToken]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PasswordResetToken> updateRow(
    _i1.Session session,
    PasswordResetToken row, {
    _i1.ColumnSelections<PasswordResetTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PasswordResetToken>(
      row,
      columns: columns?.call(PasswordResetToken.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PasswordResetToken]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PasswordResetToken>> delete(
    _i1.Session session,
    List<PasswordResetToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PasswordResetToken>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PasswordResetToken].
  Future<PasswordResetToken> deleteRow(
    _i1.Session session,
    PasswordResetToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PasswordResetToken>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PasswordResetToken>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PasswordResetTokenTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PasswordResetToken>(
      where: where(PasswordResetToken.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PasswordResetTokenTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PasswordResetToken>(
      where: where?.call(PasswordResetToken.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
