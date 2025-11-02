# Implementation Plan
## CV Creation Tool

**Version:** 1.0  
**Date:** 2025-01-27  
**Based on:** PRD.md v1.0

---

## Phase 1: Project Setup & Foundation

### 1.1 Development Environment Setup
- [x] Verify Flutter SDK version (>=3.24.0) - ✅ Flutter 3.35.7
- [x] Verify Dart SDK version (>=3.5.0 <4.0.0) - ✅ Dart 3.9.2
- [x] Verify Serverpod CLI is installed - ✅ Installed at ~/.pub-cache/bin/serverpod
- [x] Set up development database (PostgreSQL) - ✅ PostgreSQL running via Docker Compose on port 8090
- [x] Configure development environment variables - ✅ Environment variables documented, SMTP/OAuth placeholders added, setup guide created
- [x] Set up code formatting and linting rules - ✅ dart format and analyze configured
- [x] Initialize Git repository (if not already done) - ✅ Git initialized, old project moved to icv_old branch, new README created
- [ ] Set up development branch structure

### 1.2 Dependency Management
- [x] Review and update `icv_flutter/pubspec.yaml` with required packages:
  - UI components: `shadcn_ui: ^0.39.2` ✅
  - PDF generation: `pdf: ^3.11.0`, `printing: ^5.13.0` ✅
  - Local storage: `shared_preferences: ^2.3.0` ✅
  - State management: `flutter_riverpod: ^2.5.0` ✅
  - Form validation: `reactive_forms: ^17.0.0` ✅
  - Drag and drop: `reorderables: ^0.4.4` ✅
  - Theme: `flex_color_scheme: ^7.3.0` ✅
  - Navigation: `go_router: ^13.2.0` ✅
- [ ] Review and update `icv_server/pubspec.yaml` dependencies
- [x] Run `flutter pub get` in `icv_flutter/` ✅
- [ ] Run `serverpod generate` and `dart pub get` in `icv_server/`
- [x] Verify all dependencies resolve correctly ✅

### 1.3 Project Structure Setup
- [x] Create Flutter project structure:
  ```
  icv_flutter/lib/
    ├── main.dart ✅
    ├── core/
    │   ├── constants/ ✅
    │   ├── theme/ ✅
    │   ├── utils/ ✅
    │   └── services/ ✅
    ├── data/
    │   ├── models/ ✅
    │   ├── repositories/ ✅
    │   └── local_storage/ ✅
    ├── features/
    │   ├── home/ ✅
    │   ├── auth/ ✅
    │   ├── cv_editor/ ✅
    │   ├── templates/ ✅
    │   └── settings/ ✅
    └── widgets/
        ├── common/ ✅
        └── cv_preview/ ✅
  ```
- [ ] Create Serverpod project structure:
  ```
  icv_server/lib/src/
    ├── endpoints/
    │   ├── auth_endpoint.dart
    │   ├── user_endpoint.dart
    │   └── cv_endpoint.dart
    └── protocol/
      └── (auto-generated) ✅ (already exists)
  ```

---

## Phase 2: Backend Foundation (Serverpod)

### 2.1 Serverpod Configuration
- [ ] Configure Serverpod server settings in `config/development.yaml`
- [ ] Set up database connection (PostgreSQL)
- [ ] Configure email service for password reset (SMTP settings)
- [ ] Set up Serverpod authentication module
- [ ] Configure OAuth providers (Google, Apple) - placeholders initially
- [ ] Test server connectivity and database connection

### 2.2 Database Schema Design
- [ ] Design User table (for cloud backup users):
  - id (primary key)
  - email (unique)
  - password_hash (nullable for social auth users)
  - auth_provider (email/google/apple)
  - provider_id (for OAuth)
  - theme_preference (JSON)
  - cloud_backup_enabled (boolean)
  - privacy_policy_accepted_at (timestamp)
  - created_at
  - updated_at
- [ ] Design CV table:
  - id (primary key)
  - user_id (foreign key, nullable - for cloud backup users)
  - template_id
  - cv_data (JSON - all form fields)
  - pdf_theme_settings (JSON)
  - section_order (JSON array)
  - storage_location (enum: local/cloud)
  - save_timestamp
  - created_at
  - updated_at
