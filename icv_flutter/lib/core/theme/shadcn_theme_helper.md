# shadcn_ui Theme Integration Guide

This document explains how shadcn_ui components are integrated with the app's theme system.

## Setup

The shadcn_ui library has been configured in `main.dart` to work seamlessly with the app's theme system:

1. **ShadToaster**: Added to the widget tree to enable Toast/Sonner notifications
2. **Theme Integration**: shadcn_ui components automatically use Material theme colors from the app's `ThemeData`

## How It Works

shadcn_ui components use Flutter's `Theme.of(context)` to get theme colors, which means they automatically adapt to:
- Light/dark mode switching
- Color palette changes
- All theme customizations

## Component Usage

All shadcn_ui components are available via `import 'package:shadcn_ui/shadcn_ui.dart';`

### Examples

See `.agents/shadcn_ui/` directory for detailed examples of each component:

- **Button**: `ShadButton`, `ShadButton.secondary`, `ShadButton.outline`, etc.
- **Input**: `ShadInput` with placeholder and optional leading/trailing widgets
- **Card**: `ShadCard` with title, description, footer, and child
- **Dialog**: `ShadDialog` via `showShadDialog()`
- **Alert**: `ShadAlert`, `ShadAlert.destructive`
- **Toast**: `ShadToast` via `ShadToaster.of(context).show()`
- **Progress**: `ShadProgress` (determinate and indeterminate)
- **Form**: `ShadForm` with `ShadInputFormField` for validation
- And many more...

## Theme Customization

Since shadcn_ui uses Material theme colors, you can customize component appearance by modifying the `ThemeData` in `app_theme.dart`:

- `primary`: Used for primary buttons and accents
- `onPrimary`: Text color on primary-colored components
- `error`: Used for destructive actions and error states
- `surface`: Background for cards and elevated surfaces
- `onSurface`: Text color on surfaces
- And other ColorScheme colors

## Best Practices

1. Always use shadcn_ui components instead of Material widgets when possible
2. Components automatically respect theme changes - no manual color management needed
3. For custom styling, extend or wrap shadcn_ui components rather than creating new ones
4. Use the examples in `.agents/shadcn_ui/` as reference for component usage

## WCAG 2.1 AA Compliance

shadcn_ui components are compliant with WCAG 2.1 AA accessibility standards by default. The app's theme colors should maintain sufficient contrast ratios (ensured by the color palette definitions).

