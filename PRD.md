# Product Requirements Document (PRD)
## CV Creation Tool

**Version:** 1.0  
**Date:** 2025-01-27  
**Platforms:** Android, iOS, Web  
**Tech Stack:** Flutter, Serverpod

---

## 1. Overview

### 1.1 Product Vision
A CV creation tool that serves dual purposes:
1. **Personal Portfolio**: Showcase the creator's CV to recruiters
2. **Interactive Demo**: Allow technical personnel to create their own professional CV using customizable templates

### 1.2 Target Audience
- **Primary**: Recruiters reviewing the creator's CV
- **Secondary**: Technical personnel exploring the tool's capabilities

---

## 2. Core Features

### 2.1 Home Page
**Objective**: Display the creator's CV with a call-to-action

**Requirements**:
- Display the creator's CV prominently on the landing page
- Include a prominent "Try It Out" button that navigates to the CV creation page
- Ensure the CV is visually appealing and professionally formatted

**User Flow**: Visitor lands → Views creator's CV → Clicks "Try It Out" → Access CV creation tool (login optional for cloud backup)

---

### 2.2 Cloud Backup & Authentication System
**Objective**: Optional cloud backup with secure authentication for users who want to access their CV from any device

**Requirements**:
- **Cloud Backup Feature**:
  - Optional feature: Users can create and export CVs without account
  - Cloud backup toggle/option in CV creation interface
  - Clear messaging: "Enable cloud backup to access your CV from any device"
  - When cloud backup is enabled, user must authenticate

- **Email/Password Authentication** (Required when cloud backup enabled):
  - Registration form with email validation
  - Password requirements (minimum strength)
  - Login form with email and password
  - **Password Reset Functionality** (Required):
    - "Forgot Password" link on login page
    - Email-based password reset flow
    - Secure reset token generation and validation
    - Reset password form with confirmation
  - **Password Change Functionality** (Required):
    - Change password option in user settings/profile
    - Requires current password verification
    - New password requirements validation
    - Confirmation message after successful password change

- **Social Authentication** (Required when cloud backup enabled):
  - Google Sign-In integration
  - Apple Sign-In integration (iOS/macOS/Web)
  - OAuth flow handling

- **Privacy Policy**:
  - Privacy policy link displayed on login/register page
  - Explicit text stating: "By enabling cloud backup and logging in, you agree to our Privacy Policy"
  - Checkbox or acknowledgment required before proceeding with cloud backup
  - Privacy policy accessible via link (opens in modal or new page)

**User Flow**: 
1. Click "Try It Out" → Access CV creation tool directly (no authentication required)
2. User creates CV → Option to enable cloud backup appears
3. If cloud backup enabled:
   - Redirected to authentication page
   - Select authentication method → Complete login/registration
   - Accept privacy policy → Cloud backup activated
4. User can continue working on CV with cloud sync enabled

---

### 2.3 CV Creation Interface
**Objective**: Split-view interface for real-time CV editing and preview

**Requirements**:
- **Layout**: Split-view interface
  - Left side: Form with CV data fields
  - Right side: Live PDF preview showing populated data
  
- **Form Fields** (non-exhaustive, extensible):
  - Personal Information (name, email, phone, address, LinkedIn, GitHub)
  - Professional Summary
  - Work Experience (multiple entries)
  - Education (multiple entries)
  - Skills (categories and proficiency)
  - Languages
  - Certifications
  - Projects/Portfolio items
  - References (optional)

- **Section Reordering**:
  - Drag-and-drop functionality to reorder CV sections
  - Visual drag handle/indicator on each section
  - Real-time preview updates to reflect section order changes
  - Order preference saved with CV data
  - Smooth drag animations and visual feedback during reordering

- **Real-time Preview**:
  - PDF preview updates automatically as form fields are filled
  - Preview reflects selected template
  - Preview reflects selected PDF theme/color scheme
  - Preview reflects current section order

---

### 2.4 Template System
**Objective**: Provide multiple professional CV templates

