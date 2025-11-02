# Tooltip

A popup that displays information related to an element when the element receives keyboard focus or the mouse hovers over it.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadTooltip(
  builder: (context) => const Text('Add to library'),
  child: ShadButton.outline(
    child: const Text('Hover/Focus'),
    onPressed: () {},
  ),
)
```

