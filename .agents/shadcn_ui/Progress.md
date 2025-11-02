# Progress

Displays an indicator showing the completion progress of a task, typically displayed as a progress bar.

## Minimal Example (Determinate)

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ConstrainedBox(
  constraints: BoxConstraints(
    maxWidth: MediaQuery.sizeOf(context).width * 0.6,
  ),
  child: const ShadProgress(value: 0.5),
)
```

## Indeterminate

```dart
ConstrainedBox(
  constraints: BoxConstraints(
    maxWidth: MediaQuery.sizeOf(context).width * 0.6,
  ),
  child: const ShadProgress(),
)
```

