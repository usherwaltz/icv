// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $CvDataTableTable extends CvDataTable
    with TableInfo<$CvDataTableTable, CvDataTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CvDataTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _templateIdMeta =
      const VerificationMeta('templateId');
  @override
  late final GeneratedColumn<String> templateId = GeneratedColumn<String>(
      'template_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cvDataMeta = const VerificationMeta('cvData');
  @override
  late final GeneratedColumn<String> cvData = GeneratedColumn<String>(
      'cv_data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _pdfThemeSettingsMeta =
      const VerificationMeta('pdfThemeSettings');
  @override
  late final GeneratedColumn<String> pdfThemeSettings = GeneratedColumn<String>(
      'pdf_theme_settings', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sectionOrderMeta =
      const VerificationMeta('sectionOrder');
  @override
  late final GeneratedColumn<String> sectionOrder = GeneratedColumn<String>(
      'section_order', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _storageLocationMeta =
      const VerificationMeta('storageLocation');
  @override
  late final GeneratedColumn<String> storageLocation = GeneratedColumn<String>(
      'storage_location', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('local'));
  static const VerificationMeta _saveTimestampMeta =
      const VerificationMeta('saveTimestamp');
  @override
  late final GeneratedColumn<DateTime> saveTimestamp =
      GeneratedColumn<DateTime>('save_timestamp', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        templateId,
        cvData,
        pdfThemeSettings,
        sectionOrder,
        storageLocation,
        saveTimestamp,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cv_data_table';
  @override
  VerificationContext validateIntegrity(Insertable<CvDataTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('template_id')) {
      context.handle(
          _templateIdMeta,
          templateId.isAcceptableOrUnknown(
              data['template_id']!, _templateIdMeta));
    } else if (isInserting) {
      context.missing(_templateIdMeta);
    }
    if (data.containsKey('cv_data')) {
      context.handle(_cvDataMeta,
          cvData.isAcceptableOrUnknown(data['cv_data']!, _cvDataMeta));
    } else if (isInserting) {
      context.missing(_cvDataMeta);
    }
    if (data.containsKey('pdf_theme_settings')) {
      context.handle(
          _pdfThemeSettingsMeta,
          pdfThemeSettings.isAcceptableOrUnknown(
              data['pdf_theme_settings']!, _pdfThemeSettingsMeta));
    } else if (isInserting) {
      context.missing(_pdfThemeSettingsMeta);
    }
    if (data.containsKey('section_order')) {
      context.handle(
          _sectionOrderMeta,
          sectionOrder.isAcceptableOrUnknown(
              data['section_order']!, _sectionOrderMeta));
    } else if (isInserting) {
      context.missing(_sectionOrderMeta);
    }
    if (data.containsKey('storage_location')) {
      context.handle(
          _storageLocationMeta,
          storageLocation.isAcceptableOrUnknown(
              data['storage_location']!, _storageLocationMeta));
    }
    if (data.containsKey('save_timestamp')) {
      context.handle(
          _saveTimestampMeta,
          saveTimestamp.isAcceptableOrUnknown(
              data['save_timestamp']!, _saveTimestampMeta));
    } else if (isInserting) {
      context.missing(_saveTimestampMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CvDataTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CvDataTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id']),
      templateId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}template_id'])!,
      cvData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cv_data'])!,
      pdfThemeSettings: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}pdf_theme_settings'])!,
      sectionOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}section_order'])!,
      storageLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}storage_location'])!,
      saveTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}save_timestamp'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $CvDataTableTable createAlias(String alias) {
    return $CvDataTableTable(attachedDatabase, alias);
  }
}

class CvDataTableData extends DataClass implements Insertable<CvDataTableData> {
  /// Primary key (auto-increment)
  final int id;

  /// User ID for cloud backup users (nullable for local-only CVs)
  final int? userId;

  /// Template ID
  final String templateId;

  /// Full CV data as JSON string
  final String cvData;

  /// PDF theme settings as JSON string
  final String pdfThemeSettings;

  /// Section order as JSON array string
  final String sectionOrder;

  /// Storage location (local or cloud)
  /// Stored as text, values: 'local' or 'cloud'
  final String storageLocation;