- [ ] Design PasswordResetToken table:
  - id (primary key)
  - user_id (foreign key)
  - token (unique, hashed)
  - expires_at
  - used (boolean)
  - created_at

### 2.3 Serverpod Protocol Definitions
- [ ] Create User protocol class in `icv_server/lib/src/protocol/`
- [ ] Create CV protocol class
- [ ] Create PasswordResetToken protocol class
- [ ] Create request/response models for authentication
- [ ] Create request/response models for CV operations
- [ ] Run `serverpod generate` to generate client code
- [ ] Verify generated code in `icv_client/lib/src/protocol/`

---

## Phase 3: Data Models & State Management

### 3.1 CV Data Model (Frontend)
- [ ] Create `CvData` model class:
  - Personal Information (name, email, phone, address, LinkedIn, GitHub)
  - Professional Summary
  - Work Experience (list of WorkExperience items)
  - Education (list of Education items)
  - Skills (categories with proficiency)
  - Languages
  - Certifications
  - Projects/Portfolio items
  - References (optional)
- [ ] Create `WorkExperience` model
- [ ] Create `Education` model
- [ ] Create `Skill` model
- [ ] Create `Language` model
- [ ] Create `Certification` model
- [ ] Create `Project` model
- [ ] Create `Reference` model
- [ ] Add JSON serialization/deserialization methods
- [ ] Add validation methods

### 3.2 CV Metadata Model
- [ ] Create `CvMetadata` class:
  - template_id
  - pdf_theme_option (enum: blackWhite, mirrorApp, custom)
  - pdf_custom_theme (JSON, nullable)
  - section_order (list of section identifiers)
  - storage_location (enum: local/cloud)
  - save_timestamp
  - is_dirty (boolean, for unsaved changes tracking)

### 3.3 Theme Models
- [ ] Create `AppTheme` enum/class (dark/light)
- [ ] Create `ColorPalette` class with dark/light variants
- [ ] Create `PdfTheme` enum/class (blackWhite, mirrorApp, custom)
- [ ] Define default color palettes (minimum 3-5 palettes)
- [ ] Create theme configuration files

### 3.4 Template Models
- [ ] Create `Template` model:
  - id
  - name
  - description
  - category (modern/classic/creative)
  - preview_thumbnail_path (optional)
- [ ] Create template configuration system
- [ ] Define default templates (minimum 3-5)

### 3.5 State Management Setup
- [ ] Choose state management solution (Provider/Riverpod recommended)
- [ ] Create `CvState` provider/notifier for CV data
- [ ] Create `ThemeState` provider/notifier for app themes
- [ ] Create `AuthState` provider/notifier for authentication
- [ ] Create `TemplateState` provider/notifier for templates
- [ ] Implement state persistence where needed

---

## Phase 4: Local Storage System

### 4.1 Local Storage Service
- [ ] Create `LocalStorageService` abstract class/interface
- [ ] Choose implementation (shared_preferences for simple, hive for complex)
- [ ] Implement local storage for:
  - CV data (full CV JSON)
  - CV metadata
  - User preferences (theme, etc.)
  - App state (last viewed CV, etc.)
- [ ] Add error handling and migration logic
- [ ] Add clear storage functionality (for logout/account deletion)

### 4.2 Local CV Repository
- [ ] Create `LocalCvRepository` class
- [ ] Implement `saveCv(CvData, CvMetadata)` method
- [ ] Implement `loadCv()` method
- [ ] Implement `deleteCv()` method
- [ ] Implement `hasUnsavedChanges()` method
- [ ] Implement `markAsSaved()` method
- [ ] Add versioning support for future migrations

---

## Phase 5: UI Foundation & Theme System

### 5.1 Theme Implementation
- [ ] Create `app_theme.dart` with theme configurations
- [ ] Implement dark/light mode toggle
- [ ] Create multiple color palettes (each with dark/light variants)
- [ ] Implement theme selector UI component
- [ ] Create theme persistence (save to local storage)
- [ ] Apply theme throughout app (Material/Cupertino theming)
- [ ] Test theme switching and persistence

