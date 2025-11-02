import 'package:freezed_annotation/freezed_annotation.dart';
import 'work_experience.dart';
import 'education.dart';
import 'skill.dart';
import 'language.dart';
import 'certification.dart';
import 'project.dart';
import 'reference.dart';

part 'cv_data.freezed.dart';
part 'cv_data.g.dart';

/// Main CV data model containing all CV sections and form fields
@freezed
abstract class CvData with _$CvData {
  const factory CvData({
    // Personal Information
    String? fullName,
    String? email,
    String? phone,
    String? address,
    String? linkedInUrl,
    String? githubUrl,

    // Professional Summary
    String? professionalSummary,

    // Work Experience
    @Default(<WorkExperience>[]) List<WorkExperience> workExperience,

    // Education
    @Default(<Education>[]) List<Education> education,

    // Skills
    @Default(<Skill>[]) List<Skill> skills,

    // Languages
    @Default(<Language>[]) List<Language> languages,

    // Certifications
    @Default(<Certification>[]) List<Certification> certifications,

    // Projects/Portfolio
    @Default(<Project>[]) List<Project> projects,

    // References
    @Default(<Reference>[]) List<Reference> references,
  }) = _CvData;

  factory CvData.fromJson(Map<String, Object?> json) => _$CvDataFromJson(json);
}
