# Alert

Displays a callout for user attention.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadAlert(
  icon: Icon(LucideIcons.terminal),
  title: Text('Heads up!'),
  description:
      Text('You can add components to your app using the cli.'),
)
```

## Destructive Alert

```dart
ShadAlert.destructive(
  icon: Icon(LucideIcons.circleAlert),
  title: Text('Error'),
  description:
      Text('Your session has expired. Please log in again.'),
)
```

