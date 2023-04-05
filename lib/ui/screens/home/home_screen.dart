import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nikolajovic/utils/utils.dart';
import 'package:universal_html/html.dart' as html;

import '../../../assets/assets.dart';
import '../../../blocs/blocs.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PDFBloc, PDFState>(
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
                child: ContentWidget(),
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
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Theme.of(context).colorScheme.inversePrimary,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1024),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.flutterLogo,
                        height: 40.0,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        'Powered by Flutter',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      html.window.open('https://github.com/usherwaltz/nikolajovic', "_blank");
                    },
                    child: const Text('Source Code'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const Padding(
        padding: EdgeInsets.all(8.0),
        child: FloatingActionButtonsWidget(),
      ),
    );
  }
}
