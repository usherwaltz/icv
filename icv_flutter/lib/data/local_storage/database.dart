import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart';

/// CV Data table - mirrors Serverpod CV table structure
///
/// Stores CV data as JSON string, matching the remote database schema.
/// This allows for easier synchronization between local and cloud storage.
class CvDataTable extends Table {
  /// Primary key (auto-increment)
  IntColumn get id => integer().autoIncrement()();

  /// User ID for cloud backup users (nullable for local-only CVs)
  IntColumn get userId => integer().nullable()();

  /// Template ID
  TextColumn get templateId => text()();

  /// Full CV data as JSON string
  TextColumn get cvData => text()();

  /// PDF theme settings as JSON string
  TextColumn get pdfThemeSettings => text()();

  /// Section order as JSON array string
  TextColumn get sectionOrder => text()();

  /// Storage location (local or cloud)
  /// Stored as text, values: 'local' or 'cloud'
  TextColumn get storageLocation =>
      text().withDefault(const Constant('local'))();

  /// Save timestamp
  DateTimeColumn get saveTimestamp => dateTime()();

  /// Created timestamp
  DateTimeColumn get createdAt => dateTime()();

  /// Updated timestamp
  DateTimeColumn get updatedAt => dateTime()();
}

@DriftDatabase(tables: [CvDataTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // Add migration logic here as schema evolves
        // Example:
        // if (from < 2) {
        //   await m.addColumn(database.cvDataTable, database.cvDataTable.newColumn);
        // }
      },
    );
  }

  /// Open database connection
  static QueryExecutor _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'icv_database.db'));

      // Work around limitations on old Android versions
      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }

      // Set temporary directory for sqlite3
      final cachebase = (await getTemporaryDirectory()).path;
      sqlite3.tempDirectory = cachebase;

      return NativeDatabase.createInBackground(file);
    });
  }
}
