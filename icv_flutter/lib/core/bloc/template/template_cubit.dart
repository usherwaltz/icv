import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/template/template_state.dart';
import 'package:icv_flutter/data/models/template.dart';

/// Cubit for managing CV templates
class TemplateCubit extends Cubit<TemplateState> {
  TemplateCubit() : super(const TemplateState.initial()) {
    loadTemplates();
  }

  /// Load available templates
  Future<void> loadTemplates() async {
    emit(const TemplateState.loading());
    try {
      // TODO: Implement actual template loading from repository
      // final templates = await _templateRepository.getAllTemplates();
      // emit(TemplateState.loaded(templates: templates));

      // Placeholder with example templates
      await Future.delayed(const Duration(milliseconds: 300));
      final templates = [
        const Template(
          id: 'modern-1',
          name: 'Modern Blue',
          description: 'Clean and professional modern design',
          category: 'modern',
        ),
        const Template(
          id: 'classic-1',
          name: 'Classic Elegant',
          description: 'Traditional and elegant layout',
          category: 'classic',
        ),
        const Template(
          id: 'creative-1',
          name: 'Creative Portfolio',
          description: 'Bold and creative design',
          category: 'creative',
        ),
      ];

      emit(TemplateState.loaded(templates: templates));
    } catch (e) {
      emit(TemplateState.error(message: e.toString()));
    }
  }

  /// Select a template
  void selectTemplate(Template template) {
    final currentState = state;
    currentState.maybeWhen(
      loaded: (templates, _) {
        emit(TemplateState.selected(
          template: template,
          availableTemplates: templates,
        ));
      },
      selected: (_, templates) {
        emit(TemplateState.selected(
          template: template,
          availableTemplates: templates,
        ));
      },
      orElse: () {
        // Load templates first if not loaded
        loadTemplates().then((_) {
          final newState = state;
          newState.maybeWhen(
            loaded: (templates, _) {
              emit(TemplateState.selected(
                template: template,
                availableTemplates: templates,
              ));
            },
            orElse: () {
              emit(TemplateState.error(message: 'Failed to load templates'));
            },
          );
        });
      },
    );
  }

  /// Get currently selected template
  Template? getSelectedTemplate() {
    return state.maybeWhen(
      loaded: (_, selected) => selected,
      selected: (template, _) => template,
      orElse: () => null,
    );
  }
}