### 5.2 Design System Components
- [ ] Set up shadcn_ui library and theme configuration
- [ ] Use shadcn_ui components for all UI elements:
  - [ ] Button components (using `shadcn_ui` Button)
  - [ ] Form input components (using `shadcn_ui` Input, TextArea, Select)
  - [ ] Card components (using `shadcn_ui` Card)
  - [ ] Dialog components (using `shadcn_ui` Dialog, Sheet)
  - [ ] Loading indicators (using `shadcn_ui` Progress)
  - [ ] Error/success messages (using `shadcn_ui` Alert, Toast, Sonner)
  - [ ] Form validation components (using `shadcn_ui` Form with reactive_forms)
  - [ ] Checkbox, RadioGroup, Switch components
  - [ ] Date/Time pickers (using `shadcn_ui` Calendar, DatePicker, TimePicker)
  - [ ] Other UI elements as needed (Badge, Avatar, Separator, etc.)
- [ ] Customize shadcn_ui components to match app theme
- [ ] Ensure WCAG 2.1 AA compliance (shadcn_ui components are compliant by default)

### 5.3 Navigation Setup
- [ ] Set up routing/navigation (go_router or Navigator 2.0)
- [ ] Define route paths:
  - `/` - Home page
  - `/cv-editor` - CV creation interface
  - `/auth/login` - Login page
  - `/auth/register` - Registration page
  - `/auth/reset-password` - Password reset page
  - `/settings` - Settings page
- [ ] Implement navigation guards (if needed)
- [ ] Test navigation flow

---

## Phase 6: Home Page Implementation

### 6.1 Home Page UI
- [ ] Create home page widget structure
- [ ] Design creator's CV display section
- [ ] Implement "Try It Out" button
- [ ] Add responsive layout for mobile/tablet/desktop
- [ ] Style CV preview to match professional standards
- [ ] Add footer component (placeholder, will be implemented later)
- [ ] Test navigation to CV editor

### 6.2 Creator CV Content
- [ ] Create sample CV data for creator
- [ ] Design and format creator's CV layout
- [ ] Ensure professional appearance
- [ ] Test responsive behavior across screen sizes

---

## Phase 7: CV Editor - Core Interface

### 7.1 Split-View Layout
- [ ] Create split-view layout component
- [ ] Left side: Form container (scrollable)
- [ ] Right side: PDF preview container (scrollable)
- [ ] Implement responsive behavior:
  - Desktop: Side-by-side
  - Tablet: Side-by-side or stacked
  - Mobile: Stacked (form on top, preview below)
- [ ] Add layout toggle option (optional: collapsible panels)

### 7.2 Form Fields Implementation
- [ ] Create form section components:
  - Personal Information section
  - Professional Summary section
  - Work Experience section (with add/remove entries)
  - Education section (with add/remove entries)
  - Skills section (with categories and proficiency)
  - Languages section
  - Certifications section
  - Projects section
  - References section
- [ ] Implement form validation for each field
- [ ] Connect form fields to CV state
- [ ] Add input formatting (phone, email, URLs)
- [ ] Add rich text support for summary (optional)

### 7.3 Section Reordering
- [ ] Implement drag-and-drop functionality
- [ ] Add visual drag handles to each section
- [ ] Add drag animations and visual feedback
- [ ] Update section order in CV metadata
- [ ] Trigger preview update on reorder
- [ ] Save section order to CV data

---

## Phase 8: PDF Preview & Generation

### 8.1 PDF Preview Widget
- [ ] Integrate PDF generation library (pdf package)
- [ ] Create `PdfPreviewWidget` component
- [ ] Implement real-time PDF generation from CV data
- [ ] Connect to CV state for reactive updates
- [ ] Optimize performance (debounce updates if needed)
- [ ] Add loading indicator during PDF generation
- [ ] Handle errors gracefully

### 8.2 Template Rendering System
- [ ] Create `TemplateRenderer` abstract class
- [ ] Implement template rendering for each template:
  - Template 1: Modern/Contemporary
  - Template 2: Traditional/Classic
  - Template 3: Creative/Design-focused
  - Template 4: (Additional templates)
  - Template 5: (Additional templates)
