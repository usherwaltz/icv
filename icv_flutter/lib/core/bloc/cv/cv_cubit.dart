import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_state.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/cv_metadata.dart';
import 'package:icv_flutter/data/models/pdf_theme_option.dart';

/// Cubit for managing CV data and metadata
///
/// Handles:
/// - Loading CV data from local storage or server
/// - Saving CV data
/// - Updating CV fields
/// - Tracking unsaved changes
class CvCubit extends Cubit<CvState> {
  CvCubit() : super(const CvState.initial());

  /// Load CV data by ID
  Future<void> loadCv(String cvId) async {
    emit(const CvState.loading());
    try {
      // TODO: Implement actual loading logic using repository
      // final data = await _cvRepository.loadCv(cvId);
      // final metadata = await _cvRepository.loadMetadata(cvId);
      // emit(CvState.loaded(data: data, metadata: metadata));

      // Placeholder for demonstration
      await Future.delayed(const Duration(milliseconds: 500));
      emit(const CvState.error(message: 'Not implemented yet'));
    } catch (e) {
      emit(CvState.error(message: e.toString()));
    }
  }

  /// Save CV data
  Future<void> saveCv(CvData data, CvMetadata metadata) async {
    emit(const CvState.loading());
    try {
      // TODO: Implement actual saving logic using repository
      // await _cvRepository.saveCv(data, metadata);
      // emit(CvState.saved(data: data, metadata: metadata));

      // Placeholder for demonstration
      await Future.delayed(const Duration(milliseconds: 500));
      emit(CvState.saved(data: data, metadata: metadata));
    } catch (e) {
      final previousState = state;
      final previousData = previousState.maybeWhen(
        loaded: (data, metadata, _) => data,
        saved: (data, _) => data,
        orElse: () => null,
      );
      final previousMetadata = previousState.maybeWhen(
        loaded: (data, metadata, _) => metadata,
        saved: (_, metadata) => metadata,
        orElse: () => null,
      );

      emit(CvState.error(
        message: e.toString(),
        previousData: previousData,
        previousMetadata: previousMetadata,
      ));
    }
  }

  /// Update CV data (marks as having unsaved changes)
  void updateCvData(CvData data) {
    final currentState = state;
    currentState.maybeWhen(
      loaded: (_, metadata, __) {
        emit(CvState.loaded(
          data: data,
          metadata: metadata,
          hasUnsavedChanges: true,
        ));
      },
      orElse: () {
        // If no CV is loaded, create initial loaded state
        emit(CvState.loaded(
          data: data,
          metadata: const CvMetadata(
            templateId: 'default',
            pdfThemeOption: PdfThemeOption.mirrorApp(),
          ),
          hasUnsavedChanges: true,
        ));
      },
    );
  }

  /// Update CV metadata
  void updateMetadata(CvMetadata metadata) {
    final currentState = state;
    currentState.maybeWhen(
      loaded: (data, _, hasChanges) {
        emit(CvState.loaded(
          data: data,
          metadata: metadata,
          hasUnsavedChanges: hasChanges || true, // Mark as changed
        ));
      },
      orElse: () {
        // Cannot update metadata without loaded CV
        emit(CvState.error(message: 'No CV loaded'));
      },
    );
  }

  /// Reset to initial state
  void reset() {
    emit(const CvState.initial());
  }
}
