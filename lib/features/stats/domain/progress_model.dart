import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_model.freezed.dart';
part 'progress_model.g.dart';

@freezed
class ProgressEntry with _$ProgressEntry {
  const factory ProgressEntry({
    required DateTime date,
    required double weightKg,
    required int workoutsThisWeek,
    required int totalVolume,
    @Default(0) int personalRecords,
  }) = _ProgressEntry;

  factory ProgressEntry.fromJson(Map<String, dynamic> json) =>
      _$ProgressEntryFromJson(json);
}

@freezed
class MuscleStats with _$MuscleStats {
  const factory MuscleStats({
    required String muscle,
    required int exercisesCount,
    required double percentage,
  }) = _MuscleStats;

  factory MuscleStats.fromJson(Map<String, dynamic> json) =>
      _$MuscleStatsFromJson(json);
}
