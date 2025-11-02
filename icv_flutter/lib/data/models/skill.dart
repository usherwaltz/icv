import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill.freezed.dart';
part 'skill.g.dart';

/// Represents a skill with its category and proficiency level
@freezed
abstract class Skill with _$Skill {
  const factory Skill({
    required String name,
    String? category,
    String?
        proficiency, // e.g., "Beginner", "Intermediate", "Advanced", "Expert"
  }) = _Skill;

  factory Skill.fromJson(Map<String, Object?> json) => _$SkillFromJson(json);
}
