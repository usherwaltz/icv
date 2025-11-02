import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/project.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

/// Projects section form widget
class ProjectsSection extends StatelessWidget {
  final CvData cvData;

  const ProjectsSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Projects'),
        description: const Text('Add your portfolio projects and work samples'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...cvData.projects.asMap().entries.map((entry) {
              final index = entry.key;
              final project = entry.value;
              return _ProjectItem(
                key: ValueKey('project_$index'),
                project: project,
                index: index,
                onUpdate: (updated) {
                  final updatedList = List<Project>.from(cvData.projects);
                  updatedList[index] = updated;
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(projects: updatedList),
                      );
                },
                onDelete: () {
                  final updatedList = List<Project>.from(cvData.projects);
                  updatedList.removeAt(index);
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(projects: updatedList),
                      );
                },
              );
            }).toList(),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                final newProject = Project(name: '');
                final updatedList = [...cvData.projects, newProject];
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(projects: updatedList),
                    );
              },
              leading: const Icon(Icons.add, size: 20),
              child: const Text('Add Project'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectItem extends StatefulWidget {
  final Project project;
  final int index;
  final ValueChanged<Project> onUpdate;
  final VoidCallback onDelete;

  const _ProjectItem({
    super.key,
    required this.project,
    required this.index,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  State<_ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<_ProjectItem> {
  DateTime? _startDate;
  DateTime? _endDate;
  late bool _isOngoing;

  @override
  void initState() {
    super.initState();
    _startDate = widget.project.startDate;
    _endDate = widget.project.endDate;
    _isOngoing = widget.project.isOngoing;
  }

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: isStartDate
          ? (_startDate ?? DateTime.now())
          : (_endDate ?? DateTime.now()),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
      _updateProject();
    }
  }

  void _updateProject() {
    widget.onUpdate(
      widget.project.copyWith(
        startDate: _startDate,
        endDate: _isOngoing ? null : _endDate,
        isOngoing: _isOngoing,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Project ${widget.index + 1}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ShadButton.ghost(
                onPressed: widget.onDelete,
                leading: const Icon(Icons.delete_outline, size: 20),
                child: const Text('Delete'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'name_${widget.index}',
            label: const Text('Project Name'),
            placeholder: const Text('My Awesome Project'),
            initialValue: widget.project.name,
            validator: (value) {
              if (value.isEmpty) {
                return 'Project name is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.project.copyWith(name: value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadTextareaFormField(
            id: 'description_${widget.index}',
            label: const Text('Description'),
            placeholder: const Text('Project description...'),
            initialValue: widget.project.description ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.project.copyWith(
                  description: value.isEmpty ? null : value,
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'technologies_${widget.index}',
            label: const Text('Technologies'),
            placeholder: const Text('Flutter, Dart, Firebase'),
            initialValue: widget.project.technologies ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.project.copyWith(
                  technologies: value.isEmpty ? null : value,
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => _selectDate(context, true),
                  child: ShadInputFormField(
                    id: 'startDate_${widget.index}',
                    label: const Text('Start Date'),
                    placeholder: const Text('Select start date'),
                    readOnly: true,
                    initialValue: _startDate != null
                        ? DateFormat('yyyy-MM-dd').format(_startDate!)
                        : '',
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  onTap: _isOngoing ? null : () => _selectDate(context, false),
                  child: ShadInputFormField(
                    id: 'endDate_${widget.index}',
                    label: const Text('End Date'),
                    placeholder: const Text('Select end date'),
                    readOnly: true,
                    initialValue: _endDate != null
                        ? DateFormat('yyyy-MM-dd').format(_endDate!)
                        : '',
                    enabled: !_isOngoing,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ShadCheckbox(
            value: _isOngoing,
            onChanged: (value) {
              setState(() {
                _isOngoing = value;
              });
              _updateProject();
            },
            label: const Text('Ongoing Project'),
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'url_${widget.index}',
            label: const Text('Project URL'),
            placeholder: const Text('https://example.com/project'),
            keyboardType: TextInputType.url,
            initialValue: widget.project.url ?? '',
            validator: (value) {
              if (value.isNotEmpty) {
                final urlRegex = RegExp(
                  r'^https?://.+',
                  caseSensitive: false,
                );
                if (!urlRegex.hasMatch(value)) {
                  return 'Please enter a valid URL';
                }
              }
              return null;
            },
            onChanged: (value) {
              final normalizedUrl = value.isEmpty
                  ? null
                  : (!value.startsWith('http://') &&
                          !value.startsWith('https://'))
                      ? 'https://$value'
                      : value;
              widget.onUpdate(
                widget.project.copyWith(url: normalizedUrl),
              );
            },
            trailing:
                widget.project.url != null && widget.project.url!.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.open_in_new, size: 20),
                        onPressed: () async {
                          final uri = Uri.parse(widget.project.url!);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri,
                                mode: LaunchMode.externalApplication);
                          }
                        },
                        tooltip: 'Open URL',
                      )
                    : null,
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'githubUrl_${widget.index}',
            label: const Text('GitHub URL'),
            placeholder: const Text('https://github.com/username/repo'),
            keyboardType: TextInputType.url,
            initialValue: widget.project.githubUrl ?? '',
            validator: (value) {
              if (value.isNotEmpty) {
                final urlRegex = RegExp(
                  r'^https?://(www\.)?github\.com/.+',
                  caseSensitive: false,
                );
                if (!urlRegex.hasMatch(value)) {
                  return 'Please enter a valid GitHub URL';
                }
              }
              return null;
            },
            onChanged: (value) {
              final normalizedUrl = value.isEmpty
                  ? null
                  : (!value.startsWith('http://') &&
                          !value.startsWith('https://'))
                      ? 'https://$value'
                      : value;
              widget.onUpdate(
                widget.project.copyWith(githubUrl: normalizedUrl),
              );
            },
            trailing: widget.project.githubUrl != null &&
                    widget.project.githubUrl!.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.open_in_new, size: 20),
                    onPressed: () async {
                      final uri = Uri.parse(widget.project.githubUrl!);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri,
                            mode: LaunchMode.externalApplication);
                      }
                    },
                    tooltip: 'Open GitHub',
                  )
                : null,
          ),
          if (widget.project.highlights.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              'Highlights',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            ...widget.project.highlights.asMap().entries.map((entry) {
              final hlIndex = entry.key;
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: ShadInputFormField(
                        id: 'highlight_${widget.index}_$hlIndex',
                        placeholder: const Text('Project highlight'),
                        initialValue: entry.value,
                        onChanged: (value) {
                          final updatedHighlights =
                              List<String>.from(widget.project.highlights);
                          updatedHighlights[hlIndex] = value;
                          widget.onUpdate(
                            widget.project
                                .copyWith(highlights: updatedHighlights),
                          );
                        },
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline, size: 20),
                      onPressed: () {
                        final updatedHighlights =
                            List<String>.from(widget.project.highlights);
                        updatedHighlights.removeAt(hlIndex);
                        widget.onUpdate(
                          widget.project
                              .copyWith(highlights: updatedHighlights),
                        );
                      },
                    ),
                  ],
                ),
              );
            }).toList(),
            ShadButton.outline(
              onPressed: () {
                final updatedHighlights = [
                  ...widget.project.highlights,
                  '',
                ];
                widget.onUpdate(
                  widget.project.copyWith(highlights: updatedHighlights),
                );
              },
              leading: const Icon(Icons.add, size: 16),
              child: const Text('Add Highlight'),
            ),
          ] else
            ShadButton.outline(
              onPressed: () {
                widget.onUpdate(
                  widget.project.copyWith(highlights: ['']),
                );
              },
              leading: const Icon(Icons.add, size: 16),
              child: const Text('Add Highlight'),
            ),
        ],
      ),
    );
  }
}
