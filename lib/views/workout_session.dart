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
    const WorkoutExercise(),
    const WorkoutExercise(),
    const WorkoutExercise(),
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
                currentSessionExerciseList.add(const WorkoutExercise());
              },
            );
          },
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}
