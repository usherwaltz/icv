import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icv_flutter/features/home/creator_cv_data.dart';
import 'package:icv_flutter/widgets/cv_preview/cv_preview_widget.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Home page - displays creator's CV and "Try It Out" button
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;

    // Determine if we should use compact layout for smaller screens
    final isMobile = screenWidth < 768;

    return Scaffold(
      appBar: AppBar(
        title: const Text('iCV'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16.0 : 24.0,
              vertical: isMobile ? 16.0 : 32.0,
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Hero Section
                    const SizedBox(height: 24),
                    SelectableText(
                      'Welcome to iCV',
                      style: theme.textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    SelectableText(
                      'Create professional CVs with ease',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),

                    // Creator's CV Display Section
                    SelectableText(
                      'Example CV',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SelectableText(
                      'This CV was created using iCV',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),

                    // CV Preview
                    CvPreviewWidget(
                      cvData: creatorCvData,
                      isCompact: isMobile,
                    ),

                    const SizedBox(height: 48),

                    // Call to Action
                    SelectableText(
                      'Ready to create your own professional CV?',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ShadButton(
                      onPressed: () => context.push('/cv-editor'),
                      size: ShadButtonSize.lg,
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Try It Out'),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, size: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 48),

                    // TODO: Phase 15 - Add footer component
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
