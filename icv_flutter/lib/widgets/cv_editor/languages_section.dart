import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/language.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Languages section form widget
class LanguagesSection extends StatelessWidget {
  final CvData cvData;

  const LanguagesSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Languages'),
        description: const Text('Add languages you speak'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...cvData.languages.asMap().entries.map((entry) {
              final index = entry.key;
              final language = entry.value;
              return _LanguageItem(
                key: ValueKey('language_$index'),
                language: language,
                index: index,
                onUpdate: (updated) {
                  final updatedList = List<Language>.from(cvData.languages);
                  updatedList[index] = updated;
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(languages: updatedList),
                      );
                },
                onDelete: () {
                  final updatedList = List<Language>.from(cvData.languages);
                  updatedList.removeAt(index);
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(languages: updatedList),
                      );
                },
              );
            }).toList(),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                final newLanguage = const Language(
                  name: '',
                  proficiency: 'Conversational',
                );
                final updatedList = [...cvData.languages, newLanguage];
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(languages: updatedList),
                    );
              },
              leading: const Icon(Icons.add, size: 20),
              child: const Text('Add Language'),
            ),
          ],
        ),
      ),
    );
  }
}

class _LanguageItem extends StatelessWidget {
  final Language language;
  final int index;
  final ValueChanged<Language> onUpdate;
  final VoidCallback onDelete;

  const _LanguageItem({
    super.key,
    required this.language,
    required this.index,
    required this.onUpdate,
    required this.onDelete,
  });

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
      child: Row(
        children: [
          Expanded(
            child: ShadInputFormField(
              id: 'language_name_$index',
              label: const Text('Language'),
              placeholder: const Text('English'),
              initialValue: language.name,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Language name is required';
                }
                return null;
              },
              onChanged: (value) {
                onUpdate(language.copyWith(name: value));
              },
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Proficiency'),
                const SizedBox(height: 8),
                ShadSelect<String>(
                  placeholder: const Text('Select proficiency'),
                  selectedOptionBuilder: (context, value) =>
                      Text(value ?? language.proficiency ?? 'Conversational'),
                  options: const [
                    ShadOption(value: 'Native', child: Text('Native')),
                    ShadOption(value: 'Fluent', child: Text('Fluent')),
                    ShadOption(
                      value: 'Conversational',
                      child: Text('Conversational'),
                    ),
                    ShadOption(value: 'Basic', child: Text('Basic')),
                  ],
                  onChanged: (value) {
                    onUpdate(language.copyWith(
                        proficiency: value ?? 'Conversational'));
                  },
                ),
              ],
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
