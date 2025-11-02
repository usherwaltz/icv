# IconButton

Displays an icon button or a component that looks like a button with an icon.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadIconButton(
  onPressed: () => print('Primary'),
  icon: const Icon(LucideIcons.rocket),
)
```

## Other Variants

```dart
// Secondary
ShadIconButton.secondary(
  icon: const Icon(LucideIcons.rocket),
  onPressed: () => print('Secondary'),
)

// Destructive
ShadIconButton.destructive(
  icon: const Icon(LucideIcons.rocket),
  onPressed: () => print('Destructive'),
)

// Outline
ShadIconButton.outline(
  icon: const Icon(LucideIcons.rocket),
  onPressed: () => print('Outline'),
)

// Ghost
ShadIconButton.ghost(
  icon: const Icon(LucideIcons.rocket),
  onPressed: () => print('Ghost'),
)
```

