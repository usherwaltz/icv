import 'package:flutter/material.dart';
import 'package:icv_flutter/core/constants/cv_sections.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/cv_metadata.dart';
import 'package:icv_flutter/data/models/skill.dart';
import 'package:intl/intl.dart';

/// Professional CV preview widget for displaying CV data
/// Used on the home page to showcase the creator's CV
/// and in the CV editor for real-time preview
class CvPreviewWidget extends StatelessWidget {
  final CvData cvData;
  final bool isCompact;
  final CvMetadata? metadata; // Optional: when provided, respects section order

  const CvPreviewWidget({
    super.key,
    required this.cvData,
    this.isCompact = false,
    this.metadata,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    // Get section order from metadata if provided, otherwise use default
    final orderedSections = metadata != null
        ? CvSections.getOrderedSections(metadata!.sectionOrder)
        : CvSections.defaultOrder;

    // Build sections in the specified order
    final sectionWidgets = <Widget>[
      // Header Section (always first)
      _buildHeader(context, theme, textTheme),
    ];

    // Add sections in the specified order
    for (final sectionId in orderedSections) {
      final sectionWidget = _buildSectionForId(
        context,
        theme,
        textTheme,
        sectionId,
      );
      if (sectionWidget != null) {
        sectionWidgets.add(sectionWidget);
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(isCompact ? 24.0 : 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: sectionWidgets,
        ),
      ),
    );
  }

  /// Build section widget for a given section ID
  Widget? _buildSectionForId(
    BuildContext context,
    ThemeData theme,
    TextTheme textTheme,
    String sectionId,
  ) {
    switch (sectionId) {
      case CvSections.professionalSummary:
        if (cvData.professionalSummary != null &&
            cvData.professionalSummary!.isNotEmpty) {
          return _buildSection(
            context,
            theme,
            'Professional Summary',
            _buildProfessionalSummary(theme, textTheme),
          );
        }
        return null;

      case CvSections.workExperience:
        if (cvData.workExperience.isNotEmpty) {
          return _buildSection(
            context,
            theme,
            'Work Experience',
            _buildWorkExperience(context, theme, textTheme),
          );
        }
        return null;

      case CvSections.education:
        if (cvData.education.isNotEmpty) {
          return _buildSection(
            context,
            theme,
            'Education',
            _buildEducation(context, theme, textTheme),
          );
        }
        return null;

      case CvSections.skills:
        if (cvData.skills.isNotEmpty) {
          return _buildSection(
            context,
            theme,
            'Skills',
            _buildSkills(theme, textTheme),
          );
        }
        return null;

      case CvSections.languages:
        if (cvData.languages.isNotEmpty) {
          return _buildSection(
            context,
            theme,
            'Languages',
            _buildLanguages(theme, textTheme),
          );
        }
        return null;

      case CvSections.certifications:
        if (cvData.certifications.isNotEmpty) {
          return _buildSection(
            context,
            theme,
            'Certifications',
            _buildCertifications(context, theme, textTheme),
          );
        }
        return null;

      case CvSections.projects:
        if (cvData.projects.isNotEmpty) {
          return _buildSection(
            context,
            theme,
            'Projects',
            _buildProjects(context, theme, textTheme),
          );
        }
        return null;

      case CvSections.personalInformation:
        // Personal information is shown in header, skip here
        return null;

      case CvSections.references:
        // References section not currently shown in preview
        // (can be added later if needed)
        return null;

      default:
        return null;
    }
  }

  Widget _buildHeader(
      BuildContext context, ThemeData theme, TextTheme textTheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          cvData.fullName ?? 'Your Name',
          style: textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            if (cvData.email != null)
              _buildContactItem(theme, Icons.email, cvData.email!),
            if (cvData.phone != null)
              _buildContactItem(theme, Icons.phone, cvData.phone!),
            if (cvData.address != null)
              _buildContactItem(theme, Icons.location_on, cvData.address!),
            if (cvData.linkedInUrl != null)
              _buildContactItem(theme, Icons.link, 'LinkedIn'),
            if (cvData.githubUrl != null)
              _buildContactItem(theme, Icons.code, 'GitHub'),
          ],
        ),
      ],
    );
  }

  Widget _buildContactItem(ThemeData theme, IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: theme.colorScheme.onSurfaceVariant),
        const SizedBox(width: 4),
        SelectableText(
          text,
          style: TextStyle(
            fontSize: 13,
            color: theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _buildSection(
    BuildContext context,
    ThemeData theme,
    String title,
    Widget content,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 8),
          Divider(
            color: theme.colorScheme.primary.withValues(alpha: 0.3),
            thickness: 2,
          ),
          const SizedBox(height: 16),
          content,
        ],
      ),
    );
  }

  Widget _buildProfessionalSummary(ThemeData theme, TextTheme textTheme) {
    return SelectableText(
      cvData.professionalSummary!,
      style: textTheme.bodyMedium?.copyWith(
        height: 1.6,
        color: theme.colorScheme.onSurface,
      ),
    );
  }

  Widget _buildWorkExperience(
    BuildContext context,
    ThemeData theme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: cvData.workExperience.map((work) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          work.jobTitle,
                          style: textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(height: 4),
                        SelectableText(
                          '${work.company} • ${work.location}',
                          style: textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SelectableText(
                    _formatDateRange(
                        work.startDate, work.endDate, work.isCurrentPosition),
                    style: textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              if (work.description != null && work.description!.isNotEmpty) ...[
                const SizedBox(height: 8),
                SelectableText(
                  work.description!,
                  style: textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface,
                    height: 1.5,
                  ),
                ),
              ],
              if (work.achievements.isNotEmpty) ...[
                const SizedBox(height: 8),
                ...work.achievements.map((achievement) => Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            '• ',
                            style: textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: SelectableText(
                              achievement,
                              style: textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurface,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildEducation(
    BuildContext context,
    ThemeData theme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: cvData.education.map((edu) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          edu.degree,
                          style: textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                        if (edu.fieldOfStudy != null) ...[
                          const SizedBox(height: 4),
                          SelectableText(
                            edu.fieldOfStudy!,
                            style: textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                        SelectableText(
                          '${edu.institution} • ${edu.location}',
                          style: textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SelectableText(
                    _formatDateRange(
                      edu.startDate,
                      edu.endDate,
                      edu.isCurrentlyEnrolled,
                    ),
                    style: textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              if (edu.grade != null && edu.grade!.isNotEmpty) ...[
                const SizedBox(height: 4),
                SelectableText(
                  edu.grade!,
                  style: textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSkills(ThemeData theme, TextTheme textTheme) {
    // Group skills by category
    final Map<String, List<Skill>> skillsByCategory = {};
    for (final skill in cvData.skills) {
      final category = skill.category ?? 'Other';
      skillsByCategory.putIfAbsent(category, () => []).add(skill);
    }

    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: cvData.skills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                skill.name,
                style: textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (skill.proficiency != null) ...[
                const SizedBox(width: 6),
                SelectableText(
                  '(${skill.proficiency})',
                  style: textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onPrimaryContainer
                        .withValues(alpha: 0.8),
                    fontSize: 11,
                  ),
                ),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLanguages(ThemeData theme, TextTheme textTheme) {
    return Wrap(
      spacing: 16,
      runSpacing: 8,
      children: cvData.languages.map((lang) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SelectableText(
              lang.name,
              style: textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(width: 8),
            SelectableText(
              '- ${lang.proficiency}',
              style: textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildCertifications(
    BuildContext context,
    ThemeData theme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: cvData.certifications.map((cert) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                cert.name,
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 4),
              SelectableText(
                '${cert.issuer} • ${DateFormat('MMMM yyyy').format(cert.issueDate)}',
                style: textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildProjects(
    BuildContext context,
    ThemeData theme,
    TextTheme textTheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: cvData.projects.map((project) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          project.name,
                          style: textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                        if (project.description != null &&
                            project.description!.isNotEmpty) ...[
                          const SizedBox(height: 4),
                          SelectableText(
                            project.description!,
                            style: textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurface,
                              height: 1.5,
                            ),
                          ),
                        ],
                        if (project.technologies != null &&
                            project.technologies!.isNotEmpty) ...[
                          const SizedBox(height: 4),
                          SelectableText(
                            'Technologies: ${project.technologies}',
                            style: textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
              if (project.highlights.isNotEmpty) ...[
                const SizedBox(height: 8),
                ...project.highlights.map((highlight) => Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText(
                            '• ',
                            style: textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: SelectableText(
                              highlight,
                              style: textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.onSurface,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ],
          ),
        );
      }).toList(),
    );
  }

  String _formatDateRange(
    DateTime startDate,
    DateTime? endDate,
    bool isCurrent,
  ) {
    final start = DateFormat('MMM yyyy').format(startDate);
    if (isCurrent) {
      return '$start - Present';
    } else if (endDate != null) {
      return '$start - ${DateFormat('MMM yyyy').format(endDate)}';
    } else {
      return start;
    }
  }
}
