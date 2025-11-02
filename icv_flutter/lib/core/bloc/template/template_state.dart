import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icv_flutter/data/models/template.dart';

part 'template_state.freezed.dart';

/// Represents the state of template management
@freezed
sealed class TemplateState with _$TemplateState {
  /// Initial state
  const factory TemplateState.initial() = TemplateInitial;

  /// Loading templates
  const factory TemplateState.loading() = TemplateLoading;

  /// Templates loaded successfully
  const factory TemplateState.loaded({
    required List<Template> templates,
    Template? selectedTemplate,
  }) = TemplateLoaded;

  /// Template selected
  const factory TemplateState.selected({
    required Template template,
    required List<Template> availableTemplates,
  }) = TemplateSelected;

  /// Error state
  const factory TemplateState.error({
    required String message,
    List<Template>? previousTemplates,
  }) = TemplateError;
}
