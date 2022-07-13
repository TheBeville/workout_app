import 'package:workout_app/model/exercise_data.dart';
import 'package:workout_app/model/workout_session.dart';
import 'package:bloc/bloc.dart';

class SessionController extends Cubit<WorkoutSession> {
  SessionController(WorkoutSession initialState) : super(initialState);
}
