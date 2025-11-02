// This file demonstrates how to use the Freezed-based BLoC states in UI
// with pattern matching. Copy patterns from here into your actual widgets.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_flutter/core/bloc/cv/cv_cubit.dart';
import 'package:icv_flutter/core/bloc/cv/cv_state.dart';
import 'package:icv_flutter/core/bloc/theme/theme_cubit.dart';
import 'package:icv_flutter/core/bloc/theme/theme_state.dart';
import 'package:icv_flutter/core/bloc/auth/auth_cubit.dart';
import 'package:icv_flutter/core/bloc/auth/auth_state.dart';
import 'package:icv_flutter/data/models/app_theme.dart';

// Example 1: Using BlocBuilder with Pattern Matching
class CvBuilderExample extends StatelessWidget {
  const CvBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CvCubit, CvState>(
      builder: (context, state) {
        return switch (state) {
          CvInitial() => const Text('No CV loaded'),
          CvLoading() => const CircularProgressIndicator(),
          CvLoaded(:final data, :final hasUnsavedChanges) => Column(
              children: [
                Text('CV: ${data.fullName ?? "Untitled"}'),
                if (hasUnsavedChanges)
                  const Text('Unsaved changes',
                      style: TextStyle(color: Colors.orange)),
              ],
            ),
          CvSaved(:final data) => Text('Saved: ${data.fullName ?? "Untitled"}'),
          CvError(:final message, :final previousData) => Column(
              children: [
                Text('Error: $message'),
                if (previousData != null)
                  TextButton(
                    onPressed: () => context.read<CvCubit>().loadCv('previous'),
                    child: const Text('Retry'),
                  ),
              ],
            ),
        };
      },
    );
  }
}

// Example 2: Using BlocListener for side effects
class AuthListenerExample extends StatelessWidget {
  const AuthListenerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (userId, email, displayName) {
            // Navigate to home screen
            Navigator.pushReplacementNamed(context, '/home');
          },
          unauthenticated: () {
            // Navigate to login screen
            Navigator.pushReplacementNamed(context, '/login');
          },
          error: (message, _) {
            // Show error snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
          orElse: () {},
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

// Example 3: Using BlocSelector for specific state values
class ThemeSelectorExample extends StatelessWidget {
  const ThemeSelectorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ThemeCubit, ThemeState, bool>(
      selector: (state) => switch (state) {
        ThemeLoaded(:final theme) => switch (theme) {
            DarkTheme() => true,
            LightTheme() => false,
          },
        _ => false,
      },
      builder: (context, isDark) {
        return Icon(isDark ? Icons.dark_mode : Icons.light_mode);
      },
    );
  }
}

// Example 4: Using BlocConsumer (combines Builder + Listener)
class CvConsumerExample extends StatelessWidget {
  const CvConsumerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CvCubit, CvState>(
      listener: (context, state) {
        state.maybeWhen(
          saved: (_, __) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('CV saved successfully!')),
            );
          },
          error: (message, _, __) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: $message')),
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return switch (state) {
          CvLoaded(:final hasUnsavedChanges) when hasUnsavedChanges =>
            ElevatedButton(
              onPressed: () {
                // Save logic
              },
              child: const Text('Save Changes'),
            ),
          _ => const SizedBox.shrink(),
        };
      },
    );
  }
}

// Example 5: Using maybeWhen for partial pattern matching
class PartialMatchExample extends StatelessWidget {
  const PartialMatchExample({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CvCubit>().state;

    // maybeWhen allows handling only specific cases
    final isLoading = state.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    final hasData = state.maybeWhen(
      loaded: (_, __, ___) => true,
      saved: (_, __) => true,
      orElse: () => false,
    );

    return Column(
      children: [
        if (isLoading) const LinearProgressIndicator(),
        if (hasData) const Text('CV data available'),
      ],
    );
  }
}

// Example 6: Using whenOrNull for extracting values
class ValueExtractionExample extends StatelessWidget {
  const ValueExtractionExample({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthCubit>().state;

    // Extract user email if authenticated
    final userEmail = state.whenOrNull(
      authenticated: (userId, email, displayName) => email,
    );

    if (userEmail == null) {
      return const Text('Not logged in');
    }

    return Text('Logged in as: $userEmail');
  }
}
