# Card

Displays a card with header, content, and footer.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadCard(
  width: 350,
  title: Text('Create project', style: theme.textTheme.h4),
  description: const Text('Deploy your new project in one-click.'),
  footer: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ShadButton.outline(
        child: const Text('Cancel'),
        onPressed: () {},
      ),
      ShadButton(
        child: const Text('Deploy'),
        onPressed: () {},
      ),
    ],
  ),
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Name'),
        const SizedBox(height: 6),
        const ShadInput(placeholder: Text('Name of your project')),
      ],
    ),
  ),
)
```

