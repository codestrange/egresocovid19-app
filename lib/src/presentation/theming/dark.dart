import 'package:egresocovid19/src/presentation/theming/texts.dart';
import 'package:egresocovid19/src/presentation/theming/theming.dart';
import 'package:flutter/material.dart';

Color canvasColor = Colors.grey[850]!;
Color cardColor = Colors.grey[900]!; // Colors.grey[900]!;

final ThemeData darkTheme = ThemeData.dark().copyWith(
  primaryColor: primaryColor,
  textTheme: selectByBrightness(
    canvasColor,
    lightTextTheme,
    darkTextTheme,
  ),
  canvasColor: canvasColor,
  cardColor: cardColor,
  primaryTextTheme: selectByBrightness(
    primaryColor,
    lightTextTheme,
    darkTextTheme,
  ),
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
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
);
