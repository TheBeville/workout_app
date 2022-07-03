import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:workout_app/main.dart';
import 'package:workout_app/main_theme.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  late List<bool> isSelected = [false, true];
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<bool> _isDark;

  Future<void> _setTheme() async {
    final SharedPreferences prefs = await _prefs;
    final bool isDark = (prefs.getBool('isDark') ?? false);

    setState(
      () {
        _isDark =
            prefs.setBool('isDark', isDark).then((bool success) => isDark);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Settings',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Dark Mode: ',
                  ),
                ),
                IconButton(
                  icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                      ? Icons.sunny
                      : Icons.dark_mode),
                  onPressed: () {
                    MyApp.themeNotifier.value =
                        _setTheme == _isDark ? ThemeMode.dark : ThemeMode.light;
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
