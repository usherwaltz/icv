import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nikolajovic/main.dart';

import '../../../blocs/blocs.dart';
import '../../../utils/utils.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = true;
  final GlobalKey _contentKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      setState(() => loading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PDFBloc, PDFState>(
      listenWhen: (previous, current) => previous.uiAction != current.uiAction,
      listener: (context, state) {
        switch (state.uiAction) {
          case BlocStateUIAction.success:
            _showSnackBar(context: context);
            break;

          case BlocStateUIAction.error:
            _showSnackBar(
              context: context,
              isError: true,
            );
            break;

          default:
            break;
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            _buildGhostWidget(),
            _buildContent(),
            _buildGeneratingOverlay(state.uiAction),
            _buildLoadingOverlay(),
          ],
        );
      },
    );
  }

  void _showSnackBar({
    required BuildContext context,
    bool isError = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      _buildSnackBar(isError: isError),
    );
  }

  _buildSnackBar({bool isError = false}) {
    return SnackBar(
      content: Center(
        child: Text(
          !isError ? strings.pdfSuccess : strings.genericErrorText,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onError,
              ),
        ),
      ),
      duration: const Duration(seconds: 2),
      backgroundColor:
          !isError ? Colors.green : Theme.of(context).colorScheme.error,
    );
  }

  Positioned _buildContent() {
    return const Positioned.fill(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: ContentWidget(),
      ),
    );
  }

  Widget _buildGhostWidget() {
    return _buildContentWidget(
      globalKey: _contentKey,
    );
  }

  Widget _buildContentWidget({
    GlobalKey? globalKey,
  }) {
    return ContentWidget(
      key: globalKey,
    );
  }

  Positioned _buildGeneratingOverlay(BlocStateUIAction uiAction) {
    return Positioned.fill(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: uiAction == BlocStateUIAction.inProgress
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
    );
  }

  Positioned _buildLoadingOverlay() {
    return Positioned.fill(
      child: AnimatedSwitcher(
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
        duration: const Duration(milliseconds: 500),
        child: loading
            ? Container(
                color: Colors.white,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : null,
      ),
    );
  }
}
