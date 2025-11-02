# RadioGroup

A set of checkable buttons—known as radio buttons—where no more than one of the buttons can be checked at a time.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadRadioGroup<String>(
  items: [
    ShadRadio(
      label: Text('Default'),
      value: 'default',
    ),
    ShadRadio(
      label: Text('Comfortable'),
      value: 'comfortable',
    ),
    ShadRadio(
      label: Text('Nothing'),
      value: 'nothing',
    ),
  ],
)
```

