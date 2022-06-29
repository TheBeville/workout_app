import 'package:flutter/material.dart';
import 'package:workout_app/main_theme.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: mainTheme,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Settings',
          ),
        ),
        body: const Center(
          child: Text(
            'The Settings Page',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
