import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:workout_app/main_theme.dart';
import '../widgets/bottom_nav_bar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String units = 'Metric';

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
            Padding(
              padding: const EdgeInsets.fromLTRB(50.0, 0, 0, 15.0),
              child: Row(
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
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
              ),
              child: Row(children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Units:'),
                ),
                DropdownButton(
                  value: units,
                  items: <String>[
                    'Metric',
                    'Imperial',
                  ].map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                  onChanged: (String? newValue) {
                    setState(
                      () {
                        units = newValue!;
                      },
                    );
                  },
                ),
              ]),
            )
          ],
        ),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: 0,
        ),
      ),
    );
  }
}
