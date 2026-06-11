// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activePlanHash() => r'70317ab8f86f082f22145494705d7b252b1ddc92';

/// See also [activePlan].
@ProviderFor(activePlan)
final activePlanProvider = AutoDisposeProvider<WorkoutPlanModel?>.internal(
  activePlan,
  name: r'activePlanProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$activePlanHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ActivePlanRef = AutoDisposeProviderRef<WorkoutPlanModel?>;
String _$workoutPlansNotifierHash() =>
    r'bfcf63f415d297ec8e3d57a128f8b59b5a42a4fb';

/// See also [WorkoutPlansNotifier].
@ProviderFor(WorkoutPlansNotifier)
final workoutPlansNotifierProvider =
    AutoDisposeNotifierProvider<
      WorkoutPlansNotifier,
      List<WorkoutPlanModel>
    >.internal(
      WorkoutPlansNotifier.new,
      name: r'workoutPlansNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$workoutPlansNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$WorkoutPlansNotifier = AutoDisposeNotifier<List<WorkoutPlanModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
