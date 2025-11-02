import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/core/bloc/cv/cv_state.dart';
import 'package:icv_flutter/core/constants/cv_sections.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/cv_metadata.dart';
import 'package:icv_flutter/data/models/pdf_theme_option.dart';
import 'package:icv_flutter/widgets/cv_editor/certifications_section.dart';
import 'package:icv_flutter/widgets/cv_editor/draggable_section_wrapper.dart';
import 'package:icv_flutter/widgets/cv_editor/education_section.dart';
import 'package:icv_flutter/widgets/cv_editor/languages_section.dart';
import 'package:icv_flutter/widgets/cv_editor/personal_information_section.dart';
import 'package:icv_flutter/widgets/cv_editor/professional_summary_section.dart';
import 'package:icv_flutter/widgets/cv_editor/projects_section.dart';
import 'package:icv_flutter/widgets/cv_editor/references_section.dart';
import 'package:icv_flutter/widgets/cv_editor/skills_section.dart';
import 'package:icv_flutter/widgets/cv_editor/split_view_layout.dart';
import 'package:icv_flutter/widgets/cv_editor/work_experience_section.dart';
import 'package:icv_flutter/widgets/cv_preview/cv_preview_widget.dart';
import 'package:reorderables/reorderables.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// CV Editor page - split-view layout with form and PDF preview
class CvEditorPage extends StatelessWidget {
  const CvEditorPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Provide CvCubit at the page level
    return BlocProvider(
      create: (context) => CvCubit().._initializeCv(),
      child: const _CvEditorView(),
    );
  }
}

/// Extension method to initialize CV data
extension _CvCubitInit on CvCubit {
  void _initializeCv() {
    // Initialize with empty CV data if none is loaded
    // This will be replaced in Phase 7.2 when form fields are connected
    final initialData = const CvData();
    final initialMetadata = CvMetadata(
      templateId: 'default',
      pdfThemeOption: PdfThemeOption.mirrorApp(),
      sectionOrder: CvSections.defaultOrder,
    );
    updateCvData(initialData);
    updateMetadata(initialMetadata);
  }
}

/// CV Editor view with split-view layout
class _CvEditorView extends StatelessWidget {
  const _CvEditorView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SelectableText('CV Editor'),
      ),
      body: BlocBuilder<CvCubit, CvState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: state.maybeWhen(
              initial: () => const Center(
                child: SelectableText('Initializing CV editor...'),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (data, metadata, hasUnsavedChanges) => SplitViewLayout(
                leftContent: _FormContainer(
                  cvData: data,
                  metadata: metadata,
                  hasUnsavedChanges: hasUnsavedChanges,
                ),
                rightContent: _PreviewContainer(
                  cvData: data,
                  metadata: metadata,
                ),
              ),
              saved: (data, metadata) => SplitViewLayout(
                leftContent: _FormContainer(
                  cvData: data,
                  metadata: metadata,
                  hasUnsavedChanges: false,
                ),
                rightContent: _PreviewContainer(
                  cvData: data,
                  metadata: metadata,
                ),
              ),
              error: (message, previousData, previousMetadata) {
                if (previousData != null && previousMetadata != null) {
                  // Show previous data if available
                  return SplitViewLayout(
                    leftContent: _FormContainer(
                      cvData: previousData,
                      metadata: previousMetadata,
                      hasUnsavedChanges: true,
                    ),
                    rightContent: _PreviewContainer(
                      cvData: previousData,
                      metadata: previousMetadata,
                    ),
                  );
                }
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText('Error: $message'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<CvCubit>().reset();
                          context.read<CvCubit>()._initializeCv();
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const Center(
                child: SelectableText('Unexpected state'),
              ),
            ),
          );
        },
      ),
    );
  }
}

/// Form container (left side) - contains all CV form sections
class _FormContainer extends StatefulWidget {
  final CvData cvData;
  final CvMetadata metadata;
  final bool hasUnsavedChanges;

  const _FormContainer({
    required this.cvData,
    required this.metadata,
    required this.hasUnsavedChanges,
  });

  @override
  State<_FormContainer> createState() => _FormContainerState();
}

