// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      avatarInitials: json['avatarInitials'] as String? ?? '',
      workoutsCompleted: (json['workoutsCompleted'] as num?)?.toInt() ?? 0,
      currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 0,
      weightKg: (json['weightKg'] as num?)?.toDouble() ?? 0.0,
      heightCm: (json['heightCm'] as num?)?.toInt() ?? 0,
      fitnessLevel: json['fitnessLevel'] as String? ?? 'beginner',
      fitnessGoals:
          (json['fitnessGoals'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availableEquipment:
          (json['availableEquipment'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      injuredJoints:
          (json['injuredJoints'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'avatarInitials': instance.avatarInitials,
      'workoutsCompleted': instance.workoutsCompleted,
      'currentStreak': instance.currentStreak,
      'weightKg': instance.weightKg,
      'heightCm': instance.heightCm,
      'fitnessLevel': instance.fitnessLevel,
      'fitnessGoals': instance.fitnessGoals,
      'availableEquipment': instance.availableEquipment,
      'injuredJoints': instance.injuredJoints,
    };
