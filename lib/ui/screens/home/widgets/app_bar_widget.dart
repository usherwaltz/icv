import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/blocs.dart';
import '../../../../utils/utils.dart';
import 'widgets.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = context
        .select<ThemeBloc, ThemeMode>((ThemeBloc bloc) => bloc.state.themeMode);

    return Container(
      decoration: BoxDecoration(
        color: ColorUtils.getContainerColor(themeMode),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 2.0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      width: double.infinity,
      height: kToolbarHeight,
      child: _buildAppBarContent(context),
    );
  }

  Widget _buildAppBarContent(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1024),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: SizeUtils.pageMargins),
              child: Text(
                'Nikola Jović',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            Row(
              children: [
                _buildGeneratePDFButton(context),
                _buildChangeThemeButton(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGeneratePDFButton(BuildContext context) {
    return TextButton(
      child: const Icon(
        Icons.download,
        size: 26.0,
      ),
      onPressed: () {
        context.read<PDFBloc>().add(
              PDFGenerated(
                context: context,
                widget: BlocProvider<ThemeBloc>.value(
                  value: BlocProvider.of<ThemeBloc>(context),
                  child: const ContentWidget(),
                ),
              ),
            );
      },
    );
  }

  _buildChangeThemeButton(BuildContext context) {
    return BlocSelector<ThemeBloc, ThemeState, ThemeMode>(
      selector: (state) => state.themeMode,
      builder: (context, themeMode) {
        return TextButton(
          onPressed: () {
            context.read<ThemeBloc>().add(
                  ThemeChanged(
                    themeMode: themeMode == ThemeMode.dark
                        ? ThemeMode.light
                        : ThemeMode.dark,
                  ),
                );
          },
          child: Icon(
            themeMode == ThemeMode.dark
                ? Icons.wb_sunny
                : Icons.nightlight_round,
            size: 26.0,
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size(1024, kToolbarHeight);
}