  /// Save timestamp
  final DateTime saveTimestamp;

  /// Created timestamp
  final DateTime createdAt;

  /// Updated timestamp
  final DateTime updatedAt;
  const CvDataTableData(
      {required this.id,
      this.userId,
      required this.templateId,
      required this.cvData,
      required this.pdfThemeSettings,
      required this.sectionOrder,
      required this.storageLocation,
      required this.saveTimestamp,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    map['template_id'] = Variable<String>(templateId);
    map['cv_data'] = Variable<String>(cvData);
    map['pdf_theme_settings'] = Variable<String>(pdfThemeSettings);
    map['section_order'] = Variable<String>(sectionOrder);
    map['storage_location'] = Variable<String>(storageLocation);
    map['save_timestamp'] = Variable<DateTime>(saveTimestamp);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CvDataTableCompanion toCompanion(bool nullToAbsent) {
    return CvDataTableCompanion(
      id: Value(id),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      templateId: Value(templateId),
      cvData: Value(cvData),
      pdfThemeSettings: Value(pdfThemeSettings),
      sectionOrder: Value(sectionOrder),
      storageLocation: Value(storageLocation),
      saveTimestamp: Value(saveTimestamp),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory CvDataTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CvDataTableData(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int?>(json['userId']),
      templateId: serializer.fromJson<String>(json['templateId']),
      cvData: serializer.fromJson<String>(json['cvData']),
      pdfThemeSettings: serializer.fromJson<String>(json['pdfThemeSettings']),
      sectionOrder: serializer.fromJson<String>(json['sectionOrder']),
      storageLocation: serializer.fromJson<String>(json['storageLocation']),
      saveTimestamp: serializer.fromJson<DateTime>(json['saveTimestamp']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int?>(userId),
      'templateId': serializer.toJson<String>(templateId),
      'cvData': serializer.toJson<String>(cvData),
      'pdfThemeSettings': serializer.toJson<String>(pdfThemeSettings),
      'sectionOrder': serializer.toJson<String>(sectionOrder),
      'storageLocation': serializer.toJson<String>(storageLocation),
      'saveTimestamp': serializer.toJson<DateTime>(saveTimestamp),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CvDataTableData copyWith(
          {int? id,
          Value<int?> userId = const Value.absent(),
          String? templateId,
          String? cvData,
          String? pdfThemeSettings,
          String? sectionOrder,
          String? storageLocation,
          DateTime? saveTimestamp,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      CvDataTableData(
        id: id ?? this.id,
        userId: userId.present ? userId.value : this.userId,
        templateId: templateId ?? this.templateId,
        cvData: cvData ?? this.cvData,
        pdfThemeSettings: pdfThemeSettings ?? this.pdfThemeSettings,
        sectionOrder: sectionOrder ?? this.sectionOrder,
        storageLocation: storageLocation ?? this.storageLocation,
        saveTimestamp: saveTimestamp ?? this.saveTimestamp,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  CvDataTableData copyWithCompanion(CvDataTableCompanion data) {
    return CvDataTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      templateId:
          data.templateId.present ? data.templateId.value : this.templateId,
      cvData: data.cvData.present ? data.cvData.value : this.cvData,
      pdfThemeSettings: data.pdfThemeSettings.present
          ? data.pdfThemeSettings.value
          : this.pdfThemeSettings,
      sectionOrder: data.sectionOrder.present
          ? data.sectionOrder.value
          : this.sectionOrder,
      storageLocation: data.storageLocation.present
          ? data.storageLocation.value
          : this.storageLocation,
      saveTimestamp: data.saveTimestamp.present
          ? data.saveTimestamp.value
          : this.saveTimestamp,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CvDataTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('templateId: $templateId, ')
          ..write('cvData: $cvData, ')
          ..write('pdfThemeSettings: $pdfThemeSettings, ')
          ..write('sectionOrder: $sectionOrder, ')
          ..write('storageLocation: $storageLocation, ')
          ..write('saveTimestamp: $saveTimestamp, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      templateId,
      cvData,
      pdfThemeSettings,
      sectionOrder,
      storageLocation,
      saveTimestamp,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CvDataTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.templateId == this.templateId &&
          other.cvData == this.cvData &&
          other.pdfThemeSettings == this.pdfThemeSettings &&
          other.sectionOrder == this.sectionOrder &&
          other.storageLocation == this.storageLocation &&
          other.saveTimestamp == this.saveTimestamp &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CvDataTableCompanion extends UpdateCompanion<CvDataTableData> {
  final Value<int> id;
  final Value<int?> userId;
  final Value<String> templateId;
  final Value<String> cvData;
  final Value<String> pdfThemeSettings;
  final Value<String> sectionOrder;
  final Value<String> storageLocation;
  final Value<DateTime> saveTimestamp;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CvDataTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.templateId = const Value.absent(),
    this.cvData = const Value.absent(),
    this.pdfThemeSettings = const Value.absent(),
    this.sectionOrder = const Value.absent(),
    this.storageLocation = const Value.absent(),
    this.saveTimestamp = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CvDataTableCompanion.insert({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    required String templateId,
    required String cvData,
    required String pdfThemeSettings,
    required String sectionOrder,
    this.storageLocation = const Value.absent(),
    required DateTime saveTimestamp,
    required DateTime createdAt,
    required DateTime updatedAt,
  })  : templateId = Value(templateId),
        cvData = Value(cvData),
        pdfThemeSettings = Value(pdfThemeSettings),
        sectionOrder = Value(sectionOrder),
        saveTimestamp = Value(saveTimestamp),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<CvDataTableData> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? templateId,
    Expression<String>? cvData,
    Expression<String>? pdfThemeSettings,
    Expression<String>? sectionOrder,
    Expression<String>? storageLocation,
    Expression<DateTime>? saveTimestamp,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (templateId != null) 'template_id': templateId,
      if (cvData != null) 'cv_data': cvData,
      if (pdfThemeSettings != null) 'pdf_theme_settings': pdfThemeSettings,
      if (sectionOrder != null) 'section_order': sectionOrder,
      if (storageLocation != null) 'storage_location': storageLocation,
      if (saveTimestamp != null) 'save_timestamp': saveTimestamp,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CvDataTableCompanion copyWith(
      {Value<int>? id,
      Value<int?>? userId,
      Value<String>? templateId,
      Value<String>? cvData,
      Value<String>? pdfThemeSettings,
      Value<String>? sectionOrder,
      Value<String>? storageLocation,
      Value<DateTime>? saveTimestamp,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt}) {
    return CvDataTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (templateId.present) {
      map['template_id'] = Variable<String>(templateId.value);
    }
    if (cvData.present) {
      map['cv_data'] = Variable<String>(cvData.value);
    }
    if (pdfThemeSettings.present) {
      map['pdf_theme_settings'] = Variable<String>(pdfThemeSettings.value);
    }
    if (sectionOrder.present) {
      map['section_order'] = Variable<String>(sectionOrder.value);
    }
    if (storageLocation.present) {
      map['storage_location'] = Variable<String>(storageLocation.value);
    }
    if (saveTimestamp.present) {
      map['save_timestamp'] = Variable<DateTime>(saveTimestamp.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CvDataTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('templateId: $templateId, ')
          ..write('cvData: $cvData, ')
          ..write('pdfThemeSettings: $pdfThemeSettings, ')
          ..write('sectionOrder: $sectionOrder, ')
          ..write('storageLocation: $storageLocation, ')
          ..write('saveTimestamp: $saveTimestamp, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CvDataTableTable cvDataTable = $CvDataTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cvDataTable];
}

typedef $$CvDataTableTableCreateCompanionBuilder = CvDataTableCompanion
    Function({
  Value<int> id,
  Value<int?> userId,
  required String templateId,
  required String cvData,
  required String pdfThemeSettings,
  required String sectionOrder,
  Value<String> storageLocation,
  required DateTime saveTimestamp,
  required DateTime createdAt,
  required DateTime updatedAt,
});
typedef $$CvDataTableTableUpdateCompanionBuilder = CvDataTableCompanion
    Function({
  Value<int> id,
  Value<int?> userId,
  Value<String> templateId,
  Value<String> cvData,
  Value<String> pdfThemeSettings,
  Value<String> sectionOrder,
  Value<String> storageLocation,
  Value<DateTime> saveTimestamp,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
});

class $$CvDataTableTableFilterComposer
    extends Composer<_$AppDatabase, $CvDataTableTable> {
  $$CvDataTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get templateId => $composableBuilder(
      column: $table.templateId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cvData => $composableBuilder(
      column: $table.cvData, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get pdfThemeSettings => $composableBuilder(
      column: $table.pdfThemeSettings,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sectionOrder => $composableBuilder(
      column: $table.sectionOrder, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get storageLocation => $composableBuilder(
      column: $table.storageLocation,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get saveTimestamp => $composableBuilder(
      column: $table.saveTimestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$CvDataTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CvDataTableTable> {
  $$CvDataTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get templateId => $composableBuilder(
      column: $table.templateId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cvData => $composableBuilder(
      column: $table.cvData, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get pdfThemeSettings => $composableBuilder(
      column: $table.pdfThemeSettings,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sectionOrder => $composableBuilder(
      column: $table.sectionOrder,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get storageLocation => $composableBuilder(
      column: $table.storageLocation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get saveTimestamp => $composableBuilder(
      column: $table.saveTimestamp,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$CvDataTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CvDataTableTable> {
  $$CvDataTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get templateId => $composableBuilder(
      column: $table.templateId, builder: (column) => column);

  GeneratedColumn<String> get cvData =>
      $composableBuilder(column: $table.cvData, builder: (column) => column);

  GeneratedColumn<String> get pdfThemeSettings => $composableBuilder(
      column: $table.pdfThemeSettings, builder: (column) => column);

  GeneratedColumn<String> get sectionOrder => $composableBuilder(
      column: $table.sectionOrder, builder: (column) => column);

  GeneratedColumn<String> get storageLocation => $composableBuilder(
      column: $table.storageLocation, builder: (column) => column);

  GeneratedColumn<DateTime> get saveTimestamp => $composableBuilder(
      column: $table.saveTimestamp, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CvDataTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CvDataTableTable,
    CvDataTableData,
    $$CvDataTableTableFilterComposer,
    $$CvDataTableTableOrderingComposer,
    $$CvDataTableTableAnnotationComposer,
    $$CvDataTableTableCreateCompanionBuilder,
    $$CvDataTableTableUpdateCompanionBuilder,
    (
      CvDataTableData,
      BaseReferences<_$AppDatabase, $CvDataTableTable, CvDataTableData>
    ),
    CvDataTableData,
    PrefetchHooks Function()> {
  $$CvDataTableTableTableManager(_$AppDatabase db, $CvDataTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CvDataTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CvDataTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CvDataTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> userId = const Value.absent(),
            Value<String> templateId = const Value.absent(),
            Value<String> cvData = const Value.absent(),
            Value<String> pdfThemeSettings = const Value.absent(),
            Value<String> sectionOrder = const Value.absent(),
            Value<String> storageLocation = const Value.absent(),
            Value<DateTime> saveTimestamp = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
          }) =>
              CvDataTableCompanion(
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
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> userId = const Value.absent(),
            required String templateId,
            required String cvData,
            required String pdfThemeSettings,
            required String sectionOrder,
            Value<String> storageLocation = const Value.absent(),
            required DateTime saveTimestamp,
            required DateTime createdAt,
            required DateTime updatedAt,
          }) =>
              CvDataTableCompanion.insert(
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
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CvDataTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CvDataTableTable,
    CvDataTableData,
    $$CvDataTableTableFilterComposer,
    $$CvDataTableTableOrderingComposer,
    $$CvDataTableTableAnnotationComposer,
    $$CvDataTableTableCreateCompanionBuilder,
    $$CvDataTableTableUpdateCompanionBuilder,
    (
      CvDataTableData,
      BaseReferences<_$AppDatabase, $CvDataTableTable, CvDataTableData>
    ),
    CvDataTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CvDataTableTableTableManager get cvDataTable =>
      $$CvDataTableTableTableManager(_db, _db.cvDataTable);
}
