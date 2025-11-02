# Menubar

A visually persistent menu common in desktop applications that provides quick access to a consistent set of commands.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadMenubar(
  items: [
    ShadMenubarItem(
      items: [
        const ShadContextMenuItem(child: Text('New Tab')),
        const ShadContextMenuItem(child: Text('New Window')),
        const ShadContextMenuItem(
          enabled: false,
          child: Text('New Incognito Window'),
        ),
      ],
      child: const Text('File'),
    ),
    ShadMenubarItem(
      items: [
        const ShadContextMenuItem(child: Text('Undo')),
        const ShadContextMenuItem(child: Text('Redo')),
      ],
      child: const Text('Edit'),
    ),
  ],
)
```

