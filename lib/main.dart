import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/blocs.dart';
import 'ui/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: BlocSelector<ThemeBloc, ThemeState, ThemeMode>(
        selector: (state) => state.themeMode,
        builder: (context, themeMode) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: FlexThemeData.light(
            scheme: FlexScheme.mandyRed,
            useMaterial3: true,
          ),
          darkTheme: FlexThemeData.dark(
            scheme: FlexScheme.mandyRed,
            useMaterial3: true,
          ),
          themeMode: themeMode,
          home: const HomeScreen(title: 'Nikola Jović'),
        ),
      ),
    );
  }
}
