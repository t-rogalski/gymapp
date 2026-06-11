import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

enum MovementPattern {
  squat,
  hinge,
  horizontalPush,
  horizontalPull,
  verticalPush,
  verticalPull,
  carry,
  isolation,
}

enum ExerciseRole { primary, secondary, accessory }

enum Equipment {
  barbell,
  dumbbell,
  cable,
  machine,
  smithMachine,
  kettlebell,
  resistanceBand,
  pullUpBar,
  dipBar,
  trx,
  bodyweight,
}

enum Laterality { bilateral, unilateral, alternating }

enum LengthBias { stretched, midRange, shortened }

enum LoadingScheme { weight, reps, time, bandTension }

@freezed
class JointStress with _$JointStress {
  const factory JointStress({
    @Default(0) int shoulder,
    @Default(0) int elbow,
    @Default(0) int knee,
    @Default(0) int lowerBack,
  }) = _JointStress;

  factory JointStress.fromJson(Map<String, dynamic> json) =>
      _$JointStressFromJson(json);
}

@freezed
class ExerciseModel with _$ExerciseModel {
  const factory ExerciseModel({
    required String id,
    required String name,
    required List<String> primaryMuscles,
    @Default([]) List<String> secondaryMuscles,
    required MovementPattern movementPattern,
    required ExerciseRole exerciseRole,
    required Equipment equipment,
    required Laterality laterality,
    @Default(2) int fatigueScore,
    @Default(2) int recoveryCost,
    @Default(1) int axialLoad,
    @Default(2) int stability,
    @Default(2) int skillRequirement,
    @Default(3) int sfr,
    required LengthBias lengthBias,
    required LoadingScheme loadingScheme,
    required JointStress jointStress,
    @Default(3) int sets,
    @Default(10) int reps,
    @Default(90) int restSeconds,
    @Default('') String emojiIcon,
  }) = _ExerciseModel;

  factory ExerciseModel.fromJson(Map<String, dynamic> json) =>
      _$ExerciseModelFromJson(json);
}
