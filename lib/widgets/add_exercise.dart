import 'package:flutter/material.dart';
import '../views/workout_session.dart';

class AddExercise extends StatefulWidget {
  const AddExercise({Key? key}) : super(key: key);

  @override
  State<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends State<AddExercise> {
  String dropdownValue = 'Please Select';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Choose Exercise'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownButton(
            value: dropdownValue,
            items: <String>[
              'Please Select',
              'Bench Press',
              'Back Squat',
              'Deadlift',
              'Bicep Curl',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Done'),
          onPressed: () {
            // TODO: add chosen exercise to list of exercises in WorkoutSession
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