- [ ] Each template must support all CV sections
- [ ] Implement section ordering logic in templates
- [ ] Add template-specific styling

### 8.3 PDF Theme Application
- [ ] Implement Black & White mode (grayscale conversion)
- [ ] Implement Mirror App Theme (use current app theme colors)
- [ ] Implement PDF-Specific Theme option
- [ ] Add theme selector UI in CV editor
- [ ] Apply theme to PDF generation
- [ ] Test all theme combinations

### 8.4 PDF Generation Optimization
- [ ] Optimize PDF generation performance (<500ms target)
- [ ] Implement caching for unchanged sections
- [ ] Add page break logic
- [ ] Ensure print-friendly formatting
- [ ] Test with various CV lengths

---

## Phase 9: Template System

### 9.1 Template Configuration
- [ ] Create template registry/configuration system
- [ ] Define template metadata (id, name, description, category)
- [ ] Create template preview thumbnails (optional)
- [ ] Add template persistence (save selected template to CV data)

### 9.2 Template Selector UI
- [ ] Create template selector UI component
- [ ] Display available templates (list or grid)
- [ ] Add template previews (thumbnails or descriptions)
- [ ] Implement template selection
- [ ] Trigger PDF regeneration on template change
- [ ] Save template selection to CV metadata

### 9.3 Template Switching
- [ ] Implement template switching logic
- [ ] Ensure all CV data transfers correctly between templates
- [ ] Handle template-specific fields gracefully
- [ ] Test template switching performance (<2 seconds)

---

## Phase 10: Save & Export Functionality

### 10.1 Save Functionality - Local
- [ ] Implement local save button
- [ ] Connect save to `LocalCvRepository`
- [ ] Add save confirmation message
- [ ] Update "is_dirty" flag on form changes
- [ ] Clear "is_dirty" flag after successful save
- [ ] Display save location indicator (local)
- [ ] Add error handling for save failures

### 10.2 Save Functionality - Cloud (Initial)
- [ ] Create `CloudCvRepository` class
- [ ] Implement `saveCv(CvData, CvMetadata)` method
- [ ] Implement API call to server endpoint
- [ ] Handle authentication requirements
- [ ] Add error handling (network errors, auth errors)
- [ ] Display save location indicator (cloud)
- [ ] Note: Full cloud backup integration comes in Phase 13

### 10.3 Unsaved Changes Tracking
- [ ] Implement change detection system
- [ ] Track form field changes
- [ ] Update "is_dirty" state
- [ ] Display "Unsaved changes" indicator
- [ ] Disable Print/Download buttons when unsaved
- [ ] Enable Print/Download buttons after save

### 10.4 Print Functionality
- [ ] Implement print button
- [ ] Generate print-ready PDF
- [ ] Trigger system print dialog
- [ ] Ensure button is only enabled after save
- [ ] Handle print errors gracefully
- [ ] Test on all platforms (Android, iOS, Web)

### 10.5 Download Functionality
- [ ] Implement download button
- [ ] Generate PDF file
- [ ] Set filename: `[User-Name]-CV.pdf`
- [ ] Trigger file download
- [ ] Ensure button is only enabled after save
- [ ] Handle download errors gracefully
- [ ] Test on all platforms

---

## Phase 11: Authentication System - Backend

### 11.1 Email/Password Authentication Endpoints
- [ ] Create `AuthEndpoint` in Serverpod
- [ ] Implement `registerUser(email, password)` endpoint:
  - Validate email format
  - Validate password strength
  - Hash password securely (bcrypt/argon2)
  - Check for existing user
  - Create user record
  - Return authentication token
- [ ] Implement `loginUser(email, password)` endpoint:
  - Verify credentials
  - Generate session token
  - Return user info and token
- [ ] Implement `logoutUser()` endpoint
- [ ] Add input validation and sanitization
- [ ] Add rate limiting for security

