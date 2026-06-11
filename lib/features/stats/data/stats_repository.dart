import '../domain/progress_model.dart';

class StatsRepository {
  StatsRepository._();

  static List<ProgressEntry> get mockHistory => [
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 56)),
      weightKg: 82.0,
      workoutsThisWeek: 3,
      totalVolume: 12500,
      personalRecords: 1,
    ),
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 49)),
      weightKg: 81.5,
      workoutsThisWeek: 4,
      totalVolume: 14200,
      personalRecords: 0,
    ),
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 42)),
      weightKg: 81.2,
      workoutsThisWeek: 4,
      totalVolume: 15100,
      personalRecords: 2,
    ),
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 35)),
      weightKg: 80.8,
      workoutsThisWeek: 5,
      totalVolume: 16300,
      personalRecords: 1,
    ),
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 28)),
      weightKg: 80.3,
      workoutsThisWeek: 5,
      totalVolume: 17000,
      personalRecords: 2,
    ),
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 21)),
      weightKg: 80.0,
      workoutsThisWeek: 4,
      totalVolume: 16800,
      personalRecords: 0,
    ),
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 14)),
      weightKg: 79.8,
      workoutsThisWeek: 5,
      totalVolume: 18200,
      personalRecords: 1,
    ),
    ProgressEntry(
      date: DateTime.now().subtract(const Duration(days: 7)),
      weightKg: 79.5,
      workoutsThisWeek: 5,
      totalVolume: 19000,
      personalRecords: 1,
    ),
  ];

  static List<MuscleStats> get mockMuscleStats => const [
    MuscleStats(muscle: 'Klatka', exercisesCount: 11, percentage: 22),
    MuscleStats(muscle: 'Plecy', exercisesCount: 13, percentage: 25),
    MuscleStats(muscle: 'Nogi', exercisesCount: 14, percentage: 28),
    MuscleStats(muscle: 'Barki', exercisesCount: 6, percentage: 12),
    MuscleStats(muscle: 'Ramiona', exercisesCount: 4, percentage: 8),
    MuscleStats(muscle: 'Core', exercisesCount: 3, percentage: 5),
  ];

  static const List<int> weeklyWorkouts = [4, 5, 3, 5, 6, 4, 5, 5];
  static const int currentStreak = 12;
  static const int totalWorkouts = 47;
  static const int personalRecords = 8;
}
