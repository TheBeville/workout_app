import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:workout_app/main_theme.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

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
                Checkbox(
                    value: themeChange.darkTheme,
                    onChanged: (bool? value) {
                      themeChange.darkTheme = value!;
                    })
                // IconButton(
                //   icon: Icon(themeChange == ThemeMode.light
                //       ? Icons.sunny
                //       : Icons.dark_mode),
                //   onPressed: () {
                //     setState(() {
                //       themeChange.darkTheme;
                //     });
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