### 11.2 Password Reset Endpoints
- [ ] Implement `requestPasswordReset(email)` endpoint:
  - Validate email exists
  - Generate secure reset token
  - Store token with expiration (e.g., 1 hour)
  - Send email with reset link
- [ ] Implement `validateResetToken(token)` endpoint
- [ ] Implement `resetPassword(token, newPassword)` endpoint:
  - Validate token (exists, not expired, not used)
  - Hash new password
  - Update user password
  - Mark token as used
  - Return success status
- [ ] Set up email service integration (SMTP)

### 11.3 Password Change Endpoint
- [ ] Implement `changePassword(userId, currentPassword, newPassword)` endpoint:
  - Verify current password
  - Validate new password strength
  - Hash and update password
  - Return success status
- [ ] Add authentication check (require valid session)

### 11.4 OAuth Integration Setup (Backend)
- [ ] Configure Google OAuth in Serverpod
- [ ] Configure Apple OAuth in Serverpod
- [ ] Implement `authenticateWithGoogle(token)` endpoint
- [ ] Implement `authenticateWithApple(token)` endpoint
- [ ] Handle OAuth token validation
- [ ] Create or update user from OAuth data
- [ ] Return session token

### 11.5 User Endpoints
- [ ] Create `UserEndpoint` in Serverpod
- [ ] Implement `getUserProfile(userId)` endpoint
- [ ] Implement `updateUserProfile(userId, data)` endpoint
- [ ] Implement `deleteUser(userId)` endpoint:
  - Delete all user CVs
  - Delete authentication records
  - Delete user record
  - Return confirmation

---

## Phase 12: Authentication System - Frontend

### 12.1 Authentication Service
- [ ] Create `AuthService` class
- [ ] Implement `register(email, password)` method
- [ ] Implement `login(email, password)` method
- [ ] Implement `logout()` method
- [ ] Implement `requestPasswordReset(email)` method
- [ ] Implement `resetPassword(token, newPassword)` method
- [ ] Implement `changePassword(currentPassword, newPassword)` method
- [ ] Implement `isAuthenticated()` method
- [ ] Implement `getCurrentUser()` method
- [ ] Add token storage (secure storage for mobile, localStorage for web)
- [ ] Add token refresh logic (if using refresh tokens)

### 12.2 Social Authentication Integration (Frontend)
- [ ] Add `google_sign_in` package (Flutter)
- [ ] Add `sign_in_with_apple` package (Flutter)
- [ ] Implement Google Sign-In flow:
  - Configure Google Sign-In
  - Handle platform-specific setup (iOS/Android/Web)
  - Call authentication endpoint with token
  - Store session token
- [ ] Implement Apple Sign-In flow:
  - Configure Apple Sign-In
  - Handle platform-specific setup (iOS/Web)
  - Call authentication endpoint with token
  - Store session token
- [ ] Add error handling for OAuth flows

### 12.3 Login Page UI
- [ ] Create login page widget
- [ ] Design email/password form
- [ ] Add "Forgot Password" link
- [ ] Add social authentication buttons (Google, Apple)
- [ ] Add "Register" link/button
- [ ] Add privacy policy link and acknowledgment checkbox
- [ ] Add form validation
- [ ] Add loading states
- [ ] Add error message display
- [ ] Implement login functionality
- [ ] Test authentication flow

### 12.4 Registration Page UI
- [ ] Create registration page widget
- [ ] Design registration form (email, password, confirm password)
- [ ] Add password strength indicator
- [ ] Add social authentication buttons (Google, Apple)
- [ ] Add privacy policy link and acknowledgment checkbox
- [ ] Add form validation
- [ ] Add loading states
- [ ] Add error message display
- [ ] Implement registration functionality
- [ ] Redirect to CV editor after registration

### 12.5 Password Reset Flow
- [ ] Create password reset request page
- [ ] Create reset password page (with token)
- [ ] Implement "Forgot Password" flow:
  - User enters email
  - System sends reset email
  - User clicks link in email
  - User enters new password
  - System validates and resets password
- [ ] Add success/error messages
- [ ] Test email delivery

