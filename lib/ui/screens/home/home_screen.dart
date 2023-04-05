import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/blocs.dart';
import '../../../utils/utils.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PDFBloc, PDFState>(
      listenWhen: (previous, current) => previous.uiAction != current.uiAction,
      listener: (context, state) {
        switch (state.uiAction) {
          case BlocStateUIAction.success:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Center(
                  child: Text(
                    'PDF Successfully Generated',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onError,
                        ),
                  ),
                ),
                duration: const Duration(seconds: 2),
                backgroundColor: Colors.green,
              ),
            );
            break;
          case BlocStateUIAction.error:
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Center(
                  child: Text(
                    'Oops, something went wrong',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onError,
                        ),
                  ),
                ),
                duration: const Duration(seconds: 2),
                backgroundColor: Theme.of(context).colorScheme.error,
              ),
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            const Positioned.fill(
              child: Scaffold(
                appBar: AppBarWidget(),
                body: ContentWidget(),
              ),
            ),
            Positioned.fill(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: state.uiAction == BlocStateUIAction.inProgress
                    ? Container(
                        color: Colors.black.withOpacity(0.8),
                        child: Center(
                          child: Text(
                            'Generating PDF . . .',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      )
                    : Container(),
              ),
            ),
          ],
        );
      },
    );
  }
}
