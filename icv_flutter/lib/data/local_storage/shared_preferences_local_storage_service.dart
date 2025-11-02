import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:icv_flutter/data/models/app_theme.dart';
import 'package:icv_flutter/data/models/color_palette.dart';
import 'preference_storage_service.dart';

/// Storage keys for SharedPreferences
///
/// Note: CV data and metadata are stored in Drift database, not SharedPreferences
class StorageKeys {
  // User Preferences
  static const String theme = 'app_theme';
  static const String colorPalette = 'color_palette';

  // App State
  static const String lastViewedCvId = 'last_viewed_cv_id';

  // Migration & Versioning
  static const String storageVersion = 'storage_version';
  static const String isInitialized = 'storage_initialized';
}

/// Current storage version for migration purposes
const int _currentStorageVersion = 1;

/// Implementation of PreferenceStorageService using SharedPreferences
///
/// Handles lightweight user preferences and app state only.
/// CV data and metadata are stored in Drift database (separate service).
class SharedPreferencesLocalStorageService implements PreferenceStorageService {
  SharedPreferences? _prefs;

  /// Initialize the service and SharedPreferences instance
  Future<void> _ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
    await _initializeStorage();
  }

  /// Initialize storage with version checking and migration logic
  Future<void> _initializeStorage() async {
    if (_prefs == null) return;

    final isInitialized = _prefs!.getBool(StorageKeys.isInitialized) ?? false;
    if (!isInitialized) {
      // First time initialization
      await _prefs!.setInt(StorageKeys.storageVersion, _currentStorageVersion);
      await _prefs!.setBool(StorageKeys.isInitialized, true);
    } else {
      // Check for migration needs
      final currentVersion = _prefs!.getInt(StorageKeys.storageVersion) ?? 0;
      if (currentVersion < _currentStorageVersion) {
        await _migrateStorage(currentVersion, _currentStorageVersion);
      }
    }
  }

  /// Migrate storage from old version to new version
  Future<void> _migrateStorage(int fromVersion, int toVersion) async {
    if (_prefs == null) return;

    try {
      // Add migration logic here as storage schema changes
      // Example:
      // if (fromVersion < 2 && toVersion >= 2) {
      //   await _migrateToVersion2();
      // }

      // Update version after migration
      await _prefs!.setInt(StorageKeys.storageVersion, toVersion);
    } catch (e) {
      // Log error but don't throw - allow app to continue
      // In production, you might want to log to a crash reporting service
      debugPrint('Error during storage migration: $e');
    }
  }

  // User Preferences Operations

  @override
  Future<bool> saveTheme(AppTheme theme) async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return false;

      final themeString = jsonEncode(theme.toJson());
      return await _prefs!.setString(StorageKeys.theme, themeString);
    } catch (e) {
      debugPrint('Error saving theme: $e');
      return false;
    }
  }

  @override
  Future<AppTheme?> loadTheme() async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return null;

      final themeString = _prefs!.getString(StorageKeys.theme);
      if (themeString == null) return null;

      final json = jsonDecode(themeString) as Map<String, dynamic>;
      return AppTheme.fromJson(json);
    } catch (e) {
      debugPrint('Error loading theme: $e');
      return null;
    }
  }

  @override
  Future<bool> saveColorPalette(ColorPalette palette) async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return false;

      final paletteString = jsonEncode(palette.toJson());
      return await _prefs!.setString(StorageKeys.colorPalette, paletteString);
    } catch (e) {
      debugPrint('Error saving color palette: $e');
      return false;
    }
  }

  @override
  Future<ColorPalette?> loadColorPalette() async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return null;

      final paletteString = _prefs!.getString(StorageKeys.colorPalette);
      if (paletteString == null) return null;

      final json = jsonDecode(paletteString) as Map<String, dynamic>;
      return ColorPalette.fromJson(json);
    } catch (e) {
      debugPrint('Error loading color palette: $e');
      return null;
    }
  }

  // App State Operations

  @override
  Future<bool> saveLastViewedCvId(int? cvId) async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return false;

      if (cvId == null) {
        return await _prefs!.remove(StorageKeys.lastViewedCvId);
      }
      return await _prefs!.setInt(StorageKeys.lastViewedCvId, cvId);
    } catch (e) {
      debugPrint('Error saving last viewed CV ID: $e');
      return false;
    }
  }

  @override
  Future<int?> loadLastViewedCvId() async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return null;

      return _prefs!.getInt(StorageKeys.lastViewedCvId);
    } catch (e) {
      debugPrint('Error loading last viewed CV ID: $e');
      return null;
    }
  }

  // Utility Operations

  @override
  Future<bool> clearAll() async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return false;

      // Clear all preference keys
      final keysToRemove = [
        StorageKeys.theme,
        StorageKeys.colorPalette,
        StorageKeys.lastViewedCvId,
      ];

      for (final key in keysToRemove) {
        await _prefs!.remove(key);
      }

      // Note: We keep storageVersion and isInitialized
      // so the app knows it was initialized before
      //
      // Also note: CV data stored in Drift database is NOT cleared by this method
      // Clear CV data separately if needed
      return true;
    } catch (e) {
      debugPrint('Error clearing all storage: $e');
      return false;
    }
  }

  @override
  Future<bool> isInitialized() async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return false;

      return _prefs!.getBool(StorageKeys.isInitialized) ?? false;
    } catch (e) {
      debugPrint('Error checking initialization status: $e');
      return false;
    }
  }

  @override
  Future<int> getStorageVersion() async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return 0;

      return _prefs!.getInt(StorageKeys.storageVersion) ?? 0;
    } catch (e) {
      debugPrint('Error getting storage version: $e');
      return 0;
    }
  }

  @override
  Future<bool> setStorageVersion(int version) async {
    try {
      await _ensureInitialized();
      if (_prefs == null) return false;

      return await _prefs!.setInt(StorageKeys.storageVersion, version);
    } catch (e) {
      debugPrint('Error setting storage version: $e');
      return false;
    }
  }
}