### 12.6 Privacy Policy
- [ ] Create privacy policy content/page
- [ ] Add privacy policy link to login/register pages
- [ ] Implement privacy policy modal/page viewer
- [ ] Add acknowledgment checkbox on auth pages
- [ ] Store privacy policy acceptance timestamp (backend)

---

## Phase 13: Cloud Backup Integration

### 13.1 Cloud Backup UI Components
- [ ] Add cloud backup toggle/option in CV editor
- [ ] Add clear messaging: "Enable cloud backup to access your CV from any device"
- [ ] Implement cloud backup enable flow:
  - Show toggle/button
  - If enabled and not authenticated, redirect to auth
  - After authentication, enable cloud backup
  - Update UI to show cloud backup status
- [ ] Add cloud backup status indicator

### 13.2 Cloud CV Repository Implementation
- [ ] Complete `CloudCvRepository` implementation
- [ ] Implement `saveCv(CvData, CvMetadata)` with API call
- [ ] Implement `loadCv()` method
- [ ] Implement `listCvs()` method (for future multiple CV support)
- [ ] Implement `deleteCv(cvId)` method
- [ ] Add sync logic (compare local vs cloud timestamps)
- [ ] Handle offline scenarios gracefully

### 13.3 CV Editor Cloud Integration
- [ ] Update CV editor to use cloud repository when cloud backup enabled
- [ ] Implement save to cloud functionality
- [ ] Add cloud sync indicator
- [ ] Handle save conflicts (local vs cloud)
- [ ] Add error handling for network issues
- [ ] Test save/load from cloud

### 13.4 Cloud Backup State Management
- [ ] Update auth state to track cloud backup status
- [ ] Persist cloud backup preference
- [ ] Handle logout (disable cloud backup)
- [ ] Handle account deletion (clean up cloud data)

---

## Phase 14: Settings & Account Management

### 14.1 Settings Page
- [ ] Create settings page UI
- [ ] Add theme selector (app theme)
- [ ] Add PDF theme selector
- [ ] Add account section (for authenticated users)
- [ ] Add logout button (for authenticated users)
- [ ] Add delete account button (for authenticated users)
- [ ] Implement settings persistence

### 14.2 Password Change Feature
- [ ] Create change password page/modal
- [ ] Add current password field
- [ ] Add new password field with strength indicator
- [ ] Add confirm password field
- [ ] Implement password change functionality
- [ ] Add success/error feedback
- [ ] Redirect after successful change

### 14.3 Logout Functionality
- [ ] Implement logout button handler
- [ ] Clear session data and tokens
- [ ] Disable cloud backup
- [ ] Clear cloud-related state
- [ ] Redirect to home page
- [ ] Keep local CV data intact

### 14.4 Account Deletion
- [ ] Create account deletion confirmation dialog
- [ ] Implement delete account functionality:
  - Call delete endpoint
  - Clear local auth data
  - Keep local CVs (as per requirements)
  - Disable cloud backup
  - Show success message
  - Redirect to home page
- [ ] Add error handling
- [ ] Test account deletion flow

---

## Phase 15: Footer Implementation

### 15.1 Footer Component
- [ ] Create footer widget
- [ ] Add "Powered by Flutter" text/logo
- [ ] Add "Source Code" link to GitHub repository
- [ ] Style footer consistently
- [ ] Make footer visible on all pages
- [ ] Ensure footer is responsive
- [ ] Add GitHub repository URL (from open questions resolution)

---

## Phase 16: Testing & Quality Assurance

### 16.1 Unit Tests
- [ ] Write tests for CV data models
- [ ] Write tests for local storage repository
- [ ] Write tests for cloud repository
- [ ] Write tests for authentication service
- [ ] Write tests for PDF generation logic
- [ ] Write tests for template rendering
- [ ] Achieve minimum 70% code coverage

### 16.2 Widget Tests
- [ ] Write tests for form components
- [ ] Write tests for CV editor layout
- [ ] Write tests for authentication pages
- [ ] Write tests for settings page
- [ ] Test navigation flows

### 16.3 Integration Tests
- [ ] Write tests for complete CV creation flow
- [ ] Write tests for authentication flows
- [ ] Write tests for save/load functionality
- [ ] Write tests for template switching
- [ ] Write tests for theme switching

