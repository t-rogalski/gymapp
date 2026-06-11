import 'package:freezed_annotation/freezed_annotation.dart';
import 'exercise_model.dart';

part 'workout_plan_model.freezed.dart';
part 'workout_plan_model.g.dart';

@freezed
class WorkoutPlanModel with _$WorkoutPlanModel {
  const factory WorkoutPlanModel({
    required String id,
    required String name,
    required String description,
    required String difficulty,
    required int daysPerWeek,
    required List<WorkoutDay> days,
    @Default(false) bool isGenerated,
    @Default(false) bool isActive,
    DateTime? createdAt,
    @Default('') String emoji,
  }) = _WorkoutPlanModel;

  factory WorkoutPlanModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanModelFromJson(json);
}

@freezed
class WorkoutDay with _$WorkoutDay {
  const factory WorkoutDay({
    required int dayNumber,
    required String label,
    required List<PlannedExercise> exercises,
    @Default(false) bool isCompleted,
  }) = _WorkoutDay;

  factory WorkoutDay.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDayFromJson(json);
}

@freezed
class PlannedExercise with _$PlannedExercise {
  const factory PlannedExercise({
    required ExerciseModel exercise,
    required int sets,
    required int reps,
    @Default(2) int rir,
  }) = _PlannedExercise;

  factory PlannedExercise.fromJson(Map<String, dynamic> json) =>
      _$PlannedExerciseFromJson(json);
}
