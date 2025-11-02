import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:drift/drift.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/cv_metadata.dart';
import 'package:icv_flutter/data/models/pdf_theme_option.dart';
import 'package:icv_flutter/data/models/storage_location.dart';
import 'database.dart';
import 'cv_data_storage_service.dart';

/// Implementation of CvDataStorageService using Drift database
///
/// Stores CV data and metadata in a local SQLite database that mirrors
/// the remote Serverpod database structure.
class DriftLocalStorageService implements CvDataStorageService {
  late final AppDatabase _database;

  DriftLocalStorageService() {
    _database = AppDatabase();
  }

  /// Create with existing database instance (useful for testing)
  DriftLocalStorageService.withDatabase(AppDatabase database)
      : _database = database;

  // CV Data Operations

  @override
  Future<bool> saveCvData(CvData cvData) async {
    try {
      // Convert CvData to JSON string
      final cvDataJson = jsonEncode(cvData.toJson());

      // Check if CV data already exists (we'll store only one CV for now)
      final existing =
          await _database.select(_database.cvDataTable).getSingleOrNull();

      if (existing != null) {
        // Update existing record
        await (_database.update(_database.cvDataTable)
              ..where((tbl) => tbl.id.equals(existing.id)))
            .write(CvDataTableCompanion(
          cvData: Value(cvDataJson),
          updatedAt: Value(DateTime.now()),
        ));
      } else {
        // Insert new record
        await _database.into(_database.cvDataTable).insert(
              CvDataTableCompanion.insert(
                cvData: cvDataJson,
                templateId: '', // Will be updated when metadata is saved
                pdfThemeSettings:
                    '{}', // Will be updated when metadata is saved
                sectionOrder: '[]', // Will be updated when metadata is saved
                storageLocation: const Value('local'),
                saveTimestamp: DateTime.now(),
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
              ),
            );
      }

      return true;
    } catch (e) {
      debugPrint('Error saving CV data to Drift: $e');
      return false;
    }
  }

  @override
  Future<CvData?> loadCvData() async {
    try {
      final row =
          await _database.select(_database.cvDataTable).getSingleOrNull();

      if (row == null) return null;

      final json = jsonDecode(row.cvData) as Map<String, dynamic>;
      return CvData.fromJson(json);
    } catch (e) {
      debugPrint('Error loading CV data from Drift: $e');
      return null;
    }
  }

  @override
  Future<bool> deleteCvData() async {
    try {
      await _database.delete(_database.cvDataTable).go();
      return true;
    } catch (e) {
      debugPrint('Error deleting CV data from Drift: $e');
      return false;
    }
  }

  // CV Metadata Operations

  @override
  Future<bool> saveCvMetadata(CvMetadata metadata) async {
    try {
      // Convert metadata to JSON strings
      // PdfThemeOption is a freezed union, extract the variant name
      final pdfThemeOptionStr = metadata.pdfThemeOption.maybeWhen(
        blackWhite: () => 'blackWhite',
        mirrorApp: () => 'mirrorApp',
        custom: () => 'custom',
        orElse: () => 'blackWhite',
      );

      final pdfThemeSettingsJson = jsonEncode({
        'pdfThemeOption': pdfThemeOptionStr,
        'pdfCustomTheme': metadata.pdfCustomTheme,
      });

      final sectionOrderJson = jsonEncode(metadata.sectionOrder);
      final storageLocationStr = metadata.storageLocation.maybeWhen(
        local: () => 'local',
        cloud: () => 'cloud',
        orElse: () => 'local',
      );

      // Check if CV data exists
      final existing =
          await _database.select(_database.cvDataTable).getSingleOrNull();

      if (existing != null) {
        // Update existing record with metadata
        await (_database.update(_database.cvDataTable)
              ..where((tbl) => tbl.id.equals(existing.id)))
            .write(CvDataTableCompanion(
          templateId: Value(metadata.templateId),
          pdfThemeSettings: Value(pdfThemeSettingsJson),
          sectionOrder: Value(sectionOrderJson),
          storageLocation: Value(storageLocationStr),
          saveTimestamp: Value(metadata.saveTimestamp ?? DateTime.now()),
          updatedAt: Value(DateTime.now()),
        ));
      } else {
        // Insert new record with metadata
        await _database.into(_database.cvDataTable).insert(
              CvDataTableCompanion.insert(
                cvData:
                    '{}', // Empty CV data, will be updated when data is saved
                templateId: metadata.templateId,
                pdfThemeSettings: pdfThemeSettingsJson,
                sectionOrder: sectionOrderJson,
                storageLocation: Value(storageLocationStr),
                saveTimestamp: metadata.saveTimestamp ?? DateTime.now(),
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
              ),
            );
      }

      return true;
    } catch (e) {
      debugPrint('Error saving CV metadata to Drift: $e');
      return false;
    }
  }

