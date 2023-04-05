import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nikolajovic/utils/utils.dart';
import 'package:universal_html/html.dart' as html;

import '../../../assets/assets.dart';
import '../home/widgets/widgets.dart';

class ContentWidget extends StatelessWidget {
  final bool forceWidth;
  const ContentWidget({
    Key? key,
    this.forceWidth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Center(
          child: Column(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: Constants.maxWidgetWidth),
                padding: !forceWidth ? const EdgeInsets.all(16.0) : EdgeInsets.zero,
                child: !forceWidth
                    ? LayoutBuilder(
                        builder: (context, constraints) {
                          double basicInfoWidth;
                          double workExperienceWidth;
                          if (constraints.maxWidth > 600) {
                            basicInfoWidth = constraints.maxWidth * 0.3 - 8.0;
                            workExperienceWidth = constraints.maxWidth * 0.7 - 8.0;
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
                          const basicInfoWidth = (Constants.maxWidgetWidth * 0.3);
                          const workExperienceWidth = (Constants.maxWidgetWidth * 0.7);
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
                  color: Theme.of(context).colorScheme.inversePrimary,
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: Constants.maxWidgetWidth),
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BasicInfoWidget(
          isPDF: forceWidth,
          width: basicInfoWidth,
        ),
        if (!forceWidth) const SizedBox(width: 16.0),
        WorkExperienceWidget(
          isPDF: forceWidth,
          width: workExperienceWidth,
        ),
      ],
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
        WorkExperienceWidget(width: workExperienceWidth),
      ],
    );
  }
}
