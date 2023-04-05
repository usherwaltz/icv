import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../blocs/blocs.dart';
import '../../widgets/widgets.dart';

class FloatingActionButtonsWidget extends StatelessWidget {
  const FloatingActionButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 1024,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            _DownloadPDFButton(),
            SizedBox(width: 16.0),
            _ChangeThemeButton(),
          ],
        ),
      ),
    );
  }
}

class _DownloadPDFButton extends StatefulWidget {
  const _DownloadPDFButton({Key? key}) : super(key: key);

  @override
  State<_DownloadPDFButton> createState() => _DownloadPDFButtonState();
}

class _DownloadPDFButtonState extends State<_DownloadPDFButton> {
  ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: const Text('Download PDF'),
      onPressed: () {
        context.read<PDFBloc>().add(
              PDFGenerated(
                widget: Theme(
                  data: Theme.of(context),
                  child: const ContentWidget(forceWidth: true),
                ),
              ),
            );
      },
      tooltip: 'Download PDF',
      icon: const Icon(Icons.download),
    );
  }
}

class _ChangeThemeButton extends StatelessWidget {
  const _ChangeThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ThemeBloc, ThemeState, ThemeMode>(
      selector: (state) => state.themeMode,
      builder: (context, themeMode) {
        return FloatingActionButton(
          tooltip: 'Change Theme',
          onPressed: () {
            context.read<ThemeBloc>().add(
                  ThemeChanged(
                    themeMode: themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
                  ),
                );
          },
          child: Icon(themeMode == ThemeMode.dark ? Icons.wb_sunny : Icons.nightlight_round),
        );
      },
    );
  }
}
