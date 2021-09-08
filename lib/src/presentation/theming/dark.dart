import 'package:egresocovid19/src/presentation/theming/texts.dart';
import 'package:egresocovid19/src/presentation/theming/theming.dart';
import 'package:flutter/material.dart';

Color canvasColor = const Color(0xFF0e1621);
Color cardColor = const Color(0xFF17202b); // Colors.grey[900]!;

final ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: primaryColor,
  accentColor: accentColor,
  textTheme: selectByBrightness(canvasColor, lightTextTheme, darkTextTheme),
  canvasColor: canvasColor,
  cardColor: cardColor,
  primaryTextTheme:
      selectByBrightness(primaryColor, lightTextTheme, darkTextTheme),
  accentTextTheme:
      selectByBrightness(accentColor, lightTextTheme, darkTextTheme),
  scaffoldBackgroundColor: canvasColor,
  iconTheme: const IconThemeData(size: 35, color: Colors.white),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  chipTheme: ChipThemeData(
    showCheckmark: false,
    selectedColor: Colors.white,
    secondarySelectedColor: Colors.red,
    backgroundColor: canvasColor,
    brightness: Brightness.dark,
    disabledColor: Colors.white,
    labelStyle: lightTextTheme.bodyText2!,
    secondaryLabelStyle: darkTextTheme.bodyText2!,
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
