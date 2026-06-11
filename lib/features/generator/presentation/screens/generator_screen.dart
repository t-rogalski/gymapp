import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/loading_overlay.dart';
import '../../../home/presentation/providers/workout_provider.dart';
import '../providers/generator_provider.dart';

class GeneratorScreen extends ConsumerWidget {
  const GeneratorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(generatorNotifierProvider);
    final notifier = ref.read(generatorNotifierProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              const Text(
                'Generator Planu',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Dostosuj parametry i wygeneruj swój plan',
                style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 28),

              // Goals section
              _SectionHeader(title: 'Twój cel'),
              const SizedBox(height: 12),
              _GoalChips(
                selected: config.goals,
                onChanged: (goals) => notifier.updateGoals(goals),
              ),
              const SizedBox(height: 24),

              // Level section
              _SectionHeader(title: 'Poziom zaawansowania'),
              const SizedBox(height: 12),
              _LevelSelector(
                selected: config.level,
                onChanged: (level) => notifier.updateLevel(level),
              ),
              const SizedBox(height: 24),

              // Days section
              _SectionHeader(title: 'Dni treningowe'),
              const SizedBox(height: 12),
              _DaysSlider(
                value: config.daysPerWeek,
                onChanged: (days) => notifier.updateDays(days),
              ),
              const SizedBox(height: 24),

              // Equipment section
              _SectionHeader(title: 'Dostępny sprzęt'),
              const SizedBox(height: 12),
              _EquipmentGrid(
                selected: config.availableEquipment,
                onChanged: (equip) => notifier.updateEquipment(equip),
              ),
              const SizedBox(height: 24),

              // Session duration
              _SectionHeader(title: 'Czas treningu'),
              const SizedBox(height: 12),
              _DurationSelector(
                selected: config.sessionMinutes,
                onChanged: (min) => notifier.updateSessionMinutes(min),
              ),
              const SizedBox(height: 24),

              // Injured joints
              _SectionHeader(title: 'Kontuzje / odciążenie stawów'),
              const SizedBox(height: 12),
              _InjuryGrid(
                selected: config.injuredJoints,
                onChanged: (joints) => notifier.updateInjuredJoints(joints),
              ),
              const SizedBox(height: 32),

              // Generate button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () => _generate(context, ref),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calculate_outlined),
                      SizedBox(width: 8),
                      Text('Generuj Plan', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _generate(BuildContext context, WidgetRef ref) async {
    LoadingOverlay.show(context);
    try {
      final plan = await ref.read(generatorNotifierProvider.notifier).generate();
      if (!context.mounted) return;
      LoadingOverlay.hide(context);
      ref.read(workoutPlansNotifierProvider.notifier).addGeneratedPlan(plan);
      context.push('/plan/${plan.id}');
    } catch (e) {
      if (!context.mounted) return;
      LoadingOverlay.hide(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Błąd generowania: $e'),
          backgroundColor: Colors.red.shade400,
        ),
      );
    }
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
    );
  }
}

class _GoalChips extends StatelessWidget {
  final List<String> selected;
  final ValueChanged<List<String>> onChanged;
  const _GoalChips({required this.selected, required this.onChanged});

  static const _goals = {
    'hypertrophy': 'Budowa masy',
    'fat_loss': 'Redukcja',
    'strength': 'Siła',
    'endurance': 'Kondycja',
  };

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _goals.entries.map((e) {
        final isSelected = selected.contains(e.key);
        return ChoiceChip(
          label: Text(e.value),
          selected: isSelected,
          onSelected: (_) {
            final newList = List<String>.from(selected);
            if (isSelected) {
              newList.remove(e.key);
            } else {
              newList.add(e.key);
            }
            onChanged(newList);
          },
          backgroundColor: AppColors.creamDark,
          selectedColor: AppColors.sage,
          labelStyle: TextStyle(
            color: isSelected ? AppColors.warmWhite : AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide.none,
        );
      }).toList(),
    );
  }
}

class _LevelSelector extends StatelessWidget {
  final String selected;
  final ValueChanged<String> onChanged;
  const _LevelSelector({required this.selected, required this.onChanged});

