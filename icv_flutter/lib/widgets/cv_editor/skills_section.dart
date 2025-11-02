import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/skill.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Skills section form widget
class SkillsSection extends StatelessWidget {
  final CvData cvData;

  const SkillsSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    // Group skills by category
    final skillsByCategory = <String, List<Skill>>{};
    final uncategorized = <Skill>[];

    for (final skill in cvData.skills) {
      if (skill.category != null && skill.category!.isNotEmpty) {
        skillsByCategory.putIfAbsent(skill.category!, () => []).add(skill);
      } else {
        uncategorized.add(skill);
      }
    }

    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Skills'),
        description: const Text('Add your skills organized by category'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Uncategorized skills
            if (uncategorized.isNotEmpty) ...[
              _SkillsCategoryGroup(
                category: 'Other',
                skills: uncategorized,
                onUpdate: (index, skill) {
                  final updatedList = List<Skill>.from(cvData.skills);
                  final globalIndex =
                      cvData.skills.indexOf(uncategorized[index]);
                  updatedList[globalIndex] = skill;
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(skills: updatedList),
                      );
                },
                onDelete: (index) {
                  final updatedList = List<Skill>.from(cvData.skills);
                  updatedList.remove(cvData.skills.firstWhere(
                    (s) => s == uncategorized[index],
                  ));
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(skills: updatedList),
                      );
                },
              ),
              const SizedBox(height: 16),
            ],
            // Categorized skills
            ...skillsByCategory.entries.map((entry) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SkillsCategoryGroup(
                    category: entry.key,
                    skills: entry.value,
                    onUpdate: (index, skill) {
                      final updatedList = List<Skill>.from(cvData.skills);
                      final globalIndex =
                          cvData.skills.indexOf(entry.value[index]);
                      updatedList[globalIndex] = skill;
                      context.read<CvCubit>().updateCvData(
                            cvData.copyWith(skills: updatedList),
                          );
                    },
                    onDelete: (index) {
                      final updatedList = List<Skill>.from(cvData.skills);
                      updatedList.remove(cvData.skills.firstWhere(
                        (s) => s == entry.value[index],
                      ));
                      context.read<CvCubit>().updateCvData(
                            cvData.copyWith(skills: updatedList),
                          );
                    },
                  ),
                  const SizedBox(height: 16),
                ],
              );
            }).toList(),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                final newSkill = const Skill(
                  name: '',
                  category: '',
                  proficiency: 'Intermediate',
                );
                final updatedList = [...cvData.skills, newSkill];
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(skills: updatedList),
                    );
              },
              leading: const Icon(Icons.add, size: 20),
              child: const Text('Add Skill'),
            ),
          ],
        ),
      ),
    );
  }
}

class _SkillsCategoryGroup extends StatelessWidget {
  final String category;
  final List<Skill> skills;
  final void Function(int, Skill) onUpdate;
  final ValueChanged<int> onDelete;

  const _SkillsCategoryGroup({
    required this.category,
    required this.skills,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        ...skills.asMap().entries.map((entry) {
          final index = entry.key;
          final skill = entry.value;
          return _SkillItem(
            key: ValueKey('skill_${skill.name}_$index'),
            skill: skill,
            index: index,
            onUpdate: (updated) => onUpdate(index, updated),
            onDelete: () => onDelete(index),
          );
        }).toList(),
      ],
    );
  }
}

class _SkillItem extends StatelessWidget {
  final Skill skill;
  final int index;
  final ValueChanged<Skill> onUpdate;
  final VoidCallback onDelete;

  const _SkillItem({
    super.key,
    required this.skill,
    required this.index,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: ShadInputFormField(
              id: 'skill_name_$index',
              placeholder: const Text('Skill name'),
              initialValue: skill.name,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Skill name is required';
                }
                return null;
              },
              onChanged: (value) {
                onUpdate(skill.copyWith(name: value));
              },
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ShadInputFormField(
              id: 'skill_category_$index',
              placeholder: const Text('Category'),
              initialValue: skill.category ?? '',
              onChanged: (value) {
                onUpdate(
                  skill.copyWith(category: value.isEmpty ? null : value),
                );
              },
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: ShadSelect<String>(
              placeholder: const Text('Proficiency'),
              selectedOptionBuilder: (context, value) => Text(value),
              options: const [
                ShadOption(value: 'Beginner', child: Text('Beginner')),
                ShadOption(
                  value: 'Intermediate',
                  child: Text('Intermediate'),
                ),
                ShadOption(value: 'Advanced', child: Text('Advanced')),
                ShadOption(value: 'Expert', child: Text('Expert')),
              ],
              onChanged: (value) {
                onUpdate(skill.copyWith(proficiency: value));
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline, size: 20),
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}
