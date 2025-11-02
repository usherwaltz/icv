import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/reference.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// References section form widget
class ReferencesSection extends StatelessWidget {
  final CvData cvData;

  const ReferencesSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('References'),
        description: const Text('Add professional references (optional)'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...cvData.references.asMap().entries.map((entry) {
              final index = entry.key;
              final reference = entry.value;
              return _ReferenceItem(
                key: ValueKey('reference_$index'),
                reference: reference,
                index: index,
                onUpdate: (updated) {
                  final updatedList = List<Reference>.from(cvData.references);
                  updatedList[index] = updated;
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(references: updatedList),
                      );
                },
                onDelete: () {
                  final updatedList = List<Reference>.from(cvData.references);
                  updatedList.removeAt(index);
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(references: updatedList),
                      );
                },
              );
            }).toList(),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                final newReference = const Reference(
                  name: '',
                  relationship: '',
                );
                final updatedList = [...cvData.references, newReference];
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(references: updatedList),
                    );
              },
              leading: const Icon(Icons.add, size: 20),
              child: const Text('Add Reference'),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReferenceItem extends StatelessWidget {
  final Reference reference;
  final int index;
  final ValueChanged<Reference> onUpdate;
  final VoidCallback onDelete;

  const _ReferenceItem({
    super.key,
    required this.reference,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reference ${index + 1}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ShadButton.ghost(
                onPressed: onDelete,
                leading: const Icon(Icons.delete_outline, size: 20),
                child: const Text('Delete'),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'name_$index',
            label: const Text('Name'),
            placeholder: const Text('John Doe'),
            initialValue: reference.name,
            validator: (value) {
              if (value.isEmpty) {
                return 'Name is required';
              }
              return null;
            },
            onChanged: (value) {
              onUpdate(reference.copyWith(name: value));
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'relationship_$index',
            label: const Text('Relationship'),
            placeholder: const Text('Former Manager, Professor, etc.'),
            initialValue: reference.relationship,
            validator: (value) {
              if (value.isEmpty) {
                return 'Relationship is required';
              }
              return null;
            },
            onChanged: (value) {
              onUpdate(reference.copyWith(relationship: value));
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'company_$index',
            label: const Text('Company'),
            placeholder: const Text('Company Name'),
            initialValue: reference.company ?? '',
            onChanged: (value) {
              onUpdate(
                reference.copyWith(company: value.isEmpty ? null : value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'email_$index',
            label: const Text('Email'),
            placeholder: const Text('john.doe@example.com'),
            keyboardType: TextInputType.emailAddress,
            initialValue: reference.email ?? '',
            validator: (value) {
              if (value.isNotEmpty) {
                final emailRegex = RegExp(
                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                );
                if (!emailRegex.hasMatch(value)) {
                  return 'Please enter a valid email address';
                }
              }
              return null;
            },
            onChanged: (value) {
              onUpdate(
                reference.copyWith(email: value.isEmpty ? null : value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'phone_$index',
            label: const Text('Phone'),
            placeholder: const Text('+1 (555) 123-4567'),
            keyboardType: TextInputType.phone,
            initialValue: reference.phone ?? '',
            onChanged: (value) {
              onUpdate(
                reference.copyWith(phone: value.isEmpty ? null : value),
              );
            },
          ),
        ],
      ),
    );
  }
}
