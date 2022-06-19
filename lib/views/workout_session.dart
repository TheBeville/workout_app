import 'package:flutter/material.dart';
import '../widgets/workout_exercise.dart';

class WorkoutSession extends StatefulWidget {
  const WorkoutSession({Key? key}) : super(key: key);

  @override
  State<WorkoutSession> createState() => _WorkoutSessionState();
}

class _WorkoutSessionState extends State<WorkoutSession> {
  List<WorkoutExercise> currentSessionExerciseList = [
    // TODO: populate list with user-selected sets and reps etc.
    const WorkoutExercise(
      chosenExercise: 'Barbell Squat',
      numOfSets: 5,
      numOfReps: 5,
    ),
    const WorkoutExercise(
      chosenExercise: 'Bench Press',
      numOfSets: 3,
      numOfReps: 8,
    ),
    const WorkoutExercise(
      chosenExercise: 'Deadlift',
      numOfSets: 6,
      numOfReps: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: currentSessionExerciseList,
        ),
        TextButton(
          onPressed: () {
            setState(
              () {
                currentSessionExerciseList.add(const WorkoutExercise(
                  chosenExercise: 'Bicep Curl',
                  numOfSets: 4,
                  numOfReps: 12,
                ));
              },
            );
          },
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
