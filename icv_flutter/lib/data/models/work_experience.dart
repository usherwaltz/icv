import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_experience.freezed.dart';
part 'work_experience.g.dart';

/// Represents a single work experience entry in a CV
@freezed
abstract class WorkExperience with _$WorkExperience {
  const factory WorkExperience({
    required String jobTitle,
    required String company,
    required String location,
    required DateTime startDate,
    DateTime? endDate,
    @Default(false) bool isCurrentPosition,
    String? description,
    @Default(<String>[]) List<String> achievements,
  }) = _WorkExperience;

  factory WorkExperience.fromJson(Map<String, Object?> json) =>
      _$WorkExperienceFromJson(json);
}
