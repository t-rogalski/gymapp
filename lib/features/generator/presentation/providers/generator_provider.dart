import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/generator_config.dart';
import '../../domain/plan_generator_engine.dart';
import '../../../home/data/exercise_repository.dart';
import '../../../home/domain/workout_plan_model.dart';

part 'generator_provider.g.dart';

@riverpod
class GeneratorNotifier extends _$GeneratorNotifier {
  @override
  GeneratorConfig build() => const GeneratorConfig();

  void updateGoals(List<String> goals) {
    state = state.copyWith(goals: goals);
  }

  void updateLevel(String level) {
    state = state.copyWith(level: level);
  }

  void updateDays(int days) {
    state = state.copyWith(daysPerWeek: days);
  }

  void updateEquipment(List<String> equipment) {
    state = state.copyWith(availableEquipment: equipment);
  }

  void updateSessionMinutes(int minutes) {
    state = state.copyWith(sessionMinutes: minutes);
  }

  void updateInjuredJoints(List<String> joints) {
    state = state.copyWith(injuredJoints: joints);
  }

  Future<WorkoutPlanModel> generate() async {
    final seed = DateTime.now().millisecondsSinceEpoch;
    final configWithSeed = state.copyWith(seed: seed);
    final engine = PlanGeneratorEngine(
      config: configWithSeed,
      exercisePool: ExerciseRepository.all,
    );
    await Future.delayed(const Duration(milliseconds: 400));
    return engine.generate();
  }
}
