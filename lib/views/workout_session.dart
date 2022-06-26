import 'package:flutter/material.dart';
import '../widgets/workout_exercise.dart';
import '../widgets/add_exercise.dart';
import '../model/exercise_tile_creation_data.dart';

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
          // brings up AlertDialog to choose exercise to add to session
          onPressed: () async {
            ExerciseTileCreationData exerciseTileCreationData =
                await showDialog(
              context: context,
              builder: (BuildContext context) => const AddExercise(),
            );
            setState(
              () {
                currentSessionExerciseList.add(
                  WorkoutExercise(
                    chosenExercise: exerciseTileCreationData.chosenExercise,
                    numOfSets: exerciseTileCreationData.numberOfSets,
                    numOfReps: exerciseTileCreationData.numberOfReps,
                  ),
                );
              },
            );
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
