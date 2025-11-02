import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/cv_metadata.dart';

/// Abstract interface for CV data storage operations
///
/// Handles storing and retrieving CV data and metadata.
/// Implementation uses Drift database to mirror remote Serverpod database structure.
abstract class CvDataStorageService {
  // CV Data Operations
  /// Save CV data to local storage
  /// Returns true if successful, false otherwise
  Future<bool> saveCvData(CvData cvData);

  /// Load CV data from local storage
  /// Returns null if no data exists
  Future<CvData?> loadCvData();

  /// Delete CV data from local storage
  Future<bool> deleteCvData();

  // CV Metadata Operations
  /// Save CV metadata to local storage
  Future<bool> saveCvMetadata(CvMetadata metadata);

  /// Load CV metadata from local storage
  /// Returns null if no metadata exists
  Future<CvMetadata?> loadCvMetadata();

  /// Delete CV metadata from local storage
  Future<bool> deleteCvMetadata();

  // Utility Operations
  /// Clear all CV data and metadata (useful for logout/account deletion)
  Future<bool> clearAll();

  /// Get the current database schema version
  /// Used for migration purposes
  Future<int> getSchemaVersion();

  /// Close the database connection
  Future<void> close();
}
