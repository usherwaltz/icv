# Dialog

A modal dialog that interrupts the user.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadButton.outline(
  child: const Text('Edit Profile'),
  onPressed: () {
    showShadDialog(
      context: context,
      builder: (context) => ShadDialog(
        title: const Text('Edit Profile'),
        description: const Text(
            "Make changes to your profile here. Click save when you're done"),
        actions: const [ShadButton(child: Text('Save changes'))],
        child: Container(
          width: 375,
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Your form content here
            ],
          ),
        ),
      ),
    );
  },
)
```

## Alert Dialog

```dart
showShadDialog(
  context: context,
  builder: (context) => ShadDialog.alert(
    title: const Text('Are you absolutely sure?'),
    description: const Text(
      'This action cannot be undone. This will permanently delete your account and remove your data from our servers.',
    ),
    actions: [
      ShadButton.outline(
        child: const Text('Cancel'),
        onPressed: () => Navigator.of(context).pop(false),
      ),
      ShadButton(
        child: const Text('Continue'),
        onPressed: () => Navigator.of(context).pop(true),
      ),
    ],
  ),
)
```

