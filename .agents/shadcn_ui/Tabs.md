# Tabs

A set of layered sections of content—known as tab panels—that are displayed one at a time.

## Minimal Example

```dart
import 'package:shadcn_ui/shadcn_ui.dart';

class TabsExample extends StatelessWidget {
  const TabsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadTabs<String>(
      value: 'account',
      tabBarConstraints: const BoxConstraints(maxWidth: 400),
      contentConstraints: const BoxConstraints(maxWidth: 400),
      tabs: [
        ShadTab(
          value: 'account',
          content: ShadCard(
            title: const Text('Account'),
            description: const Text(
                "Make changes to your account here. Click save when you're done."),
            footer: const ShadButton(child: Text('Save changes')),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                ShadInputFormField(
                  label: const Text('Name'),
                  initialValue: 'Ale',
                ),
              ],
            ),
          ),
          child: const Text('Account'),
        ),
        ShadTab(
          value: 'password',
          content: ShadCard(
            title: const Text('Password'),
            description: const Text(
                "Change your password here. After saving, you'll be logged out."),
            footer: const ShadButton(child: Text('Save password')),
            child: Column(
              children: [
                const SizedBox(height: 16),
                ShadInputFormField(
                  label: const Text('Current password'),
                  obscureText: true,
                ),
              ],
            ),
          ),
          child: const Text('Password'),
        ),
      ],
    );
  }
}
```

