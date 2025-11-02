import 'package:freezed_annotation/freezed_annotation.dart';

part 'education.freezed.dart';
part 'education.g.dart';

/// Represents a single education entry in a CV
@freezed
abstract class Education with _$Education {
  const factory Education({
    required String degree,
    required String institution,
    required String location,
    required DateTime startDate,
    DateTime? endDate,
    @Default(false) bool isCurrentlyEnrolled,
    String? fieldOfStudy,
    String? grade,
    String? description,
  }) = _Education;

  factory Education.fromJson(Map<String, Object?> json) =>
      _$EducationFromJson(json);
}
