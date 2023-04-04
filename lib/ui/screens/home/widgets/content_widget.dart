import 'package:flutter/material.dart';

import 'widgets.dart';

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
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1024),
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
                      const basicInfoWidth = 1024 * 0.3 - 8.0;
                      const workExperienceWidth = 1024 * 0.7 - 8.0;
                      return _buildRow(
                        basicInfoWidth: basicInfoWidth,
                        workExperienceWidth: workExperienceWidth,
                      );
                    },
                  ),
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
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BasicInfoWidget(
          width: basicInfoWidth,
        ),
        const SizedBox(width: 16.0),
        WorkExperienceWidget(
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
