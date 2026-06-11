// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkoutPlanModel _$WorkoutPlanModelFromJson(Map<String, dynamic> json) {
  return _WorkoutPlanModel.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPlanModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  int get daysPerWeek => throw _privateConstructorUsedError;
  List<WorkoutDay> get days => throw _privateConstructorUsedError;
  bool get isGenerated => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;

  /// Serializes this WorkoutPlanModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutPlanModelCopyWith<WorkoutPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanModelCopyWith<$Res> {
  factory $WorkoutPlanModelCopyWith(
    WorkoutPlanModel value,
    $Res Function(WorkoutPlanModel) then,
  ) = _$WorkoutPlanModelCopyWithImpl<$Res, WorkoutPlanModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String difficulty,
    int daysPerWeek,
    List<WorkoutDay> days,
    bool isGenerated,
    bool isActive,
    DateTime? createdAt,
    String emoji,
  });
}

/// @nodoc
class _$WorkoutPlanModelCopyWithImpl<$Res, $Val extends WorkoutPlanModel>
    implements $WorkoutPlanModelCopyWith<$Res> {
  _$WorkoutPlanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? difficulty = null,
    Object? daysPerWeek = null,
    Object? days = null,
    Object? isGenerated = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? emoji = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            difficulty: null == difficulty
                ? _value.difficulty
                : difficulty // ignore: cast_nullable_to_non_nullable
                      as String,
            daysPerWeek: null == daysPerWeek
                ? _value.daysPerWeek
                : daysPerWeek // ignore: cast_nullable_to_non_nullable
                      as int,
            days: null == days
                ? _value.days
                : days // ignore: cast_nullable_to_non_nullable
                      as List<WorkoutDay>,
            isGenerated: null == isGenerated
                ? _value.isGenerated
                : isGenerated // ignore: cast_nullable_to_non_nullable
                      as bool,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            emoji: null == emoji
                ? _value.emoji
                : emoji // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkoutPlanModelImplCopyWith<$Res>
    implements $WorkoutPlanModelCopyWith<$Res> {
  factory _$$WorkoutPlanModelImplCopyWith(
    _$WorkoutPlanModelImpl value,
    $Res Function(_$WorkoutPlanModelImpl) then,
  ) = __$$WorkoutPlanModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    String difficulty,
    int daysPerWeek,
    List<WorkoutDay> days,
    bool isGenerated,
    bool isActive,
    DateTime? createdAt,
    String emoji,
  });
}

/// @nodoc
class __$$WorkoutPlanModelImplCopyWithImpl<$Res>
    extends _$WorkoutPlanModelCopyWithImpl<$Res, _$WorkoutPlanModelImpl>
    implements _$$WorkoutPlanModelImplCopyWith<$Res> {
  __$$WorkoutPlanModelImplCopyWithImpl(
    _$WorkoutPlanModelImpl _value,
    $Res Function(_$WorkoutPlanModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? difficulty = null,
    Object? daysPerWeek = null,
    Object? days = null,
    Object? isGenerated = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? emoji = null,
  }) {
    return _then(
      _$WorkoutPlanModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        difficulty: null == difficulty
            ? _value.difficulty
            : difficulty // ignore: cast_nullable_to_non_nullable
                  as String,
        daysPerWeek: null == daysPerWeek
            ? _value.daysPerWeek
            : daysPerWeek // ignore: cast_nullable_to_non_nullable
                  as int,
        days: null == days
            ? _value._days
            : days // ignore: cast_nullable_to_non_nullable
                  as List<WorkoutDay>,
        isGenerated: null == isGenerated
            ? _value.isGenerated
            : isGenerated // ignore: cast_nullable_to_non_nullable
                  as bool,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        emoji: null == emoji
            ? _value.emoji
            : emoji // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutPlanModelImpl implements _WorkoutPlanModel {
  const _$WorkoutPlanModelImpl({
    required this.id,
    required this.name,
    required this.description,
    required this.difficulty,
    required this.daysPerWeek,
    required final List<WorkoutDay> days,
    this.isGenerated = false,
    this.isActive = false,
    this.createdAt,
    this.emoji = '',
  }) : _days = days;

  factory _$WorkoutPlanModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutPlanModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String difficulty;
  @override
  final int daysPerWeek;
  final List<WorkoutDay> _days;
  @override
  List<WorkoutDay> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  @JsonKey()
  final bool isGenerated;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime? createdAt;
  @override
  @JsonKey()
  final String emoji;

  @override
  String toString() {
    return 'WorkoutPlanModel(id: $id, name: $name, description: $description, difficulty: $difficulty, daysPerWeek: $daysPerWeek, days: $days, isGenerated: $isGenerated, isActive: $isActive, createdAt: $createdAt, emoji: $emoji)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutPlanModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.daysPerWeek, daysPerWeek) ||
                other.daysPerWeek == daysPerWeek) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.isGenerated, isGenerated) ||
                other.isGenerated == isGenerated) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.emoji, emoji) || other.emoji == emoji));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    difficulty,
    daysPerWeek,
    const DeepCollectionEquality().hash(_days),
    isGenerated,
    isActive,
    createdAt,
    emoji,
  );

  /// Create a copy of WorkoutPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPlanModelImplCopyWith<_$WorkoutPlanModelImpl> get copyWith =>
      __$$WorkoutPlanModelImplCopyWithImpl<_$WorkoutPlanModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutPlanModelImplToJson(this);
  }
}

