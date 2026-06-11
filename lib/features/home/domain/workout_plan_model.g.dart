// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutPlanModelImpl _$$WorkoutPlanModelImplFromJson(
  Map<String, dynamic> json,
) => _$WorkoutPlanModelImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  difficulty: json['difficulty'] as String,
  daysPerWeek: (json['daysPerWeek'] as num).toInt(),
  days: (json['days'] as List<dynamic>)
      .map((e) => WorkoutDay.fromJson(e as Map<String, dynamic>))
      .toList(),
  isGenerated: json['isGenerated'] as bool? ?? false,
  isActive: json['isActive'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  emoji: json['emoji'] as String? ?? '',
);

Map<String, dynamic> _$$WorkoutPlanModelImplToJson(
  _$WorkoutPlanModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'difficulty': instance.difficulty,
  'daysPerWeek': instance.daysPerWeek,
  'days': instance.days,
  'isGenerated': instance.isGenerated,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt?.toIso8601String(),
  'emoji': instance.emoji,
};

_$WorkoutDayImpl _$$WorkoutDayImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutDayImpl(
      dayNumber: (json['dayNumber'] as num).toInt(),
      label: json['label'] as String,
      exercises: (json['exercises'] as List<dynamic>)
          .map((e) => PlannedExercise.fromJson(e as Map<String, dynamic>))
          .toList(),
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$WorkoutDayImplToJson(_$WorkoutDayImpl instance) =>
    <String, dynamic>{
      'dayNumber': instance.dayNumber,
      'label': instance.label,
      'exercises': instance.exercises,
      'isCompleted': instance.isCompleted,
    };

_$PlannedExerciseImpl _$$PlannedExerciseImplFromJson(
  Map<String, dynamic> json,
) => _$PlannedExerciseImpl(
  exercise: ExerciseModel.fromJson(json['exercise'] as Map<String, dynamic>),
  sets: (json['sets'] as num).toInt(),
  reps: (json['reps'] as num).toInt(),
  rir: (json['rir'] as num?)?.toInt() ?? 2,
);

Map<String, dynamic> _$$PlannedExerciseImplToJson(
  _$PlannedExerciseImpl instance,
) => <String, dynamic>{
  'exercise': instance.exercise,
  'sets': instance.sets,
  'reps': instance.reps,
  'rir': instance.rir,
};
