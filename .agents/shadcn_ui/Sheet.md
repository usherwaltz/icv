# Sheet

Extends the Dialog component to display content that complements the main content of the screen.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadButton.outline(
  child: const Text('Open'),
  onPressed: () => showShadSheet(
    side: ShadSheetSide.right,
    context: context,
    builder: (context) => ShadSheet(
      constraints: const BoxConstraints(maxWidth: 512),
      title: const Text('Edit Profile'),
      description: const Text(
          "Make changes to your profile here. Click save when you're done"),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Your content here
          ],
        ),
      ),
      actions: const [
        ShadButton(child: Text('Save changes')),
      ],
    ),
  ),
)
```

