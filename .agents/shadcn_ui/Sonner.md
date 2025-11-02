# Sonner

An opinionated toast component.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';
import 'dart:math';
import 'package:intl/intl.dart';

ShadButton.outline(
  child: const Text('Show Toast'),
  onPressed: () {
    final sonner = ShadSonner.of(context);
    final id = Random().nextInt(1000);
    final now = DateTime.now();
    sonner.show(
      ShadToast(
        id: id,
        title: const Text('Event has been created'),
        description: Text(DateFormat.yMd().add_jms().format(now)),
        action: ShadButton(
          child: const Text('Undo'),
          onPressed: () => sonner.hide(id),
        ),
      ),
    );
  },
)
```

