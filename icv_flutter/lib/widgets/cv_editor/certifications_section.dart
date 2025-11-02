import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/certification.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

/// Certifications section form widget
class CertificationsSection extends StatelessWidget {
  final CvData cvData;

  const CertificationsSection({
    super.key,
    required this.cvData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ShadCard(
        title: const Text('Certifications'),
        description: const Text('Add your professional certifications'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...cvData.certifications.asMap().entries.map((entry) {
              final index = entry.key;
              final certification = entry.value;
              return _CertificationItem(
                key: ValueKey('certification_$index'),
                certification: certification,
                index: index,
                onUpdate: (updated) {
                  final updatedList =
                      List<Certification>.from(cvData.certifications);
                  updatedList[index] = updated;
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(certifications: updatedList),
                      );
                },
                onDelete: () {
                  final updatedList =
                      List<Certification>.from(cvData.certifications);
                  updatedList.removeAt(index);
                  context.read<CvCubit>().updateCvData(
                        cvData.copyWith(certifications: updatedList),
                      );
                },
              );
            }).toList(),
            const SizedBox(height: 16),
            ShadButton.outline(
              onPressed: () {
                final newCertification = Certification(
                  name: '',
                  issuer: '',
                  issueDate: DateTime.now(),
                );
                final updatedList = [
                  ...cvData.certifications,
                  newCertification
                ];
                context.read<CvCubit>().updateCvData(
                      cvData.copyWith(certifications: updatedList),
                    );
              },
              leading: const Icon(Icons.add, size: 20),
              child: const Text('Add Certification'),
            ),
          ],
        ),
      ),
    );
  }
}

class _CertificationItem extends StatefulWidget {
  final Certification certification;
  final int index;
  final ValueChanged<Certification> onUpdate;
  final VoidCallback onDelete;

  const _CertificationItem({
    super.key,
    required this.certification,
    required this.index,
    required this.onUpdate,
    required this.onDelete,
  });

  @override
  State<_CertificationItem> createState() => _CertificationItemState();
}

class _CertificationItemState extends State<_CertificationItem> {
  late DateTime _issueDate;
  DateTime? _expirationDate;

  @override
  void initState() {
    super.initState();
    _issueDate = widget.certification.issueDate;
    _expirationDate = widget.certification.expirationDate;
  }

  Future<void> _selectDate(BuildContext context, bool isIssueDate) async {
    final picked = await showDatePicker(
      context: context,
      initialDate:
          isIssueDate ? _issueDate : (_expirationDate ?? DateTime.now()),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        if (isIssueDate) {
          _issueDate = picked;
        } else {
          _expirationDate = picked;
        }
      });
      _updateCertification();
    }
  }

  void _updateCertification() {
    widget.onUpdate(
      widget.certification.copyWith(
        issueDate: _issueDate,
        expirationDate: _expirationDate,
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
                'Certification ${widget.index + 1}',
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
            label: const Text('Certification Name'),
            placeholder: const Text('AWS Certified Solutions Architect'),
            initialValue: widget.certification.name,
            validator: (value) {
              if (value.isEmpty) {
                return 'Certification name is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.certification.copyWith(name: value),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'issuer_${widget.index}',
            label: const Text('Issuer'),
            placeholder: const Text('Amazon Web Services'),
            initialValue: widget.certification.issuer,
            validator: (value) {
              if (value.isEmpty) {
                return 'Issuer is required';
              }
              return null;
            },
            onChanged: (value) {
              widget.onUpdate(
                widget.certification.copyWith(issuer: value),
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
                    id: 'issueDate_${widget.index}',
                    label: const Text('Issue Date'),
                    placeholder: const Text('Select issue date'),
                    readOnly: true,
                    initialValue: DateFormat('yyyy-MM-dd').format(_issueDate),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: GestureDetector(
                  onTap: () => _selectDate(context, false),
                  child: ShadInputFormField(
                    id: 'expirationDate_${widget.index}',
                    label: const Text('Expiration Date (Optional)'),
                    placeholder: const Text('Select expiration date'),
                    readOnly: true,
                    initialValue: _expirationDate != null
                        ? DateFormat('yyyy-MM-dd').format(_expirationDate!)
                        : '',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'credentialId_${widget.index}',
            label: const Text('Credential ID'),
            placeholder: const Text('ABC123XYZ'),
            initialValue: widget.certification.credentialId ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.certification.copyWith(
                  credentialId: value.isEmpty ? null : value,
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          ShadInputFormField(
            id: 'credentialUrl_${widget.index}',
            label: const Text('Credential URL'),
            placeholder: const Text('https://...'),
            keyboardType: TextInputType.url,
            initialValue: widget.certification.credentialUrl ?? '',
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
                widget.certification.copyWith(
                  credentialUrl: normalizedUrl,
                ),
              );
            },
            trailing: widget.certification.credentialUrl != null &&
                    widget.certification.credentialUrl!.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.open_in_new, size: 20),
                    onPressed: () async {
                      final uri = Uri.parse(
                        widget.certification.credentialUrl!,
                      );
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
          ShadTextareaFormField(
            id: 'description_${widget.index}',
            label: const Text('Description'),
            placeholder:
                const Text('Additional details about the certification...'),
            initialValue: widget.certification.description ?? '',
            onChanged: (value) {
              widget.onUpdate(
                widget.certification.copyWith(
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
