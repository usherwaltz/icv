# Toast

A succinct message that is displayed temporarily.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

ShadButton.outline(
  child: const Text('Show Toast'),
  onPressed: () {
    ShadToaster.of(context).show(
      const ShadToast(
        description: Text('Your message has been sent.'),
      ),
    );
  },
)
```

## With Title

```dart
ShadButton.outline(
  child: const Text('Show Toast'),
  onPressed: () {
    ShadToaster.of(context).show(
      const ShadToast(
        title: Text('Uh oh! Something went wrong'),
        description:
            Text('There was a problem with your request'),
      ),
    );
  },
)
```

## With Action

```dart
ShadButton.outline(
  child: const Text('Show Toast'),
  onPressed: () {
    ShadToaster.of(context).show(
      ShadToast(
        title: const Text('Uh oh! Something went wrong'),
        description:
            const Text('There was a problem with your request'),
        action: ShadButton.outline(
          child: const Text('Try again'),
          onPressed: () => ShadToaster.of(context).hide(),
        ),
      ),
    );
  },
)
```

