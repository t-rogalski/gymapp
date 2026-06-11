import 'dart:math';

import '../../home/domain/exercise_model.dart';
import '../../home/domain/workout_plan_model.dart';
import 'generator_config.dart';

class PlanGeneratorEngine {
  final GeneratorConfig config;
  final List<ExerciseModel> exercisePool;

  PlanGeneratorEngine({
    required this.config,
    required this.exercisePool,
  });

  WorkoutPlanModel generate() {
    final structure = _buildSessionStructure();
    final days = <WorkoutDay>[];

    for (int i = 0; i < structure.length; i++) {
      final session = structure[i];
      final exercises = _buildSession(session, i);
      days.add(WorkoutDay(
        dayNumber: i + 1,
        label: session.label,
        exercises: exercises,
      ));
    }

    final name = _generatePlanName();
    return WorkoutPlanModel(
      id: 'gen_${config.seed}_${DateTime.now().millisecondsSinceEpoch}',
      name: name,
      description: _generateDescription(),
      difficulty: config.level,
      daysPerWeek: config.daysPerWeek,
      days: days,
      isGenerated: true,
      isActive: false,
      createdAt: DateTime.now(),
      emoji: _getPlanEmoji(),
    );
  }

  List<_SessionTemplate> _buildSessionStructure() {
    if (config.daysPerWeek <= 3) {
      return _buildFullBodyStructure();
    } else if (config.daysPerWeek == 4) {
      return _buildUpperLowerStructure();
    } else {
      return _buildPushPullLegsStructure();
    }
  }

  List<_SessionTemplate> _buildFullBodyStructure() {
    final slotsPerSession = _getSlotsForLevel();
    final templates = <_SessionTemplate>[];

    for (int i = 0; i < config.daysPerWeek; i++) {
      templates.add(_SessionTemplate(
        label: 'Full Body ${_dayLetter(i)}',
        targetMuscles: ['chest', 'back', 'quads', 'glutes', 'hamstrings', 'shoulders', 'biceps', 'triceps', 'core'],
        primarySlots: 2,
        secondarySlots: slotsPerSession.secondary,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [
          MovementPattern.horizontalPush,
          MovementPattern.horizontalPull,
          MovementPattern.squat,
          MovementPattern.hinge,
        ],
      ));
    }
    return templates;
  }

  List<_SessionTemplate> _buildUpperLowerStructure() {
    final slotsPerSession = _getSlotsForLevel();
    return [
      _SessionTemplate(
        label: 'Upper A - Klatka, Plecy, Barki',
        targetMuscles: ['chest', 'back', 'shoulders', 'biceps', 'triceps'],
        primarySlots: 2,
        secondarySlots: slotsPerSession.secondary,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [MovementPattern.horizontalPush, MovementPattern.horizontalPull],
      ),
      _SessionTemplate(
        label: 'Lower A - Nogi, Pośladki',
        targetMuscles: ['quads', 'glutes', 'hamstrings', 'calves', 'core'],
        primarySlots: 2,
        secondarySlots: slotsPerSession.secondary,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [MovementPattern.squat, MovementPattern.hinge],
      ),
      _SessionTemplate(
        label: 'Upper B - Klatka, Plecy, Ramiona',
        targetMuscles: ['chest', 'back', 'shoulders', 'biceps', 'triceps'],
        primarySlots: 2,
        secondarySlots: slotsPerSession.secondary,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [MovementPattern.verticalPush, MovementPattern.verticalPull],
      ),
      _SessionTemplate(
        label: 'Lower B - Nogi, Pośladki, Core',
        targetMuscles: ['quads', 'glutes', 'hamstrings', 'calves', 'core'],
        primarySlots: 2,
        secondarySlots: slotsPerSession.secondary,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [MovementPattern.squat, MovementPattern.hinge],
      ),
    ];
  }

  List<_SessionTemplate> _buildPushPullLegsStructure() {
    final slotsPerSession = _getSlotsForLevel();
    final base = [
      _SessionTemplate(
        label: 'Push - Klatka, Barki, Triceps',
        targetMuscles: ['chest', 'shoulders', 'triceps'],
        primarySlots: 1,
        secondarySlots: slotsPerSession.secondary + 1,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [MovementPattern.horizontalPush, MovementPattern.verticalPush],
      ),
      _SessionTemplate(
        label: 'Pull - Plecy, Biceps',
        targetMuscles: ['back', 'biceps', 'forearms'],
        primarySlots: 1,
        secondarySlots: slotsPerSession.secondary + 1,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [MovementPattern.horizontalPull, MovementPattern.verticalPull],
      ),
      _SessionTemplate(
        label: 'Legs - Nogi, Pośladki',
        targetMuscles: ['quads', 'glutes', 'hamstrings', 'calves', 'core'],
        primarySlots: 2,
        secondarySlots: slotsPerSession.secondary,
        accessorySlots: slotsPerSession.accessory,
        requiredPatterns: [MovementPattern.squat, MovementPattern.hinge],
      ),
    ];

    if (config.daysPerWeek >= 6) {
      return [...base, ...base];
    }
    if (config.daysPerWeek == 5) {
      return [...base, base[0], base[1]];
    }
    return base;
  }

