import 'package:workout_app/model/exercise_data.dart';

class WorkoutSession {
  final List<ExerciseData> exercises;

  const WorkoutSession({
    required this.exercises,
  });
}
