import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../auth/presentation/providers/auth_provider.dart';
import '../../domain/workout_plan_model.dart';
import '../providers/workout_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider).valueOrNull;
    final plans = ref.watch(workoutPlansNotifierProvider);
    final active = ref.watch(activePlanProvider);
    final firstName = user?.name.split(' ').first ?? 'Użytkowniku';

    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          color: AppColors.sageMid,
          onRefresh: () async => await Future.delayed(const Duration(milliseconds: 500)),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                // Greeting
                Text(
                  'Cześć, $firstName!',
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 16),

                // Quick stats pills
                Row(
                  children: [
                    _StatPill(label: 'Seria: ${user?.currentStreak ?? 12} dni'),
                    const SizedBox(width: 8),
                    _StatPill(label: 'Sesje: ${user?.workoutsCompleted ?? 47}'),
                    const SizedBox(width: 8),
                    const _StatPill(label: 'Zmiana: -2.5kg'),
                  ],
                ),
                const SizedBox(height: 28),

                // Active plan section
                if (active != null) ...[
                  _ActivePlanCard(plan: active),
                  const SizedBox(height: 28),
                ],

                // Plans section header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Twoje Plany',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Zobacz wszystkie',
                        style: TextStyle(color: AppColors.sageDark),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),

                // Horizontal plan cards
                SizedBox(
                  height: 160,
                  child: plans.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('📋', style: TextStyle(fontSize: 40)),
                              const SizedBox(height: 8),
                              const Text(
                                'Nie masz jeszcze żadnych planów',
                                style: TextStyle(color: AppColors.textSecondary),
                              ),
                              const SizedBox(height: 8),
                              TextButton(
                                onPressed: () => context.go('/generate'),
                                child: const Text('Wygeneruj swój pierwszy plan'),
                              ),
                            ],
                          ),
                        )
                      : ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: plans.length,
                          separatorBuilder: (_, __) => const SizedBox(width: 12),
                          itemBuilder: (context, index) {
                            return _PlanCard(plan: plans[index]);
                          },
                        ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go('/generate'),
        icon: const Icon(Icons.calculate_outlined),
        label: const Text('Generator planu'),
      ),
    );
  }
}

class _StatPill extends StatelessWidget {
  final String label;
  const _StatPill({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.creamDark,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}

class _ActivePlanCard extends StatelessWidget {
  final WorkoutPlanModel plan;
  const _ActivePlanCard({required this.plan});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.warmWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.creamDark),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4,
            decoration: const BoxDecoration(
              color: AppColors.sageMid,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(plan.emoji, style: const TextStyle(fontSize: 24)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        plan.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.sageMid.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'AKTYWNY',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: AppColors.sageDark,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Week progress
                Row(
                  children: List.generate(plan.days.length.clamp(0, 6), (i) {
                    final done = plan.days[i].isCompleted;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: done ? AppColors.sageMid : AppColors.creamDark,
                        ),
                        child: Center(
                          child: done
                              ? const Icon(Icons.check, size: 14, color: AppColors.warmWhite)
                              : Text(
                                  '${i + 1}',
                                  style: const TextStyle(fontSize: 11, color: AppColors.textMuted),
                                ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => context.push('/plan/${plan.id}'),
                    child: const Text('Zacznij trening'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  final WorkoutPlanModel plan;
  const _PlanCard({required this.plan});

  Color get _difficultyColor {
    switch (plan.difficulty) {
      case 'beginner':
        return AppColors.sage;
      case 'advanced':
        return AppColors.blush;
      default:
        return AppColors.sky;
    }
  }

  String get _difficultyLabel {
    switch (plan.difficulty) {
      case 'beginner':
        return 'Początkujący';
      case 'advanced':
        return 'Zaawansowany';
      default:
        return 'Średni';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/plan/${plan.id}'),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
          color: AppColors.warmWhite,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.creamDark),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4,
              decoration: BoxDecoration(
                color: _difficultyColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(plan.emoji, style: const TextStyle(fontSize: 28)),
                  const SizedBox(height: 8),
                  Text(
                    plan.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: _difficultyColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          _difficultyLabel,
                          style: TextStyle(fontSize: 10, color: _difficultyColor),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${plan.daysPerWeek}x/tyg',
                        style: const TextStyle(
                          fontSize: 11,
                          color: AppColors.textMuted,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
