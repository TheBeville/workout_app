import 'package:flutter/material.dart';
import '../widgets/workout_exercise.dart';

class WorkoutSession extends StatefulWidget {
  const WorkoutSession({Key? key}) : super(key: key);

  @override
  State<WorkoutSession> createState() => _WorkoutSessionState();
}

class _WorkoutSessionState extends State<WorkoutSession> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).primaryColor, width: 6),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height * 0.15,
          child: const WorkoutExercise(),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border:
                  Border.all(color: Theme.of(context).primaryColor, width: 6),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.15,
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                const Text('Add Exercise'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
