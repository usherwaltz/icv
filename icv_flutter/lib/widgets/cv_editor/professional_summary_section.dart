import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Professional Summary section form widget
class ProfessionalSummarySection extends StatelessWidget {
  final CvData cvData;

  const ProfessionalSummarySection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Professional Summary'),
        description: const Text(
          'Write a brief summary of your professional background and key strengths',
        ),
        child: ShadTextareaFormField(
          id: 'professionalSummary',
          label: const Text('Summary'),
          placeholder: const Text(
            'Experienced professional with expertise in...',
          ),
          initialValue: cvData.professionalSummary ?? '',
          validator: (value) {
            if (value.isEmpty) {
              return 'Professional summary is required';
            }
            if (value.length < 50) {
              return 'Summary should be at least 50 characters';
            }
            return null;
          },
          onChanged: (value) {
            context.read<CvCubit>().updateCvData(
                  cvData.copyWith(
                    professionalSummary: value.isEmpty ? null : value,
                  ),
                );
          },
        ),
      ),
    );
  }
}
