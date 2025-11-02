import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/cv_metadata.dart';

part 'cv_state.freezed.dart';

/// Represents the state of CV data management
@freezed
sealed class CvState with _$CvState {
  /// Initial state when no CV is loaded
  const factory CvState.initial() = CvInitial;

  /// Loading state when fetching or saving CV
  const factory CvState.loading() = CvLoading;

  /// Success state with loaded CV data and metadata
  const factory CvState.loaded({
    required CvData data,
    required CvMetadata metadata,
    @Default(false) bool hasUnsavedChanges,
  }) = CvLoaded;

  /// Success state after saving CV
  const factory CvState.saved({
    required CvData data,
    required CvMetadata metadata,
  }) = CvSaved;

  /// Error state with error message
  const factory CvState.error({
    required String message,
    CvData? previousData,
    CvMetadata? previousMetadata,
  }) = CvError;
}
