import 'package:icv_flutter/data/models/cv_data.dart';
import 'package:icv_flutter/data/models/work_experience.dart';
import 'package:icv_flutter/data/models/education.dart';
import 'package:icv_flutter/data/models/skill.dart';
import 'package:icv_flutter/data/models/language.dart';
import 'package:icv_flutter/data/models/certification.dart';
import 'package:icv_flutter/data/models/project.dart';

/// Sample CV data for the creator/publisher to display on the home page
/// This showcases a professional CV created with the tool
final creatorCvData = CvData(
  // Personal Information
  fullName: 'Alex Johnson',
  email: 'alex.johnson@example.com',
  phone: '+1 (555) 123-4567',
  address: 'San Francisco, CA, USA',
  linkedInUrl: 'https://linkedin.com/in/alexjohnson',
  githubUrl: 'https://github.com/alexjohnson',

  // Professional Summary
  professionalSummary:
      'Experienced Full-Stack Developer specializing in Flutter and Serverpod '
      'development. Passionate about building scalable mobile and web applications '
      'with a focus on user experience and modern software architecture. Strong '
      'background in cross-platform development, backend systems, and DevOps practices.',

  // Work Experience
  workExperience: [
    WorkExperience(
      jobTitle: 'Senior Flutter Developer',
      company: 'Tech Innovations Inc.',
      location: 'San Francisco, CA',
      startDate: DateTime(2022, 1),
      isCurrentPosition: true,
      description:
          'Leading mobile application development using Flutter, managing a team '
          'of 5 developers, and architecting scalable solutions for enterprise clients.',
      achievements: [
        'Architected and launched 3 major mobile applications serving 100K+ users',
        'Reduced app crash rate by 40% through improved error handling and testing',
        'Mentored junior developers and established Flutter best practices',
        'Improved app performance by 30% through optimization and code refactoring',
      ],
    ),
    WorkExperience(
      jobTitle: 'Full-Stack Developer',
      company: 'Digital Solutions Ltd.',
      location: 'Remote',
      startDate: DateTime(2020, 6),
      endDate: DateTime(2021, 12),
      isCurrentPosition: false,
      description:
          'Developed and maintained web and mobile applications using Flutter, '
          'React, and Node.js. Collaborated with cross-functional teams to deliver '
          'high-quality software solutions.',
      achievements: [
        'Built responsive web applications using React and TypeScript',
        'Developed RESTful APIs and GraphQL endpoints for backend services',
        'Implemented CI/CD pipelines reducing deployment time by 50%',
        'Contributed to open-source Flutter packages',
      ],
    ),
    WorkExperience(
      jobTitle: 'Software Engineer',
      company: 'StartupCo',
      location: 'New York, NY',
      startDate: DateTime(2018, 3),
      endDate: DateTime(2020, 5),
      isCurrentPosition: false,
      description:
          'Developed mobile applications for iOS and Android platforms. Worked '
          'closely with product managers and designers to implement new features.',
      achievements: [
        'Developed native iOS and Android apps using Swift and Kotlin',
        'Implemented real-time features using WebSocket and Firebase',
        'Wrote comprehensive unit and integration tests',
      ],
    ),
  ],

  // Education
  education: [
    Education(
      degree: 'Bachelor of Science in Computer Science',
      institution: 'University of California, Berkeley',
      location: 'Berkeley, CA',
      startDate: DateTime(2014, 9),
      endDate: DateTime(2018, 5),
      isCurrentlyEnrolled: false,
      fieldOfStudy: 'Computer Science',
      grade: 'Magna Cum Laude (GPA: 3.8/4.0)',
      description:
          'Focused on software engineering, algorithms, and distributed systems.',
    ),
  ],

  // Skills
  skills: [
    Skill(
        name: 'Flutter', category: 'Mobile Development', proficiency: 'Expert'),
    Skill(
        name: 'Dart', category: 'Programming Languages', proficiency: 'Expert'),
    Skill(
        name: 'Serverpod',
        category: 'Backend Development',
        proficiency: 'Advanced'),
    Skill(
        name: 'Python',
        category: 'Programming Languages',
        proficiency: 'Advanced'),
    Skill(
        name: 'JavaScript',
        category: 'Programming Languages',
        proficiency: 'Advanced'),
    Skill(
        name: 'TypeScript',
        category: 'Programming Languages',
        proficiency: 'Advanced'),
    Skill(name: 'React', category: 'Web Development', proficiency: 'Advanced'),
    Skill(
        name: 'Node.js',
        category: 'Backend Development',
        proficiency: 'Advanced'),
    Skill(name: 'PostgreSQL', category: 'Databases', proficiency: 'Advanced'),
    Skill(name: 'Docker', category: 'DevOps', proficiency: 'Intermediate'),
    Skill(name: 'Kubernetes', category: 'DevOps', proficiency: 'Intermediate'),
    Skill(name: 'Git', category: 'Version Control', proficiency: 'Expert'),
    Skill(name: 'CI/CD', category: 'DevOps', proficiency: 'Advanced'),
    Skill(
        name: 'RESTful APIs',
        category: 'Backend Development',
        proficiency: 'Expert'),
    Skill(
        name: 'GraphQL',
        category: 'Backend Development',
        proficiency: 'Advanced'),
  ],

  // Languages
  languages: [
    Language(name: 'English', proficiency: 'Native'),
    Language(name: 'Spanish', proficiency: 'Fluent'),
    Language(name: 'French', proficiency: 'Conversational'),
  ],

  // Certifications
  certifications: [
    Certification(
      name: 'Google Certified Professional - Cloud Architect',
      issuer: 'Google Cloud',
      issueDate: DateTime(2021, 8),
      expirationDate: DateTime(2024, 8),
      credentialId: 'GCP-CA-2021-XXXXX',
      credentialUrl: 'https://www.credential.net/gcp-ca-xxxxx',
    ),
    Certification(
      name: 'Flutter Development Certification',
      issuer: 'Google Developers',
      issueDate: DateTime(2020, 5),
      credentialUrl: 'https://developers.google.com/certification',
    ),
  ],

  // Projects
  projects: [
    Project(
      name: 'iCV - CV Creation Tool',
      description:
          'A full-stack CV creation application built with Flutter and Serverpod. '
          'Features real-time PDF preview, multiple templates, and cloud backup.',
      technologies: 'Flutter, Serverpod, Dart, PostgreSQL',
      githubUrl: 'https://github.com/example/icv',
      startDate: DateTime(2024, 1),
      isOngoing: true,
      highlights: [
        'Built responsive UI with shadcn_ui components',
        'Implemented real-time PDF generation and preview',
        'Designed scalable backend architecture with Serverpod',
        'Integrated authentication and cloud storage features',
      ],
    ),
    Project(
      name: 'Task Management App',
      description:
          'Cross-platform task management application with real-time synchronization '
          'and offline support.',
      technologies: 'Flutter, Firebase, BLoC Pattern',
      githubUrl: 'https://github.com/example/taskapp',
      startDate: DateTime(2023, 3),
      endDate: DateTime(2023, 9),
      isOngoing: false,
      highlights: [
        'Achieved 95% code coverage with unit and widget tests',
        'Implemented offline-first architecture',
        'Integrated Firebase Authentication and Cloud Firestore',
      ],
    ),
  ],
);
