import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:universal_html/html.dart' as html;

import '../../../assets/assets.dart';
import '../../../blocs/blocs.dart';
import '../../../utils/utils.dart';
import '../home/widgets/widgets.dart';

class ContentWidget extends StatelessWidget {
  final bool forceWidth;
  const ContentWidget({
    Key? key,
    this.forceWidth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select<ThemeBloc, ThemeMode>((ThemeBloc bloc) => bloc.state.themeMode);
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Center(
          child: Column(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: SizeUtils.maxWidgetWidth),
                child: !forceWidth
                    ? LayoutBuilder(
                        builder: (context, constraints) {
                          double basicInfoWidth;
                          double workExperienceWidth;
                          if (constraints.maxWidth > 600) {
                            final maxWidth = SizeUtils.maxConstraintWidth(constraints.maxWidth);
                            basicInfoWidth = maxWidth * 0.3;
                            workExperienceWidth = maxWidth * 0.7;
                            return _buildRow(
                              basicInfoWidth: basicInfoWidth,
                              workExperienceWidth: workExperienceWidth,
                            );
                          }

                          basicInfoWidth = workExperienceWidth = constraints.maxWidth;
                          return _buildColumn(
                            basicInfoWidth: basicInfoWidth,
                            workExperienceWidth: workExperienceWidth,
                          );
                        },
                      )
                    : Builder(
                        builder: (context) {
                          const basicInfoWidth = (SizeUtils.maxWidgetWidth * 0.3);
                          const workExperienceWidth = (SizeUtils.maxWidgetWidth * 0.7);
                          return _buildRow(
                            basicInfoWidth: basicInfoWidth,
                            workExperienceWidth: workExperienceWidth,
                          );
                        },
                      ),
              ),
              if (!forceWidth)
                Container(
                  height: 60,
                  width: double.infinity,
                  color: ColorUtils.getContainerColor(themeMode),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: SizeUtils.maxWidgetWidth),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: SizeUtils.pageMargins),
                        child: Row(
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
                                html.window.open('https://github.com/usherwaltz/nikolajovic', "_blank");
                              },
                              child: Text(
                                'Source Code',
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRow({
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

  Widget _buildColumn({
    required double basicInfoWidth,
    required double workExperienceWidth,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BasicInfoWidget(width: basicInfoWidth),
        const SizedBox(height: SizeUtils.rowColumnDivider),
        WorkExperienceWidget(width: workExperienceWidth),
      ],
    );
  }
}
