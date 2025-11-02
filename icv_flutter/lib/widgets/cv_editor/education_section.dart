import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/education.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:intl/intl.dart';

/// Education section form widget
class EducationSection extends StatelessWidget {
  final CvData cvData;

  const EducationSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Education'),
        description: const Text('Add your educational background'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...cvData.education.asMap().entries.map((entry) {
              final index = entry.key;
              final education = entry.value;
              return _EducationItem(
                key: ValueKey('education_$index'),
                education: education,
                index: index,
                onUpdate: (updated) {
                  final updatedList = List<Education>.from(cvData.education);
                  updatedList[index] = updated;
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(education: updatedList),
                      );
                },
                onDelete: () {
                  final updatedList = List<Education>.from(cvData.education);
                  updatedList.removeAt(index);
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(education: updatedList),
                      );
                },
              );
            }).toList(),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                final newEducation = Education(
                  degree: '',
                  institution: '',
                  location: '',
                  startDate: DateTime.now(),
                );
                final updatedList = [...cvData.education, newEducation];
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(education: updatedList),
                    );
              },
              leading: const Icon(Icons.add, size: 20),
              child: const Text('Add Education'),
            ),
          ],
        ),
      ),
    );
  }
}

class _EducationItem extends StatefulWidget {
  final Education education;
  final int index;
  final ValueChanged<Education> onUpdate;
  final VoidCallback onDelete;

  const _EducationItem({
    super.key,
    required this.education,
    required this.index,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  State<_EducationItem> createState() => _EducationItemState();
}

class _EducationItemState extends State<_EducationItem> {
  late DateTime _startDate;
  DateTime? _endDate;
  late bool _isCurrentlyEnrolled;

  @override
  void initState() {
    super.initState();
    _startDate = widget.education.startDate;
    _endDate = widget.education.endDate;
    _isCurrentlyEnrolled = widget.education.isCurrentlyEnrolled;
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
      _updateEducation();
    }
  }

  void _updateEducation() {
    widget.onUpdate(
      widget.education.copyWith(
        startDate: _startDate,
        endDate: _isCurrentlyEnrolled ? null : _endDate,
        isCurrentlyEnrolled: _isCurrentlyEnrolled,
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
                'Education ${widget.index + 1}',
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
            id: 'degree_${widget.index}',
            label: const Text('Degree'),
            placeholder: const Text('Bachelor of Science'),
            initialValue: widget.education.degree,
            validator: (value) {
              if (value.isEmpty) {
                return 'Degree is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.education.copyWith(degree: value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'institution_${widget.index}',
            label: const Text('Institution'),
            placeholder: const Text('University Name'),
            initialValue: widget.education.institution,
            validator: (value) {
              if (value.isEmpty) {
                return 'Institution name is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.education.copyWith(institution: value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'location_${widget.index}',
            label: const Text('Location'),
            placeholder: const Text('City, State, Country'),
            initialValue: widget.education.location,
            validator: (value) {
              if (value.isEmpty) {
                return 'Location is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.education.copyWith(location: value),
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
                  onTap: _isCurrentlyEnrolled
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
                    enabled: !_isCurrentlyEnrolled,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ShadCheckbox(
            value: _isCurrentlyEnrolled,
            onChanged: (value) {
              setState(() {
                _isCurrentlyEnrolled = value;
              });
              _updateEducation();
            },
            label: const Text('Currently Enrolled'),
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'fieldOfStudy_${widget.index}',
            label: const Text('Field of Study'),
            placeholder: const Text('Computer Science'),
            initialValue: widget.education.fieldOfStudy ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.education.copyWith(
                  fieldOfStudy: value.isEmpty ? null : value,
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'grade_${widget.index}',
            label: const Text('Grade/GPA'),
            placeholder: const Text('3.8/4.0 or First Class'),
            initialValue: widget.education.grade ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.education.copyWith(grade: value.isEmpty ? null : value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadTextareaFormField(
            id: 'description_${widget.index}',
            label: const Text('Description'),
            placeholder:
                const Text('Additional details about your education...'),
            initialValue: widget.education.description ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.education.copyWith(
                  description: value.isEmpty ? null : value,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
