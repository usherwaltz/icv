import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Password reset page - request and reset password
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
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
                          'Reset Password',
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 24),
                        // TODO: Phase 12 - Implement password reset flow
                        // This page will handle both:
                        // 1. Request password reset (email input)
                        // 2. Reset password with token (new password input)
                        const ShadInput(
                          placeholder: Text('Email'),
                        ),
                        const SizedBox(height: 16),
                        ShadButton(
                          onPressed: () {
                            // TODO: Phase 12 - Implement password reset request
                            // Show success message
                          },
                          child: const Text('Send Reset Link'),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () => context.go('/auth/login'),
                          child: const Text('Back to Login'),
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
