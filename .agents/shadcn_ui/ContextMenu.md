# Context Menu

Displays a menu to the user — such as a set of actions or functions — triggered by a mouse right-click.

## Minimal Example

```dart
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

ShadContextMenuRegion(
  constraints: const BoxConstraints(minWidth: 300),
  items: [
    const ShadContextMenuItem.inset(
      child: Text('Back'),
    ),
    const ShadContextMenuItem.inset(
      enabled: false,
      child: Text('Forward'),
    ),
    const ShadContextMenuItem.inset(
      child: Text('Reload'),
    ),
  ],
  child: Container(
    width: 300,
    height: 200,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      border: Border.all(color: theme.colorScheme.border),
      borderRadius: BorderRadius.circular(8),
    ),
    child: const Text('Right click here'),
  ),
)
```

