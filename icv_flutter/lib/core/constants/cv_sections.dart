/// Constants for CV section identifiers
/// Used to maintain section order in CV metadata
class CvSections {
  // Section identifiers - must be unique strings
  static const String personalInformation = 'personal_information';
  static const String professionalSummary = 'professional_summary';
  static const String workExperience = 'work_experience';
  static const String education = 'education';
  static const String skills = 'skills';
  static const String languages = 'languages';
  static const String certifications = 'certifications';
  static const String projects = 'projects';
  static const String references = 'references';

  /// Default section order (used when no custom order is set)
  static const List<String> defaultOrder = [
    personalInformation,
    professionalSummary,
    workExperience,
    education,
    skills,
    languages,
    certifications,
    projects,
    references,
  ];

  /// Get display name for a section identifier
  static String getDisplayName(String sectionId) {
    switch (sectionId) {
      case personalInformation:
        return 'Personal Information';
      case professionalSummary:
        return 'Professional Summary';
      case workExperience:
        return 'Work Experience';
      case education:
        return 'Education';
      case skills:
        return 'Skills';
      case languages:
        return 'Languages';
      case certifications:
        return 'Certifications';
      case projects:
        return 'Projects';
      case references:
        return 'References';
      default:
        return sectionId;
    }
  }

  /// Get ordered list of sections based on metadata sectionOrder
  /// Returns sections in the specified order, or default order if empty
  static List<String> getOrderedSections(List<String>? sectionOrder) {
    if (sectionOrder == null || sectionOrder.isEmpty) {
      return List.from(defaultOrder);
    }

    // Start with the specified order
    final ordered = List<String>.from(sectionOrder);

    // Add any missing sections from default order at the end
    for (final section in defaultOrder) {
      if (!ordered.contains(section)) {
        ordered.add(section);
      }
    }

    // Remove any invalid sections
    ordered.removeWhere((section) => !defaultOrder.contains(section));

    return ordered;
  }
}
