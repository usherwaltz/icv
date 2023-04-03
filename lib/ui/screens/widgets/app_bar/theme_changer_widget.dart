import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';

class ThemeChangerWidget extends StatelessWidget {
  const ThemeChangerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ThemeBloc, ThemeState, ThemeMode>(
      selector: (state) => state.themeMode,
      builder: (context, themeMode) {
        return IconButton(
          icon: Icon(themeMode == ThemeMode.dark ? Icons.wb_sunny : Icons.nightlight_round),
          onPressed: () {
            context.read<ThemeBloc>().add(
                  ThemeChanged(
                    themeMode: themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
                  ),
                );
          },
        );
      },
    );
  }
}