  @override
  Future<CvMetadata?> loadCvMetadata() async {
    try {
      final row =
          await _database.select(_database.cvDataTable).getSingleOrNull();

      if (row == null) return null;

      // Parse PDF theme settings
      final pdfThemeSettingsJson =
          jsonDecode(row.pdfThemeSettings) as Map<String, dynamic>;
      final pdfThemeOptionStr =
          pdfThemeSettingsJson['pdfThemeOption'] as String? ?? 'blackWhite';

      // Parse PDF theme option (freezed union type)
      PdfThemeOption pdfThemeOption;
      try {
        // Try to parse from JSON format
        if (pdfThemeOptionStr == 'blackWhite' ||
            pdfThemeOptionStr == 'BlackWhite') {
          pdfThemeOption = const PdfThemeOption.blackWhite();
        } else if (pdfThemeOptionStr == 'mirrorApp' ||
            pdfThemeOptionStr == 'MirrorApp') {
          pdfThemeOption = const PdfThemeOption.mirrorApp();
        } else if (pdfThemeOptionStr == 'custom' ||
            pdfThemeOptionStr == 'PdfCustom') {
          pdfThemeOption = const PdfThemeOption.custom();
        } else {
          pdfThemeOption = const PdfThemeOption.blackWhite();
        }
      } catch (_) {
        pdfThemeOption = const PdfThemeOption.blackWhite();
      }

      final pdfCustomTheme =
          pdfThemeSettingsJson['pdfCustomTheme'] as Map<String, dynamic>?;

      // Parse section order
      final sectionOrderList =
          jsonDecode(row.sectionOrder) as List<dynamic>? ?? [];
      final sectionOrder = sectionOrderList.map((e) => e.toString()).toList();

      // Parse storage location
      final storageLocationStr = row.storageLocation;
      final storageLocation = storageLocationStr == 'cloud'
          ? const StorageLocation.cloud()
          : const StorageLocation.local();

      // Determine isDirty based on saveTimestamp comparison
      // For now, we'll assume it's not dirty if saveTimestamp exists
      // This could be enhanced later with more sophisticated tracking
      final isDirty = false; // TODO: Implement proper dirty tracking

      return CvMetadata(
        templateId: row.templateId,
        pdfThemeOption: pdfThemeOption,
        pdfCustomTheme: pdfCustomTheme,
        sectionOrder: sectionOrder,
        storageLocation: storageLocation,
        saveTimestamp: row.saveTimestamp,
        isDirty: isDirty,
      );
    } catch (e) {
      debugPrint('Error loading CV metadata from Drift: $e');
      return null;
    }
  }

  @override
  Future<bool> deleteCvMetadata() async {
    // Metadata is stored in the same table as CV data, so deleting CV data also deletes metadata
    return await deleteCvData();
  }

  // Utility Operations

  @override
  Future<bool> clearAll() async {
    try {
      await _database.delete(_database.cvDataTable).go();
      return true;
    } catch (e) {
      debugPrint('Error clearing all CV data from Drift: $e');
      return false;
    }
  }

  @override
  Future<int> getSchemaVersion() async {
    return _database.schemaVersion;
  }

  @override
  Future<void> close() async {
    await _database.close();
  }
}
