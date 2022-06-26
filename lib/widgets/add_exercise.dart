import 'package:flutter/material.dart';
import '../model/exercise_tile_creation_data.dart';

class AddExercise extends StatefulWidget {
  const AddExercise({Key? key}) : super(key: key);

  @override
  State<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends State<AddExercise> {
  String _dropdownValue = 'Please Select';
  late int numberOfSets;
  late int numberOfReps;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Choose Exercise'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // user selects exercise
          DropdownButton(
            value: _dropdownValue,
            items: <String>[
              'Please Select',
              'Bench Press',
              'Back Squat',
              'Deadlift',
              'Bicep Curl',
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
                  _dropdownValue = newValue!;
                },
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Sets',
                  ),
                  onChanged: (value) {
                    numberOfSets = int.parse(value);
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Reps',
                  ),
                  onChanged: (value) {
                    numberOfReps = int.parse(value);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop(null);
          },
        ),
        TextButton(
          child: const Text('Done'),
          onPressed: () {
            Navigator.of(context).pop(ExerciseTileCreationData(
                chosenExercise: _dropdownValue,
                numberOfSets: numberOfSets,
                numberOfReps: numberOfReps));
          },
        ),
      ],
    );
  }
}
