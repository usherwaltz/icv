import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/blocs.dart';
import 'l10n/generated/app_localizations.dart';
import 'ui/screens/screens.dart';
import 'utils/utils.dart';

void main() {
  runApp(const MyApp());
}

late AppLocalizations strings;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // In this project there is no need for defining the 'MultiBlocProvider' widget.
    // Reason why I decided to use it here is because I wanted to showcase how I would use it in a bigger project.
    // For single purpose UI elements that would trigger a certain event, I would opt for the "BlocProvider" widget instead.
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider<PDFBloc>(
          create: (context) => PDFBloc(),
        ),
      ],
      child: BlocSelector<ThemeBloc, ThemeState, ThemeMode>(
        selector: (state) => state.themeMode,
        builder: (context, themeMode) {
          return MaterialApp(
            localizationsDelegates: [AppLocalizations.delegate],
            supportedLocales: [Locale('en')],
            debugShowCheckedModeBanner: false,
            title: 'Nikola Jović',
            theme: ColorUtils.lightTheme,
            darkTheme: ColorUtils.darkTheme,
            themeMode: themeMode,
            home: Builder(
              builder: (context) {
                strings = AppLocalizations.of(context)!;

                return const HomeScreen(title: 'Nikola Jović');
              },
            ),
          );
        },
      ),
    );
  }
}