abstract class _WorkoutPlanModel implements WorkoutPlanModel {
  const factory _WorkoutPlanModel({
    required final String id,
    required final String name,
    required final String description,
    required final String difficulty,
    required final int daysPerWeek,
    required final List<WorkoutDay> days,
    final bool isGenerated,
    final bool isActive,
    final DateTime? createdAt,
    final String emoji,
  }) = _$WorkoutPlanModelImpl;

  factory _WorkoutPlanModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutPlanModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get difficulty;
  @override
  int get daysPerWeek;
  @override
  List<WorkoutDay> get days;
  @override
  bool get isGenerated;
  @override
  bool get isActive;
  @override
  DateTime? get createdAt;
  @override
  String get emoji;

  /// Create a copy of WorkoutPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutPlanModelImplCopyWith<_$WorkoutPlanModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkoutDay _$WorkoutDayFromJson(Map<String, dynamic> json) {
  return _WorkoutDay.fromJson(json);
}

/// @nodoc
mixin _$WorkoutDay {
  int get dayNumber => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  List<PlannedExercise> get exercises => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this WorkoutDay to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutDayCopyWith<WorkoutDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDayCopyWith<$Res> {
  factory $WorkoutDayCopyWith(
    WorkoutDay value,
    $Res Function(WorkoutDay) then,
  ) = _$WorkoutDayCopyWithImpl<$Res, WorkoutDay>;
  @useResult
  $Res call({
    int dayNumber,
    String label,
    List<PlannedExercise> exercises,
    bool isCompleted,
  });
}

/// @nodoc
class _$WorkoutDayCopyWithImpl<$Res, $Val extends WorkoutDay>
    implements $WorkoutDayCopyWith<$Res> {
  _$WorkoutDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? label = null,
    Object? exercises = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _value.copyWith(
            dayNumber: null == dayNumber
                ? _value.dayNumber
                : dayNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            label: null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String,
            exercises: null == exercises
                ? _value.exercises
                : exercises // ignore: cast_nullable_to_non_nullable
                      as List<PlannedExercise>,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkoutDayImplCopyWith<$Res>
    implements $WorkoutDayCopyWith<$Res> {
  factory _$$WorkoutDayImplCopyWith(
    _$WorkoutDayImpl value,
    $Res Function(_$WorkoutDayImpl) then,
  ) = __$$WorkoutDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int dayNumber,
    String label,
    List<PlannedExercise> exercises,
    bool isCompleted,
  });
}

/// @nodoc
class __$$WorkoutDayImplCopyWithImpl<$Res>
    extends _$WorkoutDayCopyWithImpl<$Res, _$WorkoutDayImpl>
    implements _$$WorkoutDayImplCopyWith<$Res> {
  __$$WorkoutDayImplCopyWithImpl(
    _$WorkoutDayImpl _value,
    $Res Function(_$WorkoutDayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? label = null,
    Object? exercises = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _$WorkoutDayImpl(
        dayNumber: null == dayNumber
            ? _value.dayNumber
            : dayNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        label: null == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String,
        exercises: null == exercises
            ? _value._exercises
            : exercises // ignore: cast_nullable_to_non_nullable
                  as List<PlannedExercise>,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutDayImpl implements _WorkoutDay {
  const _$WorkoutDayImpl({
    required this.dayNumber,
    required this.label,
    required final List<PlannedExercise> exercises,
    this.isCompleted = false,
  }) : _exercises = exercises;

  factory _$WorkoutDayImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutDayImplFromJson(json);

  @override
  final int dayNumber;
  @override
  final String label;
  final List<PlannedExercise> _exercises;
  @override
  List<PlannedExercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'WorkoutDay(dayNumber: $dayNumber, label: $label, exercises: $exercises, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutDayImpl &&
            (identical(other.dayNumber, dayNumber) ||
                other.dayNumber == dayNumber) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(
              other._exercises,
              _exercises,
            ) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dayNumber,
    label,
    const DeepCollectionEquality().hash(_exercises),
    isCompleted,
  );

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutDayImplCopyWith<_$WorkoutDayImpl> get copyWith =>
      __$$WorkoutDayImplCopyWithImpl<_$WorkoutDayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutDayImplToJson(this);
  }
}

abstract class _WorkoutDay implements WorkoutDay {
  const factory _WorkoutDay({
    required final int dayNumber,
    required final String label,
    required final List<PlannedExercise> exercises,
    final bool isCompleted,
  }) = _$WorkoutDayImpl;

  factory _WorkoutDay.fromJson(Map<String, dynamic> json) =
      _$WorkoutDayImpl.fromJson;

  @override
  int get dayNumber;
  @override
  String get label;
  @override
  List<PlannedExercise> get exercises;
  @override
  bool get isCompleted;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutDayImplCopyWith<_$WorkoutDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlannedExercise _$PlannedExerciseFromJson(Map<String, dynamic> json) {
  return _PlannedExercise.fromJson(json);
}

/// @nodoc
mixin _$PlannedExercise {
  ExerciseModel get exercise => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  int get rir => throw _privateConstructorUsedError;

  /// Serializes this PlannedExercise to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlannedExercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlannedExerciseCopyWith<PlannedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlannedExerciseCopyWith<$Res> {
  factory $PlannedExerciseCopyWith(
    PlannedExercise value,
    $Res Function(PlannedExercise) then,
  ) = _$PlannedExerciseCopyWithImpl<$Res, PlannedExercise>;
  @useResult
  $Res call({ExerciseModel exercise, int sets, int reps, int rir});

  $ExerciseModelCopyWith<$Res> get exercise;
}

/// @nodoc
class _$PlannedExerciseCopyWithImpl<$Res, $Val extends PlannedExercise>
    implements $PlannedExerciseCopyWith<$Res> {
  _$PlannedExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlannedExercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
    Object? sets = null,
    Object? reps = null,
    Object? rir = null,
  }) {
    return _then(
      _value.copyWith(
            exercise: null == exercise
                ? _value.exercise
                : exercise // ignore: cast_nullable_to_non_nullable
                      as ExerciseModel,
            sets: null == sets
                ? _value.sets
                : sets // ignore: cast_nullable_to_non_nullable
                      as int,
            reps: null == reps
                ? _value.reps
                : reps // ignore: cast_nullable_to_non_nullable
                      as int,
            rir: null == rir
                ? _value.rir
                : rir // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of PlannedExercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExerciseModelCopyWith<$Res> get exercise {
    return $ExerciseModelCopyWith<$Res>(_value.exercise, (value) {
      return _then(_value.copyWith(exercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlannedExerciseImplCopyWith<$Res>
    implements $PlannedExerciseCopyWith<$Res> {
  factory _$$PlannedExerciseImplCopyWith(
    _$PlannedExerciseImpl value,
    $Res Function(_$PlannedExerciseImpl) then,
  ) = __$$PlannedExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExerciseModel exercise, int sets, int reps, int rir});

  @override
  $ExerciseModelCopyWith<$Res> get exercise;
}

/// @nodoc
class __$$PlannedExerciseImplCopyWithImpl<$Res>
    extends _$PlannedExerciseCopyWithImpl<$Res, _$PlannedExerciseImpl>
    implements _$$PlannedExerciseImplCopyWith<$Res> {
  __$$PlannedExerciseImplCopyWithImpl(
    _$PlannedExerciseImpl _value,
    $Res Function(_$PlannedExerciseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlannedExercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exercise = null,
    Object? sets = null,
    Object? reps = null,
    Object? rir = null,
  }) {
    return _then(
      _$PlannedExerciseImpl(
        exercise: null == exercise
            ? _value.exercise
            : exercise // ignore: cast_nullable_to_non_nullable
                  as ExerciseModel,
        sets: null == sets
            ? _value.sets
            : sets // ignore: cast_nullable_to_non_nullable
                  as int,
        reps: null == reps
            ? _value.reps
            : reps // ignore: cast_nullable_to_non_nullable
                  as int,
        rir: null == rir
            ? _value.rir
            : rir // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlannedExerciseImpl implements _PlannedExercise {
  const _$PlannedExerciseImpl({
    required this.exercise,
    required this.sets,
    required this.reps,
    this.rir = 2,
  });

  factory _$PlannedExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlannedExerciseImplFromJson(json);

  @override
  final ExerciseModel exercise;
  @override
  final int sets;
  @override
  final int reps;
  @override
  @JsonKey()
  final int rir;

  @override
  String toString() {
    return 'PlannedExercise(exercise: $exercise, sets: $sets, reps: $reps, rir: $rir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlannedExerciseImpl &&
            (identical(other.exercise, exercise) ||
                other.exercise == exercise) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.rir, rir) || other.rir == rir));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, exercise, sets, reps, rir);

  /// Create a copy of PlannedExercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlannedExerciseImplCopyWith<_$PlannedExerciseImpl> get copyWith =>
      __$$PlannedExerciseImplCopyWithImpl<_$PlannedExerciseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlannedExerciseImplToJson(this);
  }
}

abstract class _PlannedExercise implements PlannedExercise {
  const factory _PlannedExercise({
    required final ExerciseModel exercise,
    required final int sets,
    required final int reps,
    final int rir,
  }) = _$PlannedExerciseImpl;

  factory _PlannedExercise.fromJson(Map<String, dynamic> json) =
      _$PlannedExerciseImpl.fromJson;

  @override
  ExerciseModel get exercise;
  @override
  int get sets;
  @override
  int get reps;
  @override
  int get rir;

  /// Create a copy of PlannedExercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlannedExerciseImplCopyWith<_$PlannedExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