  static const _levels = [
    ('beginner', 'Początkujący', '🌱'),
    ('intermediate', 'Średniozaawansowany', '💪'),
    ('advanced', 'Zaawansowany', '🔥'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _levels.map((l) {
        final isSelected = selected == l.$1;
        return Expanded(
          child: GestureDetector(
            onTap: () => onChanged(l.$1),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.sage.withValues(alpha: 0.1) : AppColors.warmWhite,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected ? AppColors.sageDark : AppColors.creamDark,
                  width: isSelected ? 2 : 1,
                ),
              ),
              child: Column(
                children: [
                  Text(l.$3, style: const TextStyle(fontSize: 20)),
                  const SizedBox(height: 6),
                  Text(
                    l.$2,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                      color: isSelected ? AppColors.sageDark : AppColors.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _DaysSlider extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;
  const _DaysSlider({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$value dni / tydzień',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.sageDark,
          ),
        ),
        Slider(
          value: value.toDouble(),
          min: 2,
          max: 6,
          divisions: 4,
          activeColor: AppColors.sageMid,
          onChanged: (v) => onChanged(v.round()),
        ),
      ],
    );
  }
}

class _EquipmentGrid extends StatelessWidget {
  final List<String> selected;
  final ValueChanged<List<String>> onChanged;
  const _EquipmentGrid({required this.selected, required this.onChanged});

  static const _equipment = {
    'barbell': 'Sztanga',
    'dumbbell': 'Hantle',
    'machine': 'Maszyny',
    'cable': 'Wyciąg',
    'kettlebell': 'Kettlebell',
    'pullUpBar': 'Drążek',
    'bodyweight': 'Bez sprzętu',
  };

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _equipment.entries.map((e) {
        final isSelected = selected.contains(e.key);
        return FilterChip(
          label: Text(e.value),
          selected: isSelected,
          onSelected: (_) {
            final newList = List<String>.from(selected);
            if (isSelected) {
              newList.remove(e.key);
            } else {
              newList.add(e.key);
            }
            onChanged(newList);
          },
          backgroundColor: AppColors.creamDark,
          selectedColor: AppColors.sage.withValues(alpha: 0.3),
          checkmarkColor: AppColors.sageDark,
          labelStyle: TextStyle(
            color: isSelected ? AppColors.sageDark : AppColors.textPrimary,
            fontSize: 13,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: BorderSide(
            color: isSelected ? AppColors.sageMid : Colors.transparent,
          ),
        );
      }).toList(),
    );
  }
}

class _DurationSelector extends StatelessWidget {
  final int selected;
  final ValueChanged<int> onChanged;
  const _DurationSelector({required this.selected, required this.onChanged});

  static const _options = [30, 45, 60, 90];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _options.map((min) {
        final isSelected = selected == min;
        return Expanded(
          child: GestureDetector(
            onTap: () => onChanged(min),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.sage : AppColors.creamDark,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  min == 90 ? '90+ min' : '$min min',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? AppColors.warmWhite : AppColors.textPrimary,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _InjuryGrid extends StatelessWidget {
  final List<String> selected;
  final ValueChanged<List<String>> onChanged;
  const _InjuryGrid({required this.selected, required this.onChanged});

  static const _joints = {
    'shoulder': 'Bark',
    'elbow': 'Łokieć',
    'knee': 'Kolano',
    'lowerBack': 'Dolny odcinek pleców',
  };

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: _joints.entries.map((e) {
        final isSelected = selected.contains(e.key);
        return FilterChip(
          label: Text(e.value),
          selected: isSelected,
          onSelected: (_) {
            final newList = List<String>.from(selected);
            if (isSelected) {
              newList.remove(e.key);
            } else {
              newList.add(e.key);
            }
            onChanged(newList);
          },
          backgroundColor: AppColors.creamDark,
          selectedColor: AppColors.blush.withValues(alpha: 0.3),
          checkmarkColor: AppColors.blushDark,
          labelStyle: TextStyle(
            color: isSelected ? AppColors.blushDark : AppColors.textPrimary,
            fontSize: 13,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: BorderSide(
            color: isSelected ? AppColors.blushDark : Colors.transparent,
          ),
        );
      }).toList(),
    );
  }
}
