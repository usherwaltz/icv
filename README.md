# iCV - Interactive CV Creation Tool

A modern CV creation tool built with Flutter and Serverpod that serves dual purposes:
1. **Personal Portfolio**: Showcase the creator's CV to recruiters
2. **Interactive CV Builder**: Allow users to create professional CVs using customizable templates

## Overview

iCV is a full-stack application that provides an intuitive interface for creating, editing, and exporting professional CVs. It features real-time PDF preview, multiple templates, theme customization, and optional cloud backup functionality.

## Features

- **Split-View Editor**: Real-time CV editing with live PDF preview
- **Multiple Templates**: Choose from professional CV templates
- **Theme Customization**: 
  - App themes with dark/light mode variants
  - PDF-specific theme options (black & white, mirror app theme, or custom PDF theme)
- **Optional Cloud Backup**: Save your CVs to the cloud (requires authentication)
- **Authentication Options**:
  - Email/Password authentication
  - Social authentication (Google Sign-In, Apple Sign-In)
  - Password reset and change functionality
- **Section Reordering**: Drag-and-drop functionality to customize CV section order
- **PDF Export**: Generate and download high-quality PDF CVs
- **Local Storage**: Works offline with local data storage (no account required)

## Tech Stack

- **Frontend**: Flutter (iOS, Android, Web)
- **Backend**: Serverpod (Dart-based backend framework)
- **UI Components**: shadcn_ui (Flutter port)
- **State Management**: Flutter Riverpod
- **PDF Generation**: Client-side PDF generation
- **Database**: PostgreSQL (via Serverpod, for cloud backup users)

## Project Structure

```
icv/
├── icv_flutter/        # Flutter frontend application
├── icv_server/         # Serverpod backend server
├── icv_client/         # Serverpod generated client
├── PRD.md              # Product Requirements Document
└── PLAN.md             # Implementation Plan
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.24.0)
- Dart SDK (>=3.5.0 <4.0.0)
- Serverpod CLI
- PostgreSQL (for local development)

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/usherwaltz/icv.git
   cd icv
   ```

2. **Set up Flutter frontend**
   ```bash
   cd icv_flutter
   flutter pub get
   ```

3. **Set up Serverpod backend**
   ```bash
   cd ../icv_server
   dart pub get
   serverpod generate
   ```

4. **Configure environment**
   - Review `ENVIRONMENT_SETUP.md` for detailed setup instructions
   - Configure database connection in `icv_server/config/development.yaml`
   - Set up SMTP and OAuth credentials as needed (for cloud backup features)

5. **Run the application**
   ```bash
   # Start the Serverpod server
   cd icv_server
   dart run bin/main.dart
   
   # In another terminal, run the Flutter app
   cd icv_flutter
   flutter run
   ```

## Development

### Code Quality

- All `.dart` files are automatically formatted using `dart format`
- Code analysis is performed using `dart analyze`
- See `AGENTS.md` for agent-specific guidelines

### Architecture

- **Clean Architecture**: Separation of concerns with feature-based organization
- **Repository Pattern**: Data layer abstraction
- **Riverpod State Management**: Reactive state management
- **Serverpod Backend**: Type-safe API communication

## Documentation

- `PRD.md` - Product Requirements Document
- `PLAN.md` - Implementation Plan and Progress
- `AGENTS.md` - Agent-specific instructions
- `ENVIRONMENT_SETUP.md` - Development environment setup guide

## License

This project is created as a portfolio piece and demonstration of Flutter/Serverpod development skills.

## Contact

For questions or feedback about this project, please open an issue on GitHub.

---

**Note**: This project is a complete rewrite and modernization of a previous CV showcase project. The old version has been preserved in the `icv_old` branch for reference.