### 16.4 Manual Testing
- [ ] Test on Android devices (various screen sizes)
- [ ] Test on iOS devices (various screen sizes)
- [ ] Test on Web (Chrome, Firefox, Safari, Edge)
- [ ] Test responsive layouts
- [ ] Test dark/light themes
- [ ] Test all user flows from PRD
- [ ] Test error scenarios (network errors, validation errors)
- [ ] Test performance requirements:
  - PDF preview updates <500ms
  - Template switching <2 seconds
  - Save operation <3 seconds

### 16.5 Accessibility Testing
- [ ] Test with screen readers
- [ ] Verify WCAG 2.1 AA compliance
- [ ] Test keyboard navigation
- [ ] Test color contrast ratios
- [ ] Test on different text sizes

---

## Phase 17: Performance Optimization

### 17.1 Performance Analysis
- [ ] Profile PDF generation performance
- [ ] Profile form rendering performance
- [ ] Profile state management performance
- [ ] Identify bottlenecks

### 17.2 Optimizations
- [ ] Optimize PDF generation (caching, lazy loading)
- [ ] Optimize form rendering (use keys, const constructors)
- [ ] Optimize state updates (debouncing where appropriate)
- [ ] Optimize image loading (if thumbnails used)
- [ ] Implement lazy loading for long lists
- [ ] Optimize network requests (batch if possible)

### 17.3 Performance Verification
- [ ] Verify PDF preview updates <500ms
- [ ] Verify template switching <2 seconds
- [ ] Verify save operation <3 seconds
- [ ] Test on lower-end devices
- [ ] Monitor memory usage

---

## Phase 18: Security Hardening

### 18.1 Security Audit
- [ ] Review authentication security
- [ ] Review password storage (hashing)
- [ ] Review token handling
- [ ] Review input validation
- [ ] Review OAuth implementation
- [ ] Review API endpoint security

### 18.2 Security Fixes
- [ ] Implement HTTPS for all network calls
- [ ] Add rate limiting to authentication endpoints
- [ ] Implement CSRF protection (if needed)
- [ ] Sanitize all user inputs
- [ ] Add security headers (if web)
- [ ] Secure token storage (use secure storage)

### 18.3 Privacy Compliance
- [ ] Finalize privacy policy content
- [ ] Ensure GDPR compliance (if applicable)
- [ ] Verify data deletion process
- [ ] Verify user consent collection

---

## Phase 19: Deployment Preparation

### 19.1 Configuration Management
- [ ] Set up production configuration files
- [ ] Configure production database
- [ ] Set up production email service
- [ ] Configure OAuth credentials for production
- [ ] Set up environment variables
- [ ] Configure Serverpod for production

### 19.2 Build Configuration
- [ ] Configure Android build (signing, ProGuard)
- [ ] Configure iOS build (signing, App Store)
- [ ] Configure Web build (optimization)
- [ ] Set up CI/CD pipeline (optional)
- [ ] Create build scripts

### 19.3 Pre-Deployment Checklist
- [ ] Verify all features work in production config
- [ ] Test production database migrations
- [ ] Verify email service works
- [ ] Verify OAuth works in production
- [ ] Update version numbers
- [ ] Create release notes

---

## Phase 20: Documentation & Launch

### 20.1 Code Documentation
- [ ] Add code comments for complex logic
- [ ] Document API endpoints
- [ ] Document data models
- [ ] Create architecture documentation

### 20.2 User Documentation
- [ ] Create user guide (optional)
- [ ] Add in-app tooltips/help (optional)
- [ ] Document privacy policy (finalize)

### 20.3 Launch Preparation
- [ ] Resolve all open questions from PRD Section 9
- [ ] Final testing pass
- [ ] Create launch announcement
- [ ] Prepare support channels

---

## Implementation Checklist Summary

### Phase 1: Project Setup & Foundation
- [x] Development environment setup complete (SDK versions verified, Serverpod CLI found, formatting configured)
- [x] All dependencies installed and working (Flutter dependencies added and resolved)
- [x] Project structure created (Flutter directory structure complete)

