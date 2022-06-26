import 'package:flutter/material.dart';

import './rep_button.dart';

// widget for each exercise in a workout session
class WorkoutExercise extends StatelessWidget {
  final String chosenExercise;
  final int numOfSets;
  final int numOfReps;

  const WorkoutExercise({
    Key? key,
    required this.chosenExercise,
    required this.numOfSets,
    required this.numOfReps,
  }) : super(key: key);

  // TODO: fill list from user-created template
  List<RepButton> fillRepList() {
    List<RepButton> setRepList = [];
    for (int i = 0; i < numOfSets; i++) {
      setRepList.add(RepButton(numOfReps: numOfReps));
    }
    return setRepList;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: tidy up/refactor to replace all these media queries
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 4),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        children: [
          SizedBox(
              child: Text(chosenExercise,
                  style: const TextStyle(color: Colors.white)),
              width: MediaQuery.of(context).size.width * 0.2),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: fillRepList(),
            ),
          ),
        ],
      ),
    );
  }
}
