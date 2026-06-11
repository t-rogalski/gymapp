import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/workout_plan_model.dart';
import '../../data/workout_repository.dart';

part 'workout_provider.g.dart';

@riverpod
class WorkoutPlansNotifier extends _$WorkoutPlansNotifier {
  @override
  List<WorkoutPlanModel> build() => WorkoutRepository.mockPlans;

  void setActive(String planId) {
    state = state.map((plan) {
      if (plan.id == planId) {
        return plan.copyWith(isActive: true);
      }
      return plan.copyWith(isActive: false);
    }).toList();
  }

  void addGeneratedPlan(WorkoutPlanModel plan) {
    state = [plan, ...state];
  }
}

@riverpod
WorkoutPlanModel? activePlan(ActivePlanRef ref) {
  final plans = ref.watch(workoutPlansNotifierProvider);
  return plans.firstWhereOrNull((p) => p.isActive);
}
