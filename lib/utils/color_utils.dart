import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorUtils {
  static ThemeData lightTheme = FlexThemeData.light(
    scheme: FlexScheme.brandBlue,
    useMaterial3: true,
    fontFamily: GoogleFonts.lato().fontFamily,
  );

  static ThemeData darkTheme = FlexThemeData.dark(
    scheme: FlexScheme.cyanM3,
    useMaterial3: true,
    fontFamily: GoogleFonts.lato().fontFamily,
  );

  static getContainerColor(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.system:
      case ThemeMode.light:
        return lightTheme.cardColor.blend(lightTheme.colorScheme.surfaceTint);

      case ThemeMode.dark:
        return darkTheme.cardColor.blend(darkTheme.colorScheme.surfaceTint);
    }
  }
}
