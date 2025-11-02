import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/work_experience.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:intl/intl.dart';

/// Work Experience section form widget
class WorkExperienceSection extends StatelessWidget {
  final CvData cvData;

  const WorkExperienceSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Work Experience'),
        description: const Text('Add your work experience entries'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...cvData.workExperience.asMap().entries.map((entry) {
              final index = entry.key;
              final experience = entry.value;
              return _WorkExperienceItem(
                key: ValueKey('work_experience_$index'),
                experience: experience,
                index: index,
                onUpdate: (updated) {
                  final updatedList = List<WorkExperience>.from(
                    cvData.workExperience,
                  );
                  updatedList[index] = updated;
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(workExperience: updatedList),
                      );
                },
                onDelete: () {
                  final updatedList = List<WorkExperience>.from(
                    cvData.workExperience,
                  );
                  updatedList.removeAt(index);
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(workExperience: updatedList),
                      );
                },
              );
            }).toList(),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                final newExperience = WorkExperience(
                  jobTitle: '',
                  company: '',
                  location: '',
                  startDate: DateTime.now(),
                );
                final updatedList = [
                  ...cvData.workExperience,
                  newExperience,
                ];
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(workExperience: updatedList),
                    );
              },
              leading: const Icon(Icons.add, size: 20),
              child: const Text('Add Work Experience'),
            ),
          ],
        ),
      ),
    );
  }
}

class _WorkExperienceItem extends StatefulWidget {
  final WorkExperience experience;
  final int index;
  final ValueChanged<WorkExperience> onUpdate;
  final VoidCallback onDelete;

  const _WorkExperienceItem({
    super.key,
    required this.experience,
    required this.index,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  State<_WorkExperienceItem> createState() => _WorkExperienceItemState();
}

class _WorkExperienceItemState extends State<_WorkExperienceItem> {
  late DateTime _startDate;
  DateTime? _endDate;
  late bool _isCurrentPosition;

  @override
  void initState() {
    super.initState();
    _startDate = widget.experience.startDate;
    _endDate = widget.experience.endDate;
    _isCurrentPosition = widget.experience.isCurrentPosition;
  }

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: isStartDate ? _startDate : (_endDate ?? DateTime.now()),
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
      _updateExperience();
    }
  }

  void _updateExperience() {
    widget.onUpdate(
      widget.experience.copyWith(
        startDate: _startDate,
        endDate: _isCurrentPosition ? null : _endDate,
        isCurrentPosition: _isCurrentPosition,
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
                'Experience ${widget.index + 1}',
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
            id: 'jobTitle_${widget.index}',
            label: const Text('Job Title'),
            placeholder: const Text('Software Engineer'),
            initialValue: widget.experience.jobTitle,
            validator: (value) {
              if (value.isEmpty) {
                return 'Job title is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.experience.copyWith(jobTitle: value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'company_${widget.index}',
            label: const Text('Company'),
            placeholder: const Text('Company Name'),
            initialValue: widget.experience.company,
            validator: (value) {
              if (value.isEmpty) {
                return 'Company name is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.experience.copyWith(company: value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'location_${widget.index}',
            label: const Text('Location'),
            placeholder: const Text('City, State, Country'),
            initialValue: widget.experience.location,
            validator: (value) {
              if (value.isEmpty) {
                return 'Location is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.experience.copyWith(location: value),
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
                    initialValue: DateFormat('yyyy-MM-dd').format(_startDate),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  onTap: _isCurrentPosition
                      ? null
                      : () => _selectDate(context, false),
                  child: ShadInputFormField(
                    id: 'endDate_${widget.index}',
                    label: const Text('End Date'),
                    placeholder: const Text('Select end date'),
                    readOnly: true,
                    initialValue: _endDate != null
                        ? DateFormat('yyyy-MM-dd').format(_endDate!)
                        : '',
                    enabled: !_isCurrentPosition,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ShadCheckbox(
            value: _isCurrentPosition,
            onChanged: (value) {
              setState(() {
                _isCurrentPosition = value;
              });
              _updateExperience();
            },
            label: const Text('Current Position'),
          ),
          const SizedBox(height: 16),
          ShadTextareaFormField(
            id: 'description_${widget.index}',
            label: const Text('Description'),
            placeholder: const Text('Job responsibilities and achievements...'),
            initialValue: widget.experience.description ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.experience.copyWith(
                  description: value.isEmpty ? null : value,
                ),
              );
            },
          ),
          if (widget.experience.achievements.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              'Achievements',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            ...widget.experience.achievements.asMap().entries.map((entry) {
              final achIndex = entry.key;
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: ShadInputFormField(
                        id: 'achievement_${widget.index}_$achIndex',
                        placeholder: const Text('Achievement'),
                        initialValue: entry.value,
                        onChanged: (value) {
                          final updatedAchievements =
                              List<String>.from(widget.experience.achievements);
                          updatedAchievements[achIndex] = value;
                          widget.onUpdate(
                            widget.experience.copyWith(
                              achievements: updatedAchievements,
                            ),
                          );
                        },
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline, size: 20),
                      onPressed: () {
                        final updatedAchievements =
                            List<String>.from(widget.experience.achievements);
                        updatedAchievements.removeAt(achIndex);
                        widget.onUpdate(
                          widget.experience.copyWith(
                            achievements: updatedAchievements,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            }).toList(),
            ShadButton.outline(
              onPressed: () {
                final updatedAchievements = [
                  ...widget.experience.achievements,
                  '',
                ];
                widget.onUpdate(
                  widget.experience.copyWith(
                    achievements: updatedAchievements,
                  ),
                );
              },
              leading: const Icon(Icons.add, size: 16),
              child: const Text('Add Achievement'),
            ),
          ] else
            ShadButton.outline(
              onPressed: () {
                widget.onUpdate(
                  widget.experience.copyWith(achievements: ['']),
                );
              },
              leading: const Icon(Icons.add, size: 16),
              child: const Text('Add Achievement'),
            ),
        ],
      ),
    );
  }
}
