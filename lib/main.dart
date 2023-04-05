import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nikolajovic/utils/utils.dart';

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
        BlocProvider<PDFBloc>(
          create: (context) => PDFBloc(),
        ),
      ],
      child: BlocSelector<ThemeBloc, ThemeState, ThemeMode>(
        selector: (state) => state.themeMode,
        builder: (context, themeMode) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nikola Jović',
          theme: ColorUtils.lightTheme,
          darkTheme: ColorUtils.darkTheme,
          themeMode: themeMode,
          home: const HomeScreen(title: 'Nikola Jović'),
        ),
      ),
    );
  }
}
