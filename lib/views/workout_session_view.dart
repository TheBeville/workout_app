import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/controller/session_controller.dart';
import 'package:workout_app/model/workout_session.dart';
import 'package:workout_app/widgets/bottom_nav_bar.dart';
import '../widgets/exercise_tile.dart';
import '../widgets/add_exercise.dart';
import '../model/exercise_data.dart';

class WorkoutSessionView extends StatefulWidget {
  const WorkoutSessionView({Key? key}) : super(key: key);

  @override
  State<WorkoutSessionView> createState() => _WorkoutSessionViewState();
}

class _WorkoutSessionViewState extends State<WorkoutSessionView> {
  late final SessionController controller;

  @override
  void initState() {
    controller = SessionController(
      const WorkoutSession(
        exercises: [
          ExerciseData(
            chosenExercise: 'Barbell Squat',
            numberOfSets: 5,
            numberOfReps: 5,
          ),
          ExerciseData(
            chosenExercise: 'Bench Press',
            numberOfSets: 5,
            numberOfReps: 8,
          ),
          ExerciseData(
            chosenExercise: 'Deadlift',
            numberOfSets: 5,
            numberOfReps: 3,
          ),
        ],
      ),
    );
    super.initState();
  }

  void userSelectExercise() async {
    ExerciseData exerciseTileCreationData = await showDialog(
      context: context,
      builder: (BuildContext context) => const AddExercise(),
    );
    setState(
      () {
        // controller.emit(.add(exerciseTileCreationData));
        // currentSessionExerciseList.add(
        //   // fill WorkoutExercise params w/ data returned from AlertDialog
        // ExerciseTile(
        //   chosenExercise: exerciseTileCreationData.chosenExercise,
        //   numberOfSets: exerciseTileCreationData.numberOfSets,
        //   numberOfReps: exerciseTileCreationData.numberOfReps,
        // ),
        // );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionController, WorkoutSession>(
      bloc: controller,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Session'),
          ),
          body: Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: state.exercises
                        .map((e) => ExerciseTile(data: e))
                        .toList(),
                  ),
                  TextButton(
                    // brings up AlertDialog to choose exercise to add to session
                    onPressed: userSelectExercise,
                    child: Icon(
                      Icons.add,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
