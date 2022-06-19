import 'package:flutter/material.dart';
import 'package:workout_app/main_theme.dart';

class RepButton extends StatefulWidget {
  const RepButton({Key? key}) : super(key: key);

  @override
  State<RepButton> createState() => _RepButtonState();
}

class _RepButtonState extends State<RepButton> {
  // Ask Alex about a better way to do this/is this best way
  Color buttonBackgroundColor = mainTheme.backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            buttonBackgroundColor = Theme.of(context).primaryColor;
          });
        },
        child: const Text('8'),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          primary: buttonBackgroundColor,
          side: BorderSide(
            width: 2.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
