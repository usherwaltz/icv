# Popover

Displays rich content in a portal, triggered by a button.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

class PopoverPage extends StatefulWidget {
  const PopoverPage({super.key});

  @override
  State<PopoverPage> createState() => _PopoverPageState();
}

class _PopoverPageState extends State<PopoverPage> {
  final popoverController = ShadPopoverController();

  @override
  void dispose() {
    popoverController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ShadPopover(
      controller: popoverController,
      popover: (context) => SizedBox(
        width: 288,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Dimensions'),
            Text('Set the dimensions for the layer.'),
          ],
        ),
      ),
      child: ShadButton.outline(
        onPressed: popoverController.toggle,
        child: const Text('Open popover'),
      ),
    );
  }
}
```