class _FormContainerState extends State<_FormContainer> {
  late List<Widget> _sectionWidgets;
  late List<String> _sectionOrder;
  bool _isInternalReorder = false;

  @override
  void initState() {
    super.initState();
    _initializeSectionWidgets();
  }

  @override
  void didUpdateWidget(_FormContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Rebuild widgets if metadata section order changed externally
    // (not from our own reorder operation)
    if (!_isInternalReorder && oldWidget.metadata.sectionOrder != widget.metadata.sectionOrder) {
      _initializeSectionWidgets();
    }
    // Reset flag after handling update
    _isInternalReorder = false;
  }

  void _initializeSectionWidgets() {
    // Get ordered sections based on metadata
    _sectionOrder = List<String>.from(CvSections.getOrderedSections(widget.metadata.sectionOrder));

    // Build list of section widgets with unique keys for ReorderableColumn
    _sectionWidgets = _sectionOrder.asMap().entries.map((entry) {
      final index = entry.key;
      final sectionId = entry.value;
      final sectionTitle = CvSections.getDisplayName(sectionId);

      Widget sectionWidget;
      switch (sectionId) {
        case CvSections.personalInformation:
          sectionWidget = PersonalInformationSection(cvData: widget.cvData);
          break;
        case CvSections.professionalSummary:
          sectionWidget = ProfessionalSummarySection(cvData: widget.cvData);
          break;
        case CvSections.workExperience:
          sectionWidget = WorkExperienceSection(cvData: widget.cvData);
          break;
        case CvSections.education:
          sectionWidget = EducationSection(cvData: widget.cvData);
          break;
        case CvSections.skills:
          sectionWidget = SkillsSection(cvData: widget.cvData);
          break;
        case CvSections.languages:
          sectionWidget = LanguagesSection(cvData: widget.cvData);
          break;
        case CvSections.certifications:
          sectionWidget = CertificationsSection(cvData: widget.cvData);
          break;
        case CvSections.projects:
          sectionWidget = ProjectsSection(cvData: widget.cvData);
          break;
        case CvSections.references:
          sectionWidget = ReferencesSection(cvData: widget.cvData);
          break;
        default:
          sectionWidget = const SizedBox.shrink();
      }

      return ReorderableWidget(
        key: ValueKey('section-$sectionId'),
        reorderable: true,
        child: DraggableSectionWrapper(
          sectionId: sectionId,
          sectionTitle: sectionTitle,
          sectionIndex: index,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: sectionWidget,
          ),
        ),
      );
    }).toList();
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      // Reorder widgets in local state
      final reorderedWidget = _sectionWidgets.removeAt(oldIndex);
      _sectionWidgets.insert(newIndex, reorderedWidget);

      // Reorder section IDs to match
      final sectionId = _sectionOrder.removeAt(oldIndex);
      _sectionOrder.insert(newIndex, sectionId);

      // Mark as internal reorder to prevent didUpdateWidget from resetting
      _isInternalReorder = true;

      // Update metadata with new section order
      context.read<CvCubit>().updateMetadata(
            widget.metadata.copyWith(sectionOrder: List<String>.from(_sectionOrder)),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.hasUnsavedChanges) ...[
          ShadAlert(
            icon: const Icon(Icons.info_outline),
            title: const Text('Unsaved Changes'),
            description: const Text(
              'You have unsaved changes. Remember to save your CV.',
            ),
          ),
          const SizedBox(height: 16),
        ],
        // Use ReorderableColumn for animated drag and drop
        ReorderableColumn(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _sectionWidgets,
          onReorder: _onReorder,
          onNoReorder: (index) {
            // Optional callback when reorder is cancelled
            debugPrint('Reorder cancelled. index: $index');
          },
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

/// Preview container (right side) - shows PDF preview
class _PreviewContainer extends StatelessWidget {
  final CvData cvData;
  final CvMetadata metadata;

  const _PreviewContainer({
    required this.cvData,
    required this.metadata,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'PDF Preview',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        // Show CV preview using existing CvPreviewWidget
        // Note: Full PDF generation will be implemented in Phase 8
        // The widget will size itself naturally within the scrollable container
        CvPreviewWidget(
          cvData: cvData,
          metadata: metadata,
          isCompact: true,
        ),
      ],
    );
  }
}
