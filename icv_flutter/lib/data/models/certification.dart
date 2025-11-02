import 'package:freezed_annotation/freezed_annotation.dart';

part 'certification.freezed.dart';
part 'certification.g.dart';

/// Represents a certification entry in a CV
@freezed
abstract class Certification with _$Certification {
  const factory Certification({
    required String name,
    required String issuer,
    required DateTime issueDate,
    DateTime? expirationDate,
    String? credentialId,
    String? credentialUrl,
    String? description,
  }) = _Certification;

  factory Certification.fromJson(Map<String, Object?> json) =>
      _$CertificationFromJson(json);
}
