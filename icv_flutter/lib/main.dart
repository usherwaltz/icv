import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icv_client/icv_client.dart';
import 'package:icv_flutter/core/bloc/theme/theme_cubit.dart';
import 'package:icv_flutter/core/bloc/theme/theme_state.dart';
import 'package:icv_flutter/core/theme/app_theme.dart';
import 'package:icv_flutter/core/utils/app_router.dart';
import 'package:icv_flutter/data/local_storage/shared_preferences_local_storage_service.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

/// Sets up a global client object that can be used to talk to the server from
/// anywhere in our app. The client is generated from your server code
/// and is set up to connect to a Serverpod running on a local server on
/// the default port. You will need to modify this to connect to staging or
/// production servers.
/// In a larger app, you may want to use the dependency injection of your choice
/// instead of using a global client object. This is just a simple example.
late final Client client;

late String serverUrl;

void main() {
  // Suppress non-fatal Flutter web trackpad assertion errors
  // This is a known Flutter web limitation where trackpad events
  // can't be converted to PointerEvents, but it doesn't affect functionality
  if (kIsWeb) {
    final originalOnError = FlutterError.onError;
    FlutterError.onError = (FlutterErrorDetails details) {
      // Ignore the trackpad PointerDeviceKind assertion error on web
      // This happens when users use trackpad scrolling, but it's non-fatal
      final errorString = details.exception.toString();
      if (details.exception is AssertionError &&
          (errorString.contains('PointerDeviceKind.trackpad') ||
              details.summary
                  .toString()
                  .contains('PointerDeviceKind.trackpad'))) {
        // Silently ignore - this is a known Flutter web limitation
        return;
      }
      // For all other errors, use the original handler
      originalOnError?.call(details);
    };
  }

  // When you are running the app on a physical device, you need to set the
  // server URL to the IP address of your computer. You can find the IP
  // address by running `ipconfig` on Windows or `ifconfig` on Mac/Linux.
  // You can set the variable when running or building your app like this:
  // E.g. `flutter run --dart-define=SERVER_URL=https://api.example.com/`
  const serverUrlFromEnv = String.fromEnvironment('SERVER_URL');
  final serverUrl =
      serverUrlFromEnv.isEmpty ? 'http://$localhost:8080/' : serverUrlFromEnv;

  client = Client(serverUrl)
    ..connectivityMonitor = FlutterConnectivityMonitor();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create storage service instance
    final storageService = SharedPreferencesLocalStorageService();

    return BlocProvider(
      create: (context) => ThemeCubit(storageService),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          // Get theme configurations
          final materialTheme = AppThemeConfig.getMaterialTheme(
            appTheme: state.currentTheme,
            colorPalette: state.currentPalette,
          );
          final cupertinoTheme = AppThemeConfig.getCupertinoTheme(
            appTheme: state.currentTheme,
            colorPalette: state.currentPalette,
          );

          final router = AppRouter.createRouter();

          return ShadTheme(
            data: ShadThemeData(),
            child: MaterialApp.router(
              title: 'iCV',
              theme: materialTheme,
              // Also provide Cupertino theme for iOS-style widgets
              builder: (context, child) {
                return CupertinoTheme(
                  data: cupertinoTheme,
                  child: ShadToaster(
                    child: child!,
                  ),
                );
              },
              routerConfig: router,
            ),
          );
        },
      ),
    );
  }
}
