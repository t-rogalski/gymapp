// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generator_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeneratorConfigImpl _$$GeneratorConfigImplFromJson(
  Map<String, dynamic> json,
) => _$GeneratorConfigImpl(
  goals:
      (json['goals'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  level: json['level'] as String? ?? 'intermediate',
  daysPerWeek: (json['daysPerWeek'] as num?)?.toInt() ?? 4,
  availableEquipment:
      (json['availableEquipment'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  sessionMinutes: (json['sessionMinutes'] as num?)?.toInt() ?? 60,
  injuredJoints:
      (json['injuredJoints'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  seed: (json['seed'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$GeneratorConfigImplToJson(
  _$GeneratorConfigImpl instance,
) => <String, dynamic>{
  'goals': instance.goals,
  'level': instance.level,
  'daysPerWeek': instance.daysPerWeek,
  'availableEquipment': instance.availableEquipment,
  'sessionMinutes': instance.sessionMinutes,
  'injuredJoints': instance.injuredJoints,
  'seed': instance.seed,
};
