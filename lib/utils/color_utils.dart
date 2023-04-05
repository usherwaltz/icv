import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A class that contains utility methods for colors.
class ColorUtils {
  // Following the work of Mike Ryd, I have decided to implement his package in this project since the color pallets are beautiful and easy to use.
  // https://rydmike.com
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
