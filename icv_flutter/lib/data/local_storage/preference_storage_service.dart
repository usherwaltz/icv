import 'package:icv_flutter/data/models/app_theme.dart';
import 'package:icv_flutter/data/models/color_palette.dart';

/// Abstract interface for preference storage operations
///
/// Handles small user preferences and app state:
/// - Theme preferences
/// - Color palette preferences
/// - App state (last viewed CV ID, etc.)
///
/// Note: CV data and metadata are stored in Drift database (see CvDataStorageService)
/// This service only handles lightweight key-value preferences.
abstract class PreferenceStorageService {
  // User Preferences Operations
  /// Save user's theme preference
  Future<bool> saveTheme(AppTheme theme);

  /// Load user's theme preference
  /// Returns null if no preference exists
  Future<AppTheme?> loadTheme();

  /// Save user's color palette preference
  Future<bool> saveColorPalette(ColorPalette palette);

  /// Load user's color palette preference
  /// Returns null if no preference exists
  Future<ColorPalette?> loadColorPalette();

  // App State Operations
  /// Save last viewed CV ID
  Future<bool> saveLastViewedCvId(int? cvId);

  /// Load last viewed CV ID
  /// Returns null if no ID is stored
  Future<int?> loadLastViewedCvId();

  // Utility Operations
  /// Clear all stored preferences (useful for logout/account deletion)
  /// Note: This does NOT clear CV data stored in Drift database
  Future<bool> clearAll();

  /// Check if storage has been initialized
  /// This is useful for migration logic
  Future<bool> isInitialized();

  /// Get the current storage version
  /// Used for migration purposes
  Future<int> getStorageVersion();

  /// Set the storage version
  Future<bool> setStorageVersion(int version);
}
