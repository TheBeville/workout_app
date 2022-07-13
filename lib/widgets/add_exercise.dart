import 'package:flutter/material.dart';
import '../model/exercise_data.dart';

class AddExercise extends StatefulWidget {
  const AddExercise({Key? key}) : super(key: key);

  @override
  State<AddExercise> createState() => _AddExerciseState();
}

class _AddExerciseState extends State<AddExercise> {
  String chosenExercise = 'Please Select';
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
            value: chosenExercise,
            items: <String>[
              'Please Select',
              'Back Squat',
              'Barbell Row',
              'Bench Press',
              'Bicep Curl',
              'Deadlift',
              'Overhead Press',
              'Pullups',
              'Tricep Extension',
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
                  chosenExercise = newValue!;
                },
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // user enters number of sets
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
              // user enters number of reps
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
            // send data to WorkoutSession to add instance of WorkoutExercise
            Navigator.of(context).pop(
              ExerciseData(
                chosenExercise: chosenExercise,
                numberOfSets: numberOfSets,
                numberOfReps: numberOfReps,
              ),
            );
          },
        ),
      ],
    );
  }
}
