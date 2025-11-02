import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Registration page - create new account
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ShadCard(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SelectableText(
                          'Create Account',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        // TODO: Phase 12 - Implement registration form
                        const ShadInput(
                          placeholder: Text('Email'),
                        ),
                        const SizedBox(height: 16),
                        const ShadInput(
                          placeholder: Text('Password'),
                          obscureText: true,
                        ),
                        const SizedBox(height: 16),
                        const ShadInput(
                          placeholder: Text('Confirm Password'),
                          obscureText: true,
                        ),
                        const SizedBox(height: 16),
                        // TODO: Phase 12 - Add password strength indicator
                        // TODO: Phase 12 - Add privacy policy checkbox
                        const SizedBox(height: 24),
                        ShadButton(
                          onPressed: () {
                            // TODO: Phase 12 - Implement registration functionality
                            // After successful registration, redirect to CV editor
                            context.go('/cv-editor');
                          },
                          child: const Text('Register'),
                        ),
                        const SizedBox(height: 16),
                        // TODO: Phase 12 - Add social authentication buttons
                        const Divider(),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already have an account? '),
                            TextButton(
                              onPressed: () => context.push('/auth/login'),
                              child: const Text('Login'),
                            ),
                          ],
                        ),
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
