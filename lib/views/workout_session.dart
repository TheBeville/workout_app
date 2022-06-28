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
  List<ExerciseTile> currentSessionExerciseList = [
    // TODO: populate list with user-selected sets and reps etc.
    const ExerciseTile(
      chosenExercise: 'Barbell Squat',
      numberOfSets: 5,
      numberOfReps: 5,
    ),
    const ExerciseTile(
      chosenExercise: 'Bench Press',
      numberOfSets: 3,
      numberOfReps: 8,
    ),
    const ExerciseTile(
      chosenExercise: 'Deadlift',
      numberOfSets: 6,
      numberOfReps: 3,
    ),
  ];

  void userSelectExercise() async {
    ExerciseTileCreationData exerciseTileCreationData = await showDialog(
      context: context,
      builder: (BuildContext context) => const AddExercise(),
    );
    setState(
      () {
        currentSessionExerciseList.add(
          // fill WorkoutExercise params w/ data returned from AlertDialog
          ExerciseTile(
            chosenExercise: exerciseTileCreationData.chosenExercise,
            numberOfSets: exerciseTileCreationData.numberOfSets,
            numberOfReps: exerciseTileCreationData.numberOfReps,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: currentSessionExerciseList,
            ),
            TextButton(
              // brings up AlertDialog to choose exercise to add to session
              onPressed: userSelectExercise,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
