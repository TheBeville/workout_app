import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeClass {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return isDarkTheme ? mainThemeDark : mainThemeLight;
  }

  static ThemeData mainThemeLight = ThemeData(
    primaryColor: const Color(0xFF358EF2),
    backgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Color((0xFF33B0F2))),
    appBarTheme: const AppBarTheme(color: Color(0xFF358EF2)),
    brightness: Brightness.light,
    textTheme: const TextTheme().apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
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

class DarkThemePreference {
  static const themeStatus = 'ThemeStatus';

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeStatus, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeStatus) ?? false;
  }
}

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
