// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressEntryImpl _$$ProgressEntryImplFromJson(Map<String, dynamic> json) =>
    _$ProgressEntryImpl(
      date: DateTime.parse(json['date'] as String),
      weightKg: (json['weightKg'] as num).toDouble(),
      workoutsThisWeek: (json['workoutsThisWeek'] as num).toInt(),
      totalVolume: (json['totalVolume'] as num).toInt(),
      personalRecords: (json['personalRecords'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProgressEntryImplToJson(_$ProgressEntryImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'weightKg': instance.weightKg,
      'workoutsThisWeek': instance.workoutsThisWeek,
      'totalVolume': instance.totalVolume,
      'personalRecords': instance.personalRecords,
    };

_$MuscleStatsImpl _$$MuscleStatsImplFromJson(Map<String, dynamic> json) =>
    _$MuscleStatsImpl(
      muscle: json['muscle'] as String,
      exercisesCount: (json['exercisesCount'] as num).toInt(),
      percentage: (json['percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$MuscleStatsImplToJson(_$MuscleStatsImpl instance) =>
    <String, dynamic>{
      'muscle': instance.muscle,
      'exercisesCount': instance.exercisesCount,
      'percentage': instance.percentage,
    };
