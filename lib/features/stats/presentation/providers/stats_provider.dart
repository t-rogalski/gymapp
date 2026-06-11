import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/progress_model.dart';
import '../../data/stats_repository.dart';

part 'stats_provider.g.dart';

@riverpod
List<ProgressEntry> progressHistory(ProgressHistoryRef ref) {
  return StatsRepository.mockHistory;
}

@riverpod
List<MuscleStats> muscleDistribution(MuscleDistributionRef ref) {
  return StatsRepository.mockMuscleStats;
}

@riverpod
List<int> weeklyWorkouts(WeeklyWorkoutsRef ref) {
  return StatsRepository.weeklyWorkouts;
}
