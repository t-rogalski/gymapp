import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/workout_plan_model.dart';
import '../../domain/exercise_model.dart';
import '../providers/workout_provider.dart';

class PlanDetailScreen extends ConsumerWidget {
  final String planId;
  const PlanDetailScreen({super.key, required this.planId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final plans = ref.watch(workoutPlansNotifierProvider);
    final plan = plans.where((p) => p.id == planId).firstOrNull;

    if (plan == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Plan')),
        body: const Center(child: Text('Plan nie znaleziony')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(plan.name),
        actions: [
          if (!plan.isActive)
            TextButton(
              onPressed: () {
                ref.read(workoutPlansNotifierProvider.notifier).setActive(plan.id);
              },
              child: const Text('Ustaw aktywny',
                  style: TextStyle(color: AppColors.sageDark)),
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Text(plan.emoji, style: const TextStyle(fontSize: 48)),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        plan.name,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        plan.description,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Info chips
            Row(
              children: [
                _InfoChip(
                  label: _difficultyLabel(plan.difficulty),
                  color: _difficultyColor(plan.difficulty),
                ),
                const SizedBox(width: 8),
                _InfoChip(
                  label: '${plan.daysPerWeek} dni/tydzień',
                  color: AppColors.sky,
                ),
                if (plan.isGenerated) ...[
                  const SizedBox(width: 8),
                  const _InfoChip(label: 'Wygenerowany', color: AppColors.lavender),
                ],
              ],
            ),
            const SizedBox(height: 24),

            // Days
            ...plan.days.map((day) => _DayExpansionTile(day: day)),
          ],
        ),
      ),
    );
  }

  String _difficultyLabel(String d) {
    switch (d) {
      case 'beginner':
        return 'Początkujący';
      case 'advanced':
        return 'Zaawansowany';
      default:
        return 'Średniozaawansowany';
    }
  }

  Color _difficultyColor(String d) {
    switch (d) {
      case 'beginner':
        return AppColors.sage;
      case 'advanced':
        return AppColors.blush;
      default:
        return AppColors.sky;
    }
  }
}

class _InfoChip extends StatelessWidget {
  final String label;
  final Color color;
  const _InfoChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: color),
      ),
    );
  }
}

class _DayExpansionTile extends StatelessWidget {
  final WorkoutDay day;
  const _DayExpansionTile({required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: AppColors.warmWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.creamDark),
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 16),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        leading: day.isCompleted
            ? const Icon(Icons.check_circle, color: AppColors.sageMid, size: 20)
            : Text('${day.dayNumber}',
                style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textMuted)),
        title: Text(
          day.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        subtitle: Text(
          '${day.exercises.length} ćwiczeń',
          style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
        ),
        children: day.exercises.map((pe) => _ExerciseTile(planned: pe)).toList(),
      ),
    );
  }
}

class _ExerciseTile extends StatelessWidget {
  final PlannedExercise planned;
  const _ExerciseTile({required this.planned});

  String _patternLabel(MovementPattern p) {
    switch (p) {
      case MovementPattern.horizontalPush:
        return 'H. Push';
      case MovementPattern.horizontalPull:
        return 'H. Pull';
      case MovementPattern.verticalPush:
        return 'V. Push';
      case MovementPattern.verticalPull:
        return 'V. Pull';
      case MovementPattern.squat:
        return 'Squat';
      case MovementPattern.hinge:
        return 'Hinge';
      case MovementPattern.carry:
        return 'Carry';
      case MovementPattern.isolation:
        return 'Isolation';
    }
  }

  @override
  Widget build(BuildContext context) {
    final ex = planned.exercise;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Text(ex.emojiIcon, style: const TextStyle(fontSize: 18)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ex.name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      '${planned.sets}×${planned.reps}',
                      style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                    ),
                    if (planned.rir > 0) ...[
                      const Text(' • ', style: TextStyle(color: AppColors.textMuted)),
                      Text(
                        'RIR ${planned.rir}',
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.creamDark,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              _patternLabel(ex.movementPattern),
              style: const TextStyle(fontSize: 9, color: AppColors.textMuted),
            ),
          ),
          const SizedBox(width: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.sage.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              ex.primaryMuscles.first,
              style: const TextStyle(fontSize: 9, color: AppColors.sageDark),
            ),
          ),
        ],
      ),
    );
  }
}
