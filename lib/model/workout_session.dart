import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:workout_app/model/exercise_data.dart';

part 'workout_session.g.dart';

// terminal: 'flutter pub run build_runner build' upon changing ANYTHING below
@CopyWith()
class WorkoutSession {
  final List<ExerciseData> exercises;

  const WorkoutSession({
    required this.exercises,
  });
}
