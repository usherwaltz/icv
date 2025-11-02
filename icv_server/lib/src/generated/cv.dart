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
import 'storage_location.dart' as _i2;

abstract class CV implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  CV._({
    this.id,
    this.userId,
    required this.templateId,
    required this.cvData,
    required this.pdfThemeSettings,
    required this.sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : storageLocation = storageLocation ?? _i2.StorageLocation.local,
        saveTimestamp = saveTimestamp ?? DateTime.now(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  factory CV({
    int? id,
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CVImpl;

  factory CV.fromJson(Map<String, dynamic> jsonSerialization) {
    return CV(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      templateId: jsonSerialization['templateId'] as String,
      cvData: jsonSerialization['cvData'] as String,
      pdfThemeSettings: jsonSerialization['pdfThemeSettings'] as String,
      sectionOrder: jsonSerialization['sectionOrder'] as String,
      storageLocation: _i2.StorageLocation.fromJson(
          (jsonSerialization['storageLocation'] as String)),
      saveTimestamp: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['saveTimestamp']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = CVTable();

  static const db = CVRepository._();

  @override
  int? id;

  int? userId;

  String templateId;

  String cvData;

  String pdfThemeSettings;

  String sectionOrder;

  _i2.StorageLocation storageLocation;

  DateTime saveTimestamp;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [CV]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CV copyWith({
    int? id,
    int? userId,
    String? templateId,
    String? cvData,
    String? pdfThemeSettings,
    String? sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'templateId': templateId,
      'cvData': cvData,
      'pdfThemeSettings': pdfThemeSettings,
      'sectionOrder': sectionOrder,
      'storageLocation': storageLocation.toJson(),
      'saveTimestamp': saveTimestamp.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'templateId': templateId,
      'cvData': cvData,
      'pdfThemeSettings': pdfThemeSettings,
      'sectionOrder': sectionOrder,
      'storageLocation': storageLocation.toJson(),
      'saveTimestamp': saveTimestamp.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static CVInclude include() {
    return CVInclude._();
  }

  static CVIncludeList includeList({
    _i1.WhereExpressionBuilder<CVTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CVTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CVTable>? orderByList,
    CVInclude? include,
  }) {
    return CVIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CV.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CV.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CVImpl extends CV {
  _CVImpl({
    int? id,
    int? userId,
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          templateId: templateId,
          cvData: cvData,
          pdfThemeSettings: pdfThemeSettings,
          sectionOrder: sectionOrder,
          storageLocation: storageLocation,
          saveTimestamp: saveTimestamp,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [CV]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CV copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    String? templateId,
    String? cvData,
    String? pdfThemeSettings,
    String? sectionOrder,
    _i2.StorageLocation? storageLocation,
    DateTime? saveTimestamp,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CV(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      templateId: templateId ?? this.templateId,
      cvData: cvData ?? this.cvData,
      pdfThemeSettings: pdfThemeSettings ?? this.pdfThemeSettings,
      sectionOrder: sectionOrder ?? this.sectionOrder,
      storageLocation: storageLocation ?? this.storageLocation,
      saveTimestamp: saveTimestamp ?? this.saveTimestamp,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class CVTable extends _i1.Table<int?> {
  CVTable({super.tableRelation}) : super(tableName: 'cvs') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    templateId = _i1.ColumnString(
      'templateId',
      this,
    );
    cvData = _i1.ColumnString(
      'cvData',
      this,
    );
    pdfThemeSettings = _i1.ColumnString(
      'pdfThemeSettings',
      this,
    );
    sectionOrder = _i1.ColumnString(
      'sectionOrder',
      this,
    );
    storageLocation = _i1.ColumnEnum(
      'storageLocation',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    saveTimestamp = _i1.ColumnDateTime(
      'saveTimestamp',
      this,
      hasDefault: true,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString templateId;

  late final _i1.ColumnString cvData;

  late final _i1.ColumnString pdfThemeSettings;

  late final _i1.ColumnString sectionOrder;

  late final _i1.ColumnEnum<_i2.StorageLocation> storageLocation;

  late final _i1.ColumnDateTime saveTimestamp;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        templateId,
        cvData,
        pdfThemeSettings,
        sectionOrder,
        storageLocation,
        saveTimestamp,
        createdAt,
        updatedAt,
      ];
}

class CVInclude extends _i1.IncludeObject {
  CVInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => CV.t;
}

class CVIncludeList extends _i1.IncludeList {
  CVIncludeList._({
    _i1.WhereExpressionBuilder<CVTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CV.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => CV.t;
}

class CVRepository {
  const CVRepository._();

  /// Returns a list of [CV]s matching the given query parameters.
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
  Future<List<CV>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CVTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CVTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CVTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CV>(
      where: where?.call(CV.t),
      orderBy: orderBy?.call(CV.t),
      orderByList: orderByList?.call(CV.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [CV] matching the given query parameters.
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
  Future<CV?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CVTable>? where,
    int? offset,
    _i1.OrderByBuilder<CVTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CVTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<CV>(
      where: where?.call(CV.t),
      orderBy: orderBy?.call(CV.t),
      orderByList: orderByList?.call(CV.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [CV] by its [id] or null if no such row exists.
  Future<CV?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<CV>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [CV]s in the list and returns the inserted rows.
  ///
  /// The returned [CV]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<CV>> insert(
    _i1.Session session,
    List<CV> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CV>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [CV] and returns the inserted row.
  ///
  /// The returned [CV] will have its `id` field set.
  Future<CV> insertRow(
    _i1.Session session,
    CV row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CV>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [CV]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<CV>> update(
    _i1.Session session,
    List<CV> rows, {
    _i1.ColumnSelections<CVTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CV>(
      rows,
      columns: columns?.call(CV.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CV]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CV> updateRow(
    _i1.Session session,
    CV row, {
    _i1.ColumnSelections<CVTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CV>(
      row,
      columns: columns?.call(CV.t),
      transaction: transaction,
    );
  }

  /// Deletes all [CV]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<CV>> delete(
    _i1.Session session,
    List<CV> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CV>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [CV].
  Future<CV> deleteRow(
    _i1.Session session,
    CV row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CV>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<CV>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CVTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CV>(
      where: where(CV.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CVTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CV>(
      where: where?.call(CV.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
