// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_session.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkoutSessionCWProxy {
  WorkoutSession exercises(List<ExerciseData> exercises);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkoutSession(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkoutSession(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkoutSession call({
    List<ExerciseData>? exercises,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkoutSession.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkoutSession.copyWith.fieldName(...)`
class _$WorkoutSessionCWProxyImpl implements _$WorkoutSessionCWProxy {
  final WorkoutSession _value;

  const _$WorkoutSessionCWProxyImpl(this._value);

  @override
  WorkoutSession exercises(List<ExerciseData> exercises) =>
      this(exercises: exercises);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkoutSession(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkoutSession(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkoutSession call({
    Object? exercises = const $CopyWithPlaceholder(),
  }) {
    return WorkoutSession(
      exercises: exercises == const $CopyWithPlaceholder() || exercises == null
          ? _value.exercises
          // ignore: cast_nullable_to_non_nullable
          : exercises as List<ExerciseData>,
    );
  }
}

extension $WorkoutSessionCopyWith on WorkoutSession {
  /// Returns a callable class that can be used as follows: `instanceOfWorkoutSession.copyWith(...)` or like so:`instanceOfWorkoutSession.copyWith.fieldName(...)`.
  _$WorkoutSessionCWProxy get copyWith => _$WorkoutSessionCWProxyImpl(this);
}
