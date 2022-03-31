import 'package:flutter/material.dart';

class WorkoutExercise extends StatelessWidget {
  const WorkoutExercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        const Text('Chosen Exercise'),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Container(
                width: 75,
                margin: const EdgeInsets.fromLTRB(20, 5, 5, 5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle),
              ),
              Container(
                width: 75,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle),
              ),
              Container(
                width: 75,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle),
              ),
              Container(
                width: 75,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle),
              ),
              Container(
                width: 75,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
