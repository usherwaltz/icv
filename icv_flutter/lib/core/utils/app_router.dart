import 'package:go_router/go_router.dart';
import 'package:icv_flutter/features/home/home_page.dart';
import 'package:icv_flutter/features/cv_editor/cv_editor_page.dart';
import 'package:icv_flutter/features/auth/login_page.dart';
import 'package:icv_flutter/features/auth/register_page.dart';
import 'package:icv_flutter/features/auth/reset_password_page.dart';
import 'package:icv_flutter/features/settings/settings_page.dart';

/// Application router configuration using go_router
/// Defines all routes and navigation structure
class AppRouter {
  static GoRouter createRouter() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/cv-editor',
          name: 'cv-editor',
          builder: (context, state) => const CvEditorPage(),
        ),
        GoRoute(
          path: '/settings',
          name: 'settings',
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          path: '/auth',
          redirect: (context, state) => '/auth/login',
          routes: [
            GoRoute(
              path: 'login',
              name: 'auth-login',
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              path: 'register',
              name: 'auth-register',
              builder: (context, state) => const RegisterPage(),
            ),
            GoRoute(
              path: 'reset-password',
              name: 'auth-reset-password',
              builder: (context, state) => const ResetPasswordPage(),
            ),
          ],
        ),
      ],
      // TODO: Phase 12 - Add navigation guards/redirects based on authentication state
      // redirect: (context, state) {
      //   final authState = context.read<AuthCubit>().state;
      //   final isAuthenticated = authState is Authenticated;
      //   final isAuthRoute = state.matchedLocation.startsWith('/auth');
      //
      //   if (isAuthenticated && isAuthRoute) {
      //     return '/';
      //   }
      //   if (!isAuthenticated && !isAuthRoute && state.matchedLocation == '/settings') {
      //     return '/auth/login';
      //   }
      //   return null;
      // },
    );
  }
}
