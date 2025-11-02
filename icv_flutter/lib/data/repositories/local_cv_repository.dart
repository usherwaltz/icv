import 'package:flutter/foundation.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/cv_metadata.dart';
import 'package:icv_flutter/data/local_storage/cv_data_storage_service.dart';

/// Result of loading a CV from local storage
class CvLoadResult {
  final CvData cvData;
  final CvMetadata cvMetadata;

  const CvLoadResult({
    required this.cvData,
    required this.cvMetadata,
  });
}

/// Repository for managing CV data and metadata in local storage
/// Provides a higher-level API that coordinates saving/loading both CV data and metadata together
///
/// Uses Drift database via CvDataStorageService for persistent storage.
class LocalCvRepository {
  final CvDataStorageService _cvStorageService;

  LocalCvRepository(this._cvStorageService);

  // Cache for tracking current state (used for unsaved changes detection)
  CvData? _cachedCvData;
  CvMetadata? _cachedCvMetadata;

  /// Save CV data and metadata to local storage
  /// Updates the save timestamp and marks the CV as saved (not dirty)
  ///
  /// Returns true if both data and metadata were saved successfully, false otherwise
  Future<bool> saveCv({
    required CvData cvData,
    required CvMetadata cvMetadata,
  }) async {
    try {
      // Update metadata to mark as saved with current timestamp
      final updatedMetadata = cvMetadata.copyWith(
        isDirty: false,
        saveTimestamp: DateTime.now(),
      );

      // Save both data and metadata
      final dataSaved = await _cvStorageService.saveCvData(cvData);
      final metadataSaved =
          await _cvStorageService.saveCvMetadata(updatedMetadata);

      if (dataSaved && metadataSaved) {
        // Update cache after successful save
        _cachedCvData = cvData;
        _cachedCvMetadata = updatedMetadata;
        return true;
      }

      return false;
    } catch (e) {
      debugPrint('Error saving CV in repository: $e');
      return false;
    }
  }

  /// Load CV data and metadata from local storage
  ///
  /// Returns null if either data or metadata is missing
  /// Returns CvLoadResult with both data and metadata if both exist
  Future<CvLoadResult?> loadCv() async {
    try {
      final cvData = await _cvStorageService.loadCvData();
      final cvMetadata = await _cvStorageService.loadCvMetadata();

      // Return null if either is missing
      if (cvData == null || cvMetadata == null) {
        return null;
      }

      // Update cache
      _cachedCvData = cvData;
      _cachedCvMetadata = cvMetadata;

      return CvLoadResult(
        cvData: cvData,
        cvMetadata: cvMetadata,
      );
    } catch (e) {
      debugPrint('Error loading CV from repository: $e');
      return null;
    }
  }

  /// Delete CV data and metadata from local storage
  ///
  /// Returns true if both were deleted successfully, false otherwise
  Future<bool> deleteCv() async {
    try {
      final dataDeleted = await _cvStorageService.deleteCvData();
      final metadataDeleted = await _cvStorageService.deleteCvMetadata();

      // Clear cache after successful deletion
      if (dataDeleted && metadataDeleted) {
        _cachedCvData = null;
        _cachedCvMetadata = null;
      }

      return dataDeleted && metadataDeleted;
    } catch (e) {
      debugPrint('Error deleting CV from repository: $e');
      return false;
    }
  }

  /// Check if there are unsaved changes
  ///
  /// This compares the current data/metadata with the cached (last saved) version.
  /// Also checks the isDirty flag in metadata as a quick indicator.
  ///
  /// Note: For accurate comparison, you should call this after loading the CV
  /// or after any changes to ensure the cache is up to date.
  ///
  /// [currentCvData] - The current CV data to compare
  /// [currentCvMetadata] - The current CV metadata to compare
  Future<bool> hasUnsavedChanges({
    required CvData currentCvData,
    required CvMetadata currentCvMetadata,
  }) async {
    try {
      // Quick check: if metadata says it's dirty, there are unsaved changes
      if (currentCvMetadata.isDirty) {
        return true;
      }

      // If cache is empty, load from storage to populate it
      if (_cachedCvData == null || _cachedCvMetadata == null) {
        final loaded = await loadCv();
        if (loaded == null) {
          // No saved data exists, so if current data has any content, it's unsaved
          return _hasAnyContent(currentCvData);
        }
      }

      // Compare current with cached (last saved) version
      final hasDataChanges = _cachedCvData != currentCvData;
      // Compare metadata but ignore isDirty and saveTimestamp for comparison
      final hasMetadataChanges = _cachedCvMetadata?.copyWith(
            isDirty: currentCvMetadata.isDirty,
            saveTimestamp: currentCvMetadata.saveTimestamp,
          ) !=
          currentCvMetadata.copyWith(
            isDirty: _cachedCvMetadata?.isDirty ?? false,
            saveTimestamp: _cachedCvMetadata?.saveTimestamp,
          );

      return hasDataChanges || hasMetadataChanges;
    } catch (e) {
      debugPrint('Error checking unsaved changes: $e');
      // On error, assume there are unsaved changes to be safe
      return true;
    }
  }

  /// Mark the current CV as saved without actually persisting it
  /// This updates the metadata's isDirty flag and saveTimestamp
  /// but does not write to storage. Use this when you want to mark
  /// as saved but will persist later (e.g., after successful cloud sync).
  ///
  /// To actually save to storage, use [saveCv] instead.
  ///
  /// [currentCvMetadata] - The current metadata to update
  /// Returns the updated metadata with isDirty set to false
  CvMetadata markAsSaved(CvMetadata currentCvMetadata) {
    return currentCvMetadata.copyWith(
      isDirty: false,
      saveTimestamp: DateTime.now(),
    );
  }

  /// Get the current database schema version
  /// Useful for migration purposes
  Future<int> getStorageVersion() async {
    return await _cvStorageService.getSchemaVersion();
  }

  /// Check if storage has been initialized
  /// With Drift, the database is always initialized when the service is created
  Future<bool> isStorageInitialized() async {
    // Drift database is initialized when AppDatabase is instantiated
    return true;
  }

  /// Clear the internal cache
  /// This is useful when you want to force a fresh load from storage
  void clearCache() {
    _cachedCvData = null;
    _cachedCvMetadata = null;
  }

  /// Get the cached CV data (last loaded/saved)
  /// Returns null if no CV has been loaded or saved yet
  CvData? get cachedCvData => _cachedCvData;

  /// Get the cached CV metadata (last loaded/saved)
  /// Returns null if no CV has been loaded or saved yet
  CvMetadata? get cachedCvMetadata => _cachedCvMetadata;

  // Private helper methods

  /// Check if CV data has any meaningful content
  bool _hasAnyContent(CvData cvData) {
    return cvData.fullName?.isNotEmpty == true ||
        cvData.email?.isNotEmpty == true ||
        cvData.phone?.isNotEmpty == true ||
        cvData.address?.isNotEmpty == true ||
        cvData.linkedInUrl?.isNotEmpty == true ||
        cvData.githubUrl?.isNotEmpty == true ||
        cvData.professionalSummary?.isNotEmpty == true ||
        cvData.workExperience.isNotEmpty ||
        cvData.education.isNotEmpty ||
        cvData.skills.isNotEmpty ||
        cvData.languages.isNotEmpty ||
        cvData.certifications.isNotEmpty ||
        cvData.projects.isNotEmpty ||
        cvData.references.isNotEmpty;
  }
}
