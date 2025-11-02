# Date Picker

A date picker component with range and presets.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

class SingleDatePicker extends StatelessWidget {
  const SingleDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: const ShadDatePicker(),
    );
  }
}
```

## Date Range Picker

```dart
class RangeDatePicker extends StatelessWidget {
  const RangeDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: const ShadDatePicker.range(),
    );
  }
}
```

