/// This is used across the project to various paddings and sizes
class SizeUtils {
  static const double maxWidgetWidth = 1024.0;
  static const double pdfMargins = 16.0;
  static const double rowColumnDivider = 16.0;
  static const double pageMargins = 16.0;
  static const double bottomWidgetHeight = 60.0;
  static const double workExperienceHeadlinePadding = 32.0;
  static const double contentSectionsRadius = 8.0;
  static const double basicInfoPadding = 24.0;

  static double maxConstraintWidth(double maxWidth) {
    return maxWidth - pageMargins * 2 - rowColumnDivider;
  }
}
