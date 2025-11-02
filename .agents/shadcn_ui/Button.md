# Button

Displays a button or a component that looks like a button.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadButton(
  child: const Text('Primary'),
  onPressed: () {},
)
```

## Other Variants

```dart
// Secondary
ShadButton.secondary(
  child: const Text('Secondary'),
  onPressed: () {},
)

// Destructive
ShadButton.destructive(
  child: const Text('Destructive'),
  onPressed: () {},
)

// Outline
ShadButton.outline(
  child: const Text('Outline'),
  onPressed: () {},
)

// Ghost
ShadButton.ghost(
  child: const Text('Ghost'),
  onPressed: () {},
)

// Link
ShadButton.link(
  child: const Text('Link'),
  onPressed: () {},
)
```

## With Icon

```dart
ShadButton(
  onPressed: () {},
  leading: const Icon(LucideIcons.mail),
  child: const Text('Login with Email'),
)
```