  _SlotCounts _getSlotsForLevel() {
    switch (config.level) {
      case 'beginner':
        return const _SlotCounts(secondary: 1, accessory: 1);
      case 'advanced':
        return const _SlotCounts(secondary: 2, accessory: 3);
      default:
        return const _SlotCounts(secondary: 2, accessory: 2);
    }
  }

  List<PlannedExercise> _buildSession(_SessionTemplate template, int dayIndex) {
    final exercises = <PlannedExercise>[];
    final usedIds = <String>{};
    int slotIndex = 0;

    // Primary slots
    for (int i = 0; i < template.primarySlots; i++) {
      final exercise = _selectExercise(
        template: template,
        role: ExerciseRole.primary,
        usedIds: usedIds,
        slotIndex: dayIndex * 100 + slotIndex,
        preferredPattern: i < template.requiredPatterns.length
            ? template.requiredPatterns[i]
            : null,
      );
      if (exercise != null) {
        usedIds.add(exercise.id);
        final setsReps = _assignSetsRepsRir(exercise, ExerciseRole.primary);
        exercises.add(setsReps);
      }
      slotIndex++;
    }

    // Secondary slots
    for (int i = 0; i < template.secondarySlots; i++) {
      final exercise = _selectExercise(
        template: template,
        role: ExerciseRole.secondary,
        usedIds: usedIds,
        slotIndex: dayIndex * 100 + slotIndex,
      );
      if (exercise != null) {
        usedIds.add(exercise.id);
        final setsReps = _assignSetsRepsRir(exercise, ExerciseRole.secondary);
        exercises.add(setsReps);
      }
      slotIndex++;
    }

    // Accessory slots
    for (int i = 0; i < template.accessorySlots; i++) {
      final exercise = _selectExercise(
        template: template,
        role: ExerciseRole.accessory,
        usedIds: usedIds,
        slotIndex: dayIndex * 100 + slotIndex,
      );
      if (exercise != null) {
        usedIds.add(exercise.id);
        final setsReps = _assignSetsRepsRir(exercise, ExerciseRole.accessory);
        exercises.add(setsReps);
      }
      slotIndex++;
    }

    return _validateFatigueBudget(exercises);
  }

  ExerciseModel? _selectExercise({
    required _SessionTemplate template,
    required ExerciseRole role,
    required Set<String> usedIds,
    required int slotIndex,
    MovementPattern? preferredPattern,
  }) {
    final candidates = _filterCandidates(template, role, usedIds, preferredPattern);
    if (candidates.isEmpty) {
      // Fallback: try without role restriction
      final fallback = _filterCandidates(template, null, usedIds, preferredPattern);
      if (fallback.isEmpty) return null;
      return _pickFromPool(fallback, slotIndex);
    }
    final scored = _scoreCandidates(candidates);
    return _pickFromPool(scored, slotIndex);
  }

  List<ExerciseModel> _filterCandidates(
    _SessionTemplate template,
    ExerciseRole? role,
    Set<String> usedIds,
    MovementPattern? preferredPattern,
  ) {
    final maxSkill = _maxSkillForLevel();

    return exercisePool.where((ex) {
      // Already used in this session
      if (usedIds.contains(ex.id)) return false;

      // Equipment check
      if (config.availableEquipment.isNotEmpty) {
        if (!config.availableEquipment.contains(ex.equipment.name) &&
            ex.equipment != Equipment.bodyweight) {
          return false;
        }
      }

      // Skill requirement
      if (ex.skillRequirement > maxSkill) return false;

      // Joint stress check for injured joints
      if (!_passesJointStressCheck(ex)) return false;

      // Role check
      if (role != null && ex.exerciseRole != role) return false;

      // Movement pattern check
      if (preferredPattern != null && ex.movementPattern != preferredPattern) {
        return false;
      }

      // Target muscles check
      final hasTargetMuscle = ex.primaryMuscles.any(
        (m) => template.targetMuscles.contains(m),
      );
      if (!hasTargetMuscle) return false;

      return true;
    }).toList();
  }

  int _maxSkillForLevel() {
    switch (config.level) {
      case 'beginner':
        return 2;
      case 'advanced':
        return 5;
      default:
        return 4;
    }
  }

  bool _passesJointStressCheck(ExerciseModel ex) {
    for (final joint in config.injuredJoints) {
      final stress = switch (joint) {
        'shoulder' => ex.jointStress.shoulder,
        'elbow' => ex.jointStress.elbow,
        'knee' => ex.jointStress.knee,
        'lowerBack' => ex.jointStress.lowerBack,
        _ => 0,
      };
      if (stress > 1) return false;
    }
    return true;
  }

