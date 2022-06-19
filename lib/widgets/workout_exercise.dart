import 'package:flutter/material.dart';

import './rep_button.dart';

class WorkoutExercise extends StatelessWidget {
  const WorkoutExercise({Key? key}) : super(key: key);

  static const List<RepButton> setRepList = [
    RepButton(),
    RepButton(),
    RepButton(),
    RepButton(),
    RepButton(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 6),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        children: [
          SizedBox(
              child: const Text('Chosen Exercise',
                  style: TextStyle(color: Colors.white)),
              width: MediaQuery.of(context).size.width * 0.2),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: setRepList,
            ),
          ),
        ],
      ),
    );
  }
}
