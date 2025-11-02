# Time Picker

A time picker component.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

class PrimaryTimePicker extends StatelessWidget {
  const PrimaryTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: const ShadTimePicker(
        trailing: Padding(
          padding: EdgeInsets.only(left: 8, top: 14),
          child: Icon(LucideIcons.clock4),
        ),
      ),
    );
  }
}
```

