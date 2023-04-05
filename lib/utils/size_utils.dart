class SizeUtils {
  static const double maxWidgetWidth = 1024.0;
  static const double pdfMargins = 16.0;
  static const double rowColumnDivider = 16.0;
  static const double pageMargins = 16.0;
  static const double bottomWidgetHeight = 60.0;

  static double maxConstraintWidth(double maxWidth) {
    return maxWidth - pageMargins * 2 - rowColumnDivider;
  }
}
