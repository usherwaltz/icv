import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Settings page - app settings, theme, account management
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShadCard(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          'Settings',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: 24),
                        // TODO: Phase 14 - Add theme selector (already implemented in Phase 5)
                        // TODO: Phase 14 - Add PDF theme selector
                        // TODO: Phase 14 - Add account section for authenticated users
                        // TODO: Phase 14 - Add logout button
                        // TODO: Phase 14 - Add delete account button
                        const SelectableText(
                            'Settings options will be implemented in Phase 14'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
