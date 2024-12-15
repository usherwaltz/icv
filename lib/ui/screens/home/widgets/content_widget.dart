import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../assets/assets.dart';
import '../../../../blocs/blocs.dart';
import '../../../../utils/utils.dart';
import 'widgets.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    super.key,
    this.forceWidth = false,
    this.globalKey,
  });

  final GlobalKey? globalKey;
  final bool forceWidth;

  @override
  Widget build(BuildContext context) {
    final themeMode = context
        .select<ThemeBloc, ThemeMode>((ThemeBloc bloc) => bloc.state.themeMode);

    return Theme(
      data: forceWidth ? ColorUtils.lightTheme : Theme.of(context),
      child: ScrollConfiguration(
        // Hiding scrollbar when generating PDF file
        behavior: !forceWidth
            ? ScrollConfiguration.of(context)
            : ScrollConfiguration.of(context).copyWith(
                scrollbars: false,
              ),
        key: globalKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Center(
            child: Column(
              children: [
                _buildContent(context),
                if (!forceWidth)
                  _buildFooter(
                    context,
                    themeMode,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: SizeUtils.maxWidgetWidth),
      child: !forceWidth
          ? LayoutBuilder(
              builder: (context, constraints) {
                double basicInfoWidth;
                double workExperienceWidth;
                if (constraints.maxWidth > 600) {
                  final maxWidth =
                      SizeUtils.maxWidthConstraint(constraints.maxWidth);
                  basicInfoWidth = maxWidth * 0.35;
                  workExperienceWidth = maxWidth * 0.65;
                  return _buildContentRow(
                    basicInfoWidth: basicInfoWidth,
                    workExperienceWidth: workExperienceWidth,
                  );
                }

                basicInfoWidth = workExperienceWidth = constraints.maxWidth;
                return _buildContentColumn(
                  basicInfoWidth: basicInfoWidth,
                  workExperienceWidth: workExperienceWidth,
                );
              },
            )
          : Builder(
              builder: (context) {
                const basicInfoWidth = (SizeUtils.maxWidgetWidth * 0.3);
                const workExperienceWidth = (SizeUtils.maxWidgetWidth * 0.7);
                return _buildContentRow(
                  basicInfoWidth: basicInfoWidth,
                  workExperienceWidth: workExperienceWidth,
                );
              },
            ),
    );
  }

  Widget _buildFooter(
    BuildContext context,
    ThemeMode themeMode,
  ) {
    return Container(
      height: SizeUtils.bottomWidgetHeight,
      width: double.infinity,
      color: ColorUtils.getContainerColor(themeMode),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: SizeUtils.maxWidgetWidth),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: SizeUtils.pageMargins),
            child: _buildFooterContent(context),
          ),
        ),
      ),
    );
  }

  Widget _buildFooterContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              Assets.flutterLogo,
              height: 32.0,
            ),
            const SizedBox(width: 8.0),
            Text(
              'Powered by Flutter',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            openNewTab('https://github.com/usherwaltz/nikolajovic');
          },
          child: Text(
            'Source Code',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        ),
      ],
    );
  }

  void openNewTab(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        webOnlyWindowName: '_blank', // This opens the link in a new tab
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildContentRow({
    required double basicInfoWidth,
    required double workExperienceWidth,
  }) {
    return Padding(
      padding: !forceWidth ? const EdgeInsets.all(16.0) : EdgeInsets.zero,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BasicInfoWidget(
            isPDF: forceWidth,
            width: basicInfoWidth,
          ),
          if (!forceWidth) const SizedBox(width: SizeUtils.rowColumnDivider),
          WorkExperienceWidget(
            isPDF: forceWidth,
            width: workExperienceWidth,
          ),
        ],
      ),
    );
  }

  Widget _buildContentColumn({
    required double basicInfoWidth,
    required double workExperienceWidth,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BasicInfoWidget(
          width: basicInfoWidth,
          isColumn: true,
        ),
        const SizedBox(height: SizeUtils.rowColumnDivider),
        WorkExperienceWidget(
          width: workExperienceWidth,
          isColumn: true,
        ),
      ],
    );
  }
}
