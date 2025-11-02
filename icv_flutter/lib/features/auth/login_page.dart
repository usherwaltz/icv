import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Login page - email/password authentication
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
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
                          'Login',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        // TODO: Phase 12 - Implement login form
                        const ShadInput(
                          placeholder: Text('Email'),
                        ),
                        const SizedBox(height: 16),
                        const ShadInput(
                          placeholder: Text('Password'),
                          obscureText: true,
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () => context.push('/auth/reset-password'),
                          child: const Text('Forgot Password?'),
                        ),
                        const SizedBox(height: 24),
                        ShadButton(
                          onPressed: () {
                            // TODO: Phase 12 - Implement login functionality
                          },
                          child: const Text('Login'),
                        ),
                        const SizedBox(height: 16),
                        // TODO: Phase 12 - Add social authentication buttons
                        const Divider(),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account? "),
                            TextButton(
                              onPressed: () => context.push('/auth/register'),
                              child: const Text('Register'),
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