  List<ExerciseModel> _scoreCandidates(List<ExerciseModel> candidates) {
    final scored = candidates.map((ex) {
      double score = ex.sfr * 2.0;
      score += (5 - ex.stability) * 1.0;
      if (config.level == 'beginner') {
        score += ex.stability * 0.5;
      }
      return _ScoredExercise(ex, score);
    }).toList();

    scored.sort((a, b) => b.score.compareTo(a.score));

    // Return top portion
    final topCount = (scored.length * 0.6).ceil().clamp(1, scored.length);
    return scored.take(topCount).map((s) => s.exercise).toList();
  }

  ExerciseModel _pickFromPool(List<ExerciseModel> pool, int slotIndex) {
    final r = Random(config.seed + slotIndex);
    return pool[r.nextInt(pool.length)];
  }

  List<PlannedExercise> _validateFatigueBudget(List<PlannedExercise> exercises) {
    final maxFatigue = switch (config.level) {
      'beginner' => 12,
      'advanced' => 20,
      _ => 16,
    };

    int totalFatigue = exercises.fold(
      0,
      (sum, pe) => sum + pe.exercise.fatigueScore,
    );

    final result = List<PlannedExercise>.from(exercises);

    while (totalFatigue > maxFatigue && result.length > 2) {
      // Remove last accessory with lowest sfr
      int worstIdx = -1;
      int worstSfr = 999;
      for (int i = result.length - 1; i >= 0; i--) {
        if (result[i].exercise.exerciseRole == ExerciseRole.accessory &&
            result[i].exercise.sfr < worstSfr) {
          worstIdx = i;
          worstSfr = result[i].exercise.sfr;
        }
      }
      if (worstIdx == -1) break;
      totalFatigue -= result[worstIdx].exercise.fatigueScore;
      result.removeAt(worstIdx);
    }

    return result;
  }

  PlannedExercise _assignSetsRepsRir(ExerciseModel exercise, ExerciseRole slotRole) {
    int sets;
    int reps;
    int rir;

    final isStrength = config.goals.contains('strength');
    final isHypertrophy = config.goals.contains('hypertrophy');

    if (slotRole == ExerciseRole.primary) {
      if (isStrength) {
        sets = 4;
        reps = 5;
        rir = 2;
      } else {
        sets = 4;
        reps = 8;
        rir = 2;
      }
    } else if (slotRole == ExerciseRole.secondary) {
      if (isStrength) {
        sets = 3;
        reps = 8;
        rir = 2;
      } else {
        sets = 3;
        reps = 10;
        rir = 2;
      }
    } else {
      // Accessory
      if (isHypertrophy) {
        sets = 3;
        reps = 15;
        rir = 1;
      } else {
        sets = 3;
        reps = 12;
        rir = 2;
      }
    }

    // Adjust for time-limited sessions
    if (config.sessionMinutes <= 30) {
      sets = (sets - 1).clamp(2, 5);
    } else if (config.sessionMinutes <= 45) {
      if (slotRole == ExerciseRole.accessory) {
        sets = (sets - 1).clamp(2, 5);
      }
    }

    // Adjust for loading scheme
    if (exercise.loadingScheme == LoadingScheme.time) {
      reps = slotRole == ExerciseRole.primary ? 45 : 30; // seconds
    } else if (exercise.loadingScheme == LoadingScheme.reps) {
      reps = (reps * 1.2).round();
    }

    return PlannedExercise(
      exercise: exercise,
      sets: sets,
      reps: reps,
      rir: rir,
    );
  }

  String _generatePlanName() {
    if (config.daysPerWeek <= 3) return 'Full Body ${config.daysPerWeek}x';
    if (config.daysPerWeek == 4) return 'Upper Lower Split';
    return 'Push Pull Legs ${config.daysPerWeek}x';
  }

  String _generateDescription() {
    final goalLabels = config.goals.map((g) => switch (g) {
      'hypertrophy' => 'budowa masy',
      'strength' => 'siła',
      'fat_loss' => 'redukcja',
      'endurance' => 'kondycja',
      _ => g,
    }).join(', ');

    return 'Plan wygenerowany dla poziomu ${config.level}, '
        '${config.daysPerWeek} dni/tydzień. Cel: $goalLabels.';
  }

  String _getPlanEmoji() {
    if (config.goals.contains('strength')) return '🏋️';
    if (config.goals.contains('fat_loss')) return '🔥';
    if (config.goals.contains('endurance')) return '⚡';
    return '💪';
  }

  String _dayLetter(int index) {
    const letters = ['A', 'B', 'C', 'D', 'E', 'F'];
    return letters[index % letters.length];
  }
}

class _SessionTemplate {
  final String label;
  final List<String> targetMuscles;
  final int primarySlots;
  final int secondarySlots;
  final int accessorySlots;
  final List<MovementPattern> requiredPatterns;

  const _SessionTemplate({
    required this.label,
    required this.targetMuscles,
    required this.primarySlots,
    required this.secondarySlots,
    required this.accessorySlots,
    required this.requiredPatterns,
  });
}

class _SlotCounts {
  final int secondary;
  final int accessory;

  const _SlotCounts({required this.secondary, required this.accessory});
}

class _ScoredExercise {
  final ExerciseModel exercise;
  final double score;

  const _ScoredExercise(this.exercise, this.score);
}
