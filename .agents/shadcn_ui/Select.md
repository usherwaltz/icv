# Select

Displays a list of options for the user to pick from—triggered by a button.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

final fruits = {
  'apple': 'Apple',
  'banana': 'Banana',
  'blueberry': 'Blueberry',
  'grapes': 'Grapes',
  'pineapple': 'Pineapple',
};

ShadSelect<String>(
  placeholder: const Text('Select a fruit'),
  options: fruits.entries
      .map((e) => ShadOption(value: e.key, child: Text(e.value)))
      .toList(),
  selectedOptionBuilder: (context, value) => Text(fruits[value]!),
  onChanged: print,
)
```

