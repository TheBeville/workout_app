import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  primaryColor: const Color(0xFF358EF2),
  backgroundColor: const Color(0xFF232937),
  iconTheme: const IconThemeData(color: Color((0xFF33B0F2))),
  appBarTheme: const AppBarTheme(color: Color(0xFF358EF2)),
  brightness: Brightness.dark,
  textTheme: const TextTheme().apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
);
