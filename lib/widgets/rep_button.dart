import 'package:flutter/material.dart';
import 'package:workout_app/main_theme.dart';

// button to track number of reps in each set of each exercise
class RepButton extends StatefulWidget {
  final int numOfReps;

  const RepButton({Key? key, required this.numOfReps}) : super(key: key);

  @override
  State<RepButton> createState() => _RepButtonState();
}

class _RepButtonState extends State<RepButton> {
  late int repCounter = widget.numOfReps;
  bool isComplete = false;

  void buttonLogic() {
    setState(() {
      if (isComplete && repCounter > 0) {
        repCounter--;
      }
      isComplete = true;
    });
  }

  void reset() {
    setState(() {
      isComplete = false;
      repCounter = widget.numOfReps;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onLongPress: reset,
        onPressed: buttonLogic,
        child: Text(
          repCounter.toString(),
          style: TextStyle(
            color: isComplete
                ? Theme.of(context).backgroundColor
                : Theme.of(context).primaryColor,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          primary: isComplete
              ? Theme.of(context).primaryColor
              : Theme.of(context).backgroundColor,
          side: BorderSide(
            width: 2.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