**Requirements**:
- Multiple CV templates available (minimum 3-5 initial templates)
- Template selector button/UI element
- Template change triggers immediate PDF regeneration
- Templates support all form field data
- Each template maintains professional formatting standards
- Template preview thumbnails (optional enhancement)

**Templates Should Include**:
- Modern/Contemporary designs
- Traditional/Classic layouts
- Creative/Design-focused variants

---

### 2.5 Theme System
**Objective**: Customizable app and PDF themes with dark/light variants

**Requirements**:

- **App Themes**:
  - Dark mode / Light mode toggle
  - Multiple color palettes (each with dark/light variants)
  - Theme selector UI
  - Persistent theme preference (saved to user profile)

- **PDF Theme Options**:
  - **Black & White Mode**: Optimized for printing (grayscale)
  - **Mirror App Theme**: PDF uses the same theme as the app
  - **PDF-Specific Theme**: Separate theme selection for PDF only (independent of app theme)
  - Theme selector visible during PDF customization

- **Color Palette Requirements**:
  - All color palettes must have both dark and light variants
  - Palettes should be professionally designed and print-friendly
  - Accessibility considerations (contrast ratios)

---

### 2.6 PDF Generation & Export
**Objective**: Generate, save, and export professional PDF CVs

**Requirements**:

- **PDF Generation**:
  - Real-time PDF preview generation
  - High-quality PDF output suitable for printing
  - Print-friendly formats and layouts

- **Save Functionality**:
  - **Local Storage**: CV data saved locally (no authentication required)
  - **Cloud Backup**: CV data saved to database when cloud backup is enabled and user is authenticated
  - Auto-save draft functionality (optional enhancement)
  - Save button to persist changes
  - Confirmation when save is successful
  - Clear indication of save location (local vs. cloud)

