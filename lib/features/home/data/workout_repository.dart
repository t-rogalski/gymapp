import '../domain/workout_plan_model.dart';
import 'exercise_repository.dart';

class WorkoutRepository {
  WorkoutRepository._();

  static List<WorkoutPlanModel> get mockPlans => [
    WorkoutPlanModel(
      id: 'plan_001',
      name: 'Push Pull Legs',
      description: 'Klasyczny podział Push/Pull/Legs dla średniozaawansowanych. 6 sesji tygodniowo.',
      difficulty: 'intermediate',
      daysPerWeek: 6,
      isActive: true,
      emoji: '💪',
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      days: [
        WorkoutDay(
          dayNumber: 1,
          label: 'Push - Klatka, Barki, Triceps',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[0], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[3], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[4], sets: 4, reps: 6, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[5], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[23], sets: 3, reps: 12, rir: 2),
          ],
        ),
        WorkoutDay(
          dayNumber: 2,
          label: 'Pull - Plecy, Biceps',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[10], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[7], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[8], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[19], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[20], sets: 3, reps: 12, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 3,
          label: 'Legs - Nogi, Pośladki',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[12], sets: 4, reps: 6, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[16], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[13], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[17], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[28], sets: 4, reps: 15, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 4,
          label: 'Push - Klatka, Barki, Triceps',
          isCompleted: true,
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[1], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[2], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[6], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[5], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[22], sets: 3, reps: 12, rir: 2),
          ],
        ),
        WorkoutDay(
          dayNumber: 5,
          label: 'Pull - Plecy, Biceps',
          isCompleted: true,
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[11], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[9], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[29], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[19], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[31], sets: 3, reps: 12, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 6,
          label: 'Legs - Nogi, Pośladki',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[14], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[30], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[27], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[17], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[24], sets: 3, reps: 60, rir: 0),
          ],
        ),
      ],
    ),
    WorkoutPlanModel(
      id: 'plan_002',
      name: 'Full Body Starter',
      description: 'Plan dla początkujących. 3 sesje full body w tygodniu.',
      difficulty: 'beginner',
      daysPerWeek: 3,
      emoji: '🌱',
      createdAt: DateTime.now().subtract(const Duration(days: 60)),
      days: [
        WorkoutDay(
          dayNumber: 1,
          label: 'Full Body A',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[0], sets: 3, reps: 8, rir: 3),
            PlannedExercise(exercise: ExerciseRepository.all[12], sets: 3, reps: 8, rir: 3),
            PlannedExercise(exercise: ExerciseRepository.all[8], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[5], sets: 3, reps: 15, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 2,
          label: 'Full Body B',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[4], sets: 3, reps: 8, rir: 3),
            PlannedExercise(exercise: ExerciseRepository.all[16], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[11], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[24], sets: 3, reps: 45, rir: 0),
          ],
        ),
        WorkoutDay(
          dayNumber: 3,
          label: 'Full Body C',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[1], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[14], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[7], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[19], sets: 3, reps: 12, rir: 1),
          ],
        ),
      ],
    ),
    WorkoutPlanModel(
      id: 'plan_003',
      name: 'Upper Lower Split',
      description: 'Podział górna/dolna partia ciała. 4 sesje tygodniowo.',
      difficulty: 'intermediate',
      daysPerWeek: 4,
      emoji: '🔥',
      createdAt: DateTime.now().subtract(const Duration(days: 14)),
      days: [
        WorkoutDay(
          dayNumber: 1,
          label: 'Upper A - Klatka, Plecy, Barki',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[0], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[7], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[6], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[19], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[23], sets: 3, reps: 12, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 2,
          label: 'Lower A - Nogi, Pośladki',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[12], sets: 4, reps: 6, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[16], sets: 3, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[13], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[17], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[28], sets: 4, reps: 15, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 3,
          label: 'Upper B - Klatka, Plecy, Ramiona',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[3], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[10], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[5], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[29], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[20], sets: 3, reps: 12, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 4,
          label: 'Lower B - Nogi, Pośladki, Core',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[14], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[30], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[18], sets: 3, reps: 15, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[27], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[24], sets: 3, reps: 60, rir: 0),
          ],
        ),
      ],
    ),
    WorkoutPlanModel(
      id: 'plan_004',
      name: 'Arnold Split',
      description: 'Zaawansowany podział Arnold Classic. 6 sesji tygodniowo.',
      difficulty: 'advanced',
      daysPerWeek: 6,
      emoji: '⚡',
      createdAt: DateTime.now().subtract(const Duration(days: 7)),
      days: [
        WorkoutDay(
          dayNumber: 1,
          label: 'Klatka & Plecy',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[0], sets: 4, reps: 8, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[10], sets: 4, reps: 8, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[3], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[9], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[2], sets: 3, reps: 12, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 2,
          label: 'Barki & Ramiona',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[4], sets: 4, reps: 6, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[5], sets: 3, reps: 15, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[19], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[22], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[23], sets: 3, reps: 12, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 3,
          label: 'Nogi',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[12], sets: 5, reps: 5, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[16], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[14], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[17], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[28], sets: 4, reps: 15, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 4,
          label: 'Klatka & Plecy',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[1], sets: 4, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[7], sets: 4, reps: 8, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[2], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[8], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[29], sets: 3, reps: 15, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 5,
          label: 'Barki & Ramiona',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[6], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[5], sets: 4, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[20], sets: 3, reps: 12, rir: 1),
            PlannedExercise(exercise: ExerciseRepository.all[21], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[31], sets: 3, reps: 12, rir: 1),
          ],
        ),
        WorkoutDay(
          dayNumber: 6,
          label: 'Nogi',
          exercises: [
            PlannedExercise(exercise: ExerciseRepository.all[13], sets: 4, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[30], sets: 3, reps: 10, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[15], sets: 3, reps: 12, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[18], sets: 3, reps: 15, rir: 2),
            PlannedExercise(exercise: ExerciseRepository.all[24], sets: 3, reps: 60, rir: 0),
          ],
        ),
      ],
    ),
  ];
}
