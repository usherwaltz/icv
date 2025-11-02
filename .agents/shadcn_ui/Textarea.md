# Textarea

Displays a form textarea or a component that looks like a textarea.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ConstrainedBox(
  constraints: const BoxConstraints(maxWidth: 400),
  child: const ShadTextarea(
    placeholder: Text('Type your message here'),
  ),
)
```