- **Print/Download Controls**:
  - **Print Button**: Generates print-ready PDF and triggers print dialog
  - **Download Button**: Downloads PDF file to user's device
  - **Button States**:
    - **Disabled**: When there are unsaved changes to the CV
    - **Enabled**: After CV is successfully saved (locally or to cloud, depending on user's choice)
    - Visual indication of save state (e.g., "Unsaved changes" indicator)
    - For cloud backup users: buttons enabled after cloud save
    - For local-only users: buttons enabled after local save

- **PDF Output**:
  - Respects selected template
  - Respects selected PDF theme option (B&W, app theme, or PDF-specific theme)
  - Proper page breaks and formatting
  - File naming: `[User-Name]-CV.pdf` or similar

---

### 2.7 User Account Management
**Objective**: Allow cloud backup users to manage their accounts and data

**Requirements**:
- **Note**: Account management features only apply to users who have enabled cloud backup

- **Logout Functionality**:
  - Logout button accessible from user profile/settings area
  - Clears session data
  - Redirects to home page
  - Cloud backup disabled after logout (user can re-enable by logging back in)

- **Account Deletion**:
  - Delete account button in settings/profile
  - Confirmation dialog before deletion
  - **Data Deletion Requirements**:
    - Removes all user data from database
    - Removes all saved CVs associated with the account from cloud storage
    - Removes authentication records
    - Confirmation message after successful deletion
    - User can continue using the app locally after account deletion (local CVs remain)

---

### 2.8 Footer
**Objective**: Attribution and transparency

**Requirements**:
- Footer section with:
  - "Powered by Flutter" text/logo
  - Link to GitHub repository labeled "Source Code"
  - Footer visible on all pages

---

## 3. Technical Requirements

### 3.1 Platform Support
- **Android**: Full feature support
- **iOS**: Full feature support (including Apple Sign-In)
- **Web**: Full feature support with responsive design

### 3.2 Backend Requirements
- Serverpod backend for:
  - User authentication (email/password and social) - only required for cloud backup users
  - User data persistence - only for cloud backup users
  - CV data storage - only for cloud backup users
- **PDF Generation**: Client-side generation using Flutter packages
  - No server-side PDF generation required
  - Real-time PDF preview rendered in Flutter
  - Print/download functionality handled client-side

### 3.2.1 Frontend UI Framework
- **UI Component Library**: shadcn_ui (Flutter port of shadcn/ui)
  - Provides consistent, customizable, and accessible UI components
  - Used for all form inputs, buttons, dialogs, cards, and other UI elements
  - Ensures professional, clean interface design across all screens
  - Components are fully customizable and WCAG 2.1 AA compliant

### 3.3 Data Model
- **User Model** (Cloud backup users only): Authentication data, preferences (theme), cloud backup enabled flag
- **CV Model**: 
  - Template selection
  - Form data
  - PDF theme settings
  - Section order (array/sequence)
  - Save timestamp
  - Storage location (local vs. cloud)
- **Local Storage**: CV data stored locally on device (no user model required)
- **Cloud Storage**: One-to-Many relationship - User → CVs (cloud backup users can have multiple saved CVs in database)

### 3.4 Performance Requirements
- PDF preview updates within 500ms of form field changes
- Template switching completes within 2 seconds
- Save operation completes within 3 seconds
- Smooth scrolling and interactions on all platforms

---

## 4. User Experience Requirements

### 4.1 Visual Design
- Professional, clean interface
- Consistent design language across all screens
- Responsive layout for different screen sizes
- Accessible UI components (WCAG 2.1 AA minimum)

### 4.2 User Feedback
- Loading indicators for async operations
- Success/error messages for save operations
- Clear visual indication of unsaved changes
- Confirmation dialogs for destructive actions (delete account)

### 4.3 Navigation
- Intuitive navigation structure
- Breadcrumbs or back button where appropriate
- Clear call-to-action buttons

---

## 5. Security & Privacy

### 5.1 Data Security
- Secure password storage (hashed)
- Secure OAuth token handling
- HTTPS for all network communications
- Input validation and sanitization

### 5.2 Privacy Compliance
- Privacy policy clearly accessible
- User consent for data collection
- Clear data deletion process
- GDPR compliance considerations (if applicable)

---

## 6. Future Enhancements (Out of Scope for MVP)

- Multiple CV management (save multiple CV versions)
- CV sharing via unique URL
- Analytics dashboard for creator
- Additional template marketplace
- Export to other formats (Word, HTML)
- Collaborative editing
- ATS optimization suggestions
- Resume parsing from existing documents

---

## 7. Success Metrics

- User registration rate
- CV completion rate (users who create and save a CV)
- Time to create first CV
- User retention (returning users)
- Export/download rate

---

## 8. Assumptions & Dependencies

### 8.1 Assumptions
- Users have basic familiarity with CV creation concepts
- Internet connection required only for cloud backup authentication and cloud data saving
- Local-only usage does not require internet connection
- Users understand PDF format

### 8.2 Dependencies
- Flutter framework
- Serverpod backend framework (for cloud backup functionality only)
- **shadcn_ui**: UI component library for Flutter (shadcn/ui port) - provides buttons, forms, dialogs, cards, and other reusable components
- PDF generation library (e.g., `pdf` package, `printing` package) - client-side
- Local storage library (e.g., `shared_preferences`, `sqflite`, or `hive`) for local-only users
- Social authentication packages (Google Sign-In, Apple Sign-In) - for cloud backup users
- Database (via Serverpod) - for cloud backup users only

---

## 9. Open Questions / Decisions Needed

1. **CV Storage**: Multiple CVs per user (cloud backup) or single CV per user?
2. **Template Count**: Exact number of initial templates?
3. **Color Palettes**: Specific color palette designs to implement?
4. **Privacy Policy**: Content and hosting location for privacy policy?
5. **GitHub Repository**: Repository URL for source code link?
6. **Local Storage Implementation**: Specific local storage mechanism (shared_preferences, local database, etc.)?
7. **Section Default Order**: Default order for CV sections when user first creates a CV?

---

## 10. Glossary

- **CV**: Curriculum Vitae / Resume
- **PRD**: Product Requirements Document
- **OAuth**: Open Authorization protocol for social login
- **PDF**: Portable Document Format
- **ATS**: Applicant Tracking System (future enhancement)

---

**Document Status**: Draft v1.0  
**Last Updated**: 2025-01-27

