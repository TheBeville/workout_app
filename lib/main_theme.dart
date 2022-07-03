import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData mainThemeLight = ThemeData(
    primaryColor: const Color(0xFF358EF2),
    backgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Color((0xFF33B0F2))),
    appBarTheme: const AppBarTheme(color: Color(0xFF358EF2)),
    brightness: Brightness.light,
  );

  static ThemeData mainThemeDark = ThemeData(
    primaryColor: const Color(0xFF358EF2),
    backgroundColor: const Color(0xFF232937),
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Color((0xFF33B0F2))),
    appBarTheme: const AppBarTheme(color: Color(0xFF358EF2)),
    brightness: Brightness.dark,
    textTheme: const TextTheme().apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
  );
}
