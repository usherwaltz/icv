import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:url_launcher/url_launcher.dart';

/// Personal Information section form widget
class PersonalInformationSection extends StatelessWidget {
  final CvData cvData;

  const PersonalInformationSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Personal Information'),
        description: const Text('Enter your basic contact information'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShadInputFormField(
              id: 'fullName',
              label: const Text('Full Name'),
              placeholder: const Text('John Doe'),
              initialValue: cvData.fullName ?? '',
              validator: (value) {
                if (value.isEmpty) {
                  return 'Full name is required';
                }
                return null;
              },
              onChanged: (value) {
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(fullName: value.isEmpty ? null : value),
                    );
              },
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              id: 'email',
              label: const Text('Email'),
              placeholder: const Text('john.doe@example.com'),
              keyboardType: TextInputType.emailAddress,
              initialValue: cvData.email ?? '',
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
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(email: value.isEmpty ? null : value),
                    );
              },
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              id: 'phone',
              label: const Text('Phone'),
              placeholder: const Text('+1 (555) 123-4567'),
              keyboardType: TextInputType.phone,
              initialValue: cvData.phone ?? '',
              onChanged: (value) {
                // Format phone number as user types
                final formatted = _formatPhoneNumber(value);
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(
                          phone: formatted.isEmpty ? null : formatted),
                    );
              },
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              id: 'address',
              label: const Text('Address'),
              placeholder: const Text('City, State, Country'),
              initialValue: cvData.address ?? '',
              onChanged: (value) {
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(address: value.isEmpty ? null : value),
                    );
              },
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              id: 'linkedInUrl',
              label: const Text('LinkedIn URL'),
              placeholder: const Text('https://linkedin.com/in/yourprofile'),
              keyboardType: TextInputType.url,
              initialValue: cvData.linkedInUrl ?? '',
              validator: (value) {
                if (value.isNotEmpty) {
                  final urlRegex = RegExp(
                    r'^https?://(www\.)?linkedin\.com/.+',
                    caseSensitive: false,
                  );
                  if (!urlRegex.hasMatch(value)) {
                    return 'Please enter a valid LinkedIn URL';
                  }
                }
                return null;
              },
              onChanged: (value) {
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(
                        linkedInUrl:
                            value.isEmpty ? null : _normalizeUrl(value),
                      ),
                    );
              },
              trailing:
                  cvData.linkedInUrl != null && cvData.linkedInUrl!.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.open_in_new, size: 20),
                          onPressed: () => _launchUrl(cvData.linkedInUrl!),
                          tooltip: 'Open LinkedIn',
                        )
                      : null,
            ),
            const SizedBox(height: 16),
            ShadInputFormField(
              id: 'githubUrl',
              label: const Text('GitHub URL'),
              placeholder: const Text('https://github.com/yourusername'),
              keyboardType: TextInputType.url,
              initialValue: cvData.githubUrl ?? '',
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
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(
                        githubUrl: value.isEmpty ? null : _normalizeUrl(value),
                      ),
                    );
              },
              trailing: cvData.githubUrl != null && cvData.githubUrl!.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.open_in_new, size: 20),
                      onPressed: () => _launchUrl(cvData.githubUrl!),
                      tooltip: 'Open GitHub',
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  /// Format phone number as user types
  String _formatPhoneNumber(String input) {
    // Remove all non-digit characters
    final digitsOnly = input.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.isEmpty) return '';

    // Format as +X (XXX) XXX-XXXX for US numbers
    if (digitsOnly.length <= 1) {
      return '+$digitsOnly';
    } else if (digitsOnly.length <= 4) {
      return '+${digitsOnly.substring(0, 1)} (${digitsOnly.substring(1)}';
    } else if (digitsOnly.length <= 7) {
      return '+${digitsOnly.substring(0, 1)} (${digitsOnly.substring(1, 4)}) ${digitsOnly.substring(4)}';
    } else {
      return '+${digitsOnly.substring(0, 1)} (${digitsOnly.substring(1, 4)}) ${digitsOnly.substring(4, 7)}-${digitsOnly.substring(7, digitsOnly.length > 11 ? 11 : digitsOnly.length)}';
    }
  }

  /// Normalize URL (add https:// if missing)
  String _normalizeUrl(String url) {
    if (url.isEmpty) return url;
    if (!url.startsWith('http://') && !url.startsWith('https://')) {
      return 'https://$url';
    }
    return url;
  }

  /// Launch URL in browser
  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}
