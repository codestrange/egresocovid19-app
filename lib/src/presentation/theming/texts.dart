import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const darkTitleColor = Colors.black87;
const darkBodyColor = Colors.black54;

const lightTitleColor = Colors.white;
const lightBodyColor = Colors.white70;

///Select the [TextTheme] based on the background color contrast
T selectByBrightness<T>(Color color, T onLight, T onDark) {
  final isLight =
      ThemeData.estimateBrightnessForColor(color) == Brightness.light;

  return isLight ? onDark : onLight;
}

TextTheme getTextTheme(String family, Color backgroundColor) {
  final textTheme = getTextThemeForColorBackground(backgroundColor);
  return GoogleFonts.getTextTheme(family, textTheme);
}

TextTheme getTextThemeForColorBackground(Color color) {
  final isLight =
      ThemeData.estimateBrightnessForColor(color) == Brightness.light;
  final titleColor = isLight ? darkTitleColor : lightTitleColor;
  final bodyColor = isLight ? darkBodyColor : lightBodyColor;

  return TextTheme(
    headline4: TextStyle(
      color: titleColor,
    ),
    headline5: TextStyle(
      color: titleColor,
    ),
    headline6: TextStyle(
      color: titleColor,
    ),
    subtitle1: TextStyle(
      color: titleColor,
    ),
    subtitle2: TextStyle(
      color: titleColor,
    ),
    bodyText1: TextStyle(
      color: bodyColor,
    ),
    bodyText2: TextStyle(
      color: bodyColor,
    ),
    button: TextStyle(
      color: titleColor,
    ),
    overline: TextStyle(
      color: bodyColor,
    ),
  );
}
