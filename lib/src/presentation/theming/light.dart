import 'package:egresocovid19/src/presentation/theming/texts.dart';
import 'package:egresocovid19/src/presentation/theming/theming.dart';
import 'package:flutter/material.dart';

Color canvasColor = Colors.grey[50]!;
Color cardColor = Colors.white;

final ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  accentColor: accentColor,
  textTheme: selectByBrightness(canvasColor, lightTextTheme, darkTextTheme),
  canvasColor: canvasColor,
  primaryTextTheme:
      selectByBrightness(primaryColor, lightTextTheme, darkTextTheme),
  accentTextTheme:
      selectByBrightness(accentColor, lightTextTheme, darkTextTheme),
  scaffoldBackgroundColor: canvasColor,
  iconTheme: const IconThemeData(size: 35, color: Colors.black),
  primaryIconTheme: IconThemeData(
      size: 35,
      color: selectByBrightness(primaryColor, Colors.white, Colors.black)),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  chipTheme: ChipThemeData(
    showCheckmark: false,
    selectedColor: Colors.black,
    secondarySelectedColor: Colors.red,
    backgroundColor: canvasColor,
    brightness: Brightness.light,
    disabledColor: Colors.white,
    labelStyle: darkTextTheme.bodyText2!,
    secondaryLabelStyle: lightTextTheme.bodyText2!,
    padding: const EdgeInsets.all(12),
    shape: RoundedRectangleBorder(
      side: const BorderSide(),
      borderRadius: BorderRadius.circular(50),
    ),
  ),
  appBarTheme: AppBarTheme(
    elevation: 0,
    shadowColor: Colors.transparent,
    color: canvasColor,
  ),
);
