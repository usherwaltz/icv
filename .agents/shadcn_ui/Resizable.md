# Resizable

Resizable panel groups and layouts.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

class BasicResizable extends StatelessWidget {
  const BasicResizable({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: theme.radius,
          border: Border.all(
            color: theme.colorScheme.border,
          ),
        ),
        child: ClipRRect(
          borderRadius: theme.radius,
          child: ShadResizablePanelGroup(
            children: [
              ShadResizablePanel(
                id: 0,
                defaultSize: .5,
                minSize: .2,
                maxSize: .8,
                child: Center(
                  child: Text('One', style: theme.textTheme.large),
                ),
              ),
              ShadResizablePanel(
                id: 1,
                defaultSize: .5,
                child: Center(
                  child: Text('Two', style: theme.textTheme.large),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

