// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JointStressImpl _$$JointStressImplFromJson(Map<String, dynamic> json) =>
    _$JointStressImpl(
      shoulder: (json['shoulder'] as num?)?.toInt() ?? 0,
      elbow: (json['elbow'] as num?)?.toInt() ?? 0,
      knee: (json['knee'] as num?)?.toInt() ?? 0,
      lowerBack: (json['lowerBack'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$JointStressImplToJson(_$JointStressImpl instance) =>
    <String, dynamic>{
      'shoulder': instance.shoulder,
      'elbow': instance.elbow,
      'knee': instance.knee,
      'lowerBack': instance.lowerBack,
    };

_$ExerciseModelImpl _$$ExerciseModelImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      primaryMuscles: (json['primaryMuscles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      secondaryMuscles:
          (json['secondaryMuscles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      movementPattern: $enumDecode(
        _$MovementPatternEnumMap,
        json['movementPattern'],
      ),
      exerciseRole: $enumDecode(_$ExerciseRoleEnumMap, json['exerciseRole']),
      equipment: $enumDecode(_$EquipmentEnumMap, json['equipment']),
      laterality: $enumDecode(_$LateralityEnumMap, json['laterality']),
      fatigueScore: (json['fatigueScore'] as num?)?.toInt() ?? 2,
      recoveryCost: (json['recoveryCost'] as num?)?.toInt() ?? 2,
      axialLoad: (json['axialLoad'] as num?)?.toInt() ?? 1,
      stability: (json['stability'] as num?)?.toInt() ?? 2,
      skillRequirement: (json['skillRequirement'] as num?)?.toInt() ?? 2,
      sfr: (json['sfr'] as num?)?.toInt() ?? 3,
      lengthBias: $enumDecode(_$LengthBiasEnumMap, json['lengthBias']),
      loadingScheme: $enumDecode(_$LoadingSchemeEnumMap, json['loadingScheme']),
      jointStress: JointStress.fromJson(
        json['jointStress'] as Map<String, dynamic>,
      ),
      sets: (json['sets'] as num?)?.toInt() ?? 3,
      reps: (json['reps'] as num?)?.toInt() ?? 10,
      restSeconds: (json['restSeconds'] as num?)?.toInt() ?? 90,
      emojiIcon: json['emojiIcon'] as String? ?? '',
    );

Map<String, dynamic> _$$ExerciseModelImplToJson(_$ExerciseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'primaryMuscles': instance.primaryMuscles,
      'secondaryMuscles': instance.secondaryMuscles,
      'movementPattern': _$MovementPatternEnumMap[instance.movementPattern]!,
      'exerciseRole': _$ExerciseRoleEnumMap[instance.exerciseRole]!,
      'equipment': _$EquipmentEnumMap[instance.equipment]!,
      'laterality': _$LateralityEnumMap[instance.laterality]!,
      'fatigueScore': instance.fatigueScore,
      'recoveryCost': instance.recoveryCost,
      'axialLoad': instance.axialLoad,
      'stability': instance.stability,
      'skillRequirement': instance.skillRequirement,
      'sfr': instance.sfr,
      'lengthBias': _$LengthBiasEnumMap[instance.lengthBias]!,
      'loadingScheme': _$LoadingSchemeEnumMap[instance.loadingScheme]!,
      'jointStress': instance.jointStress,
      'sets': instance.sets,
      'reps': instance.reps,
      'restSeconds': instance.restSeconds,
      'emojiIcon': instance.emojiIcon,
    };

const _$MovementPatternEnumMap = {
  MovementPattern.squat: 'squat',
  MovementPattern.hinge: 'hinge',
  MovementPattern.horizontalPush: 'horizontalPush',
  MovementPattern.horizontalPull: 'horizontalPull',
  MovementPattern.verticalPush: 'verticalPush',
  MovementPattern.verticalPull: 'verticalPull',
  MovementPattern.carry: 'carry',
  MovementPattern.isolation: 'isolation',
};

const _$ExerciseRoleEnumMap = {
  ExerciseRole.primary: 'primary',
  ExerciseRole.secondary: 'secondary',
  ExerciseRole.accessory: 'accessory',
};

const _$EquipmentEnumMap = {
  Equipment.barbell: 'barbell',
  Equipment.dumbbell: 'dumbbell',
  Equipment.cable: 'cable',
  Equipment.machine: 'machine',
  Equipment.smithMachine: 'smithMachine',
  Equipment.kettlebell: 'kettlebell',
  Equipment.resistanceBand: 'resistanceBand',
  Equipment.pullUpBar: 'pullUpBar',
  Equipment.dipBar: 'dipBar',
  Equipment.trx: 'trx',
  Equipment.bodyweight: 'bodyweight',
};

const _$LateralityEnumMap = {
  Laterality.bilateral: 'bilateral',
  Laterality.unilateral: 'unilateral',
  Laterality.alternating: 'alternating',
};

const _$LengthBiasEnumMap = {
  LengthBias.stretched: 'stretched',
  LengthBias.midRange: 'midRange',
  LengthBias.shortened: 'shortened',
};

const _$LoadingSchemeEnumMap = {
  LoadingScheme.weight: 'weight',
  LoadingScheme.reps: 'reps',
  LoadingScheme.time: 'time',
  LoadingScheme.bandTension: 'bandTension',
};
