import 'package:egresocovid19/src/presentation/theming/dark.dart';
import 'package:egresocovid19/src/presentation/theming/light.dart';
import 'package:egresocovid19/src/presentation/theming/texts.dart';
import 'package:flutter/material.dart';

String textFamily = 'Poppins';

Color primaryColor = Colors.amber;
Color accentColor = const Color(0xffb83c33);

// Create cached textThemes for diferent contrast
TextTheme lightTextTheme = getTextTheme(textFamily, Colors.black);
TextTheme darkTextTheme = getTextTheme(textFamily, Colors.white);

class EgresoCovid19Themes {
  static ThemeData get lightMaterialTheme => lightTheme;
  static ThemeData get darkMaterialTheme => darkTheme;
}