### Phase 2: Backend Foundation
- [ ] Serverpod configured
- [ ] Database schema designed and migrated
- [ ] Protocol definitions created

### Phase 3: Data Models
- [ ] All data models created and tested
- [ ] State management implemented

### Phase 4: Local Storage
- [ ] Local storage service implemented
- [ ] Local CV repository working

### Phase 5: UI Foundation
- [ ] Theme system implemented
- [ ] Design system components created
- [ ] Navigation set up

### Phase 6: Home Page
- [ ] Home page implemented and tested

### Phase 7: CV Editor Core
- [ ] Split-view layout working
- [ ] All form fields implemented
- [ ] Section reordering working

### Phase 8: PDF Generation
- [ ] PDF preview widget working
- [ ] Templates render correctly
- [ ] Theme system applied to PDFs

### Phase 9: Template System
- [ ] Template selector implemented
- [ ] Template switching working

### Phase 10: Save & Export
- [ ] Local save working
- [ ] Cloud save working (basic)
- [ ] Print functionality working
- [ ] Download functionality working
- [ ] Unsaved changes tracking working

### Phase 11: Authentication Backend
- [ ] Email/password auth endpoints working
- [ ] Password reset working
- [ ] Password change working
- [ ] OAuth configured

### Phase 12: Authentication Frontend
- [ ] Login page working
- [ ] Registration page working
- [ ] Password reset flow working
- [ ] Social auth working
- [ ] Privacy policy integrated

### Phase 13: Cloud Backup
- [ ] Cloud backup toggle implemented
- [ ] Cloud repository fully implemented
- [ ] CV editor cloud integration working

### Phase 14: Settings & Account Management
- [ ] Settings page implemented
- [ ] Password change working
- [ ] Logout working
- [ ] Account deletion working

### Phase 15: Footer
- [ ] Footer implemented on all pages

### Phase 16: Testing
- [ ] Unit tests written and passing
- [ ] Widget tests written and passing
- [ ] Integration tests written and passing
- [ ] Manual testing complete
- [ ] Accessibility verified

### Phase 17: Performance
- [ ] Performance optimizations applied
- [ ] Performance requirements met

### Phase 18: Security
- [ ] Security audit complete
- [ ] Security fixes applied
- [ ] Privacy compliance verified

### Phase 19: Deployment
- [ ] Production configuration ready
- [ ] Builds configured
- [ ] Pre-deployment checklist complete

### Phase 20: Documentation & Launch
- [ ] Documentation complete
- [ ] Launch ready

---

## Notes & Decisions

### Open Questions from PRD (to resolve early):
1. **CV Storage**: Multiple CVs per user (cloud backup) or single CV per user?
   - *Decision needed before Phase 13*
2. **Template Count**: Exact number of initial templates?
   - *Decision needed before Phase 8*
3. **Color Palettes**: Specific color palette designs to implement?
   - *Decision needed before Phase 5*
4. **Privacy Policy**: Content and hosting location?
   - *Decision needed before Phase 12*
5. **GitHub Repository**: Repository URL for source code link?
   - *Decision needed before Phase 15*
6. **Local Storage Implementation**: Specific mechanism (shared_preferences, hive, etc.)?
   - *Decision needed before Phase 4*
7. **Section Default Order**: Default order for CV sections?
   - *Decision needed before Phase 7*

### Recommended Implementation Order:
- Phases 1-10 can be implemented in parallel where possible
- Phase 11-12 (Authentication) should be completed before Phase 13 (Cloud Backup)
- Phase 13 depends on Phases 11-12 and Phase 10
- Phases 16-20 are sequential and come after core features

### Estimated Timeline:
- **Phases 1-10**: Core functionality (4-6 weeks)
- **Phases 11-15**: Authentication and features (2-3 weeks)
- **Phases 16-20**: Polish, testing, deployment (2-3 weeks)
- **Total MVP**: 8-12 weeks (depending on team size and experience)

---

**Document Status**: Implementation Plan v1.0  
**Last Updated**: 2025-01-27  
**Next Review**: After each phase completion

