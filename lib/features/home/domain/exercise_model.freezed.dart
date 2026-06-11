// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JointStress _$JointStressFromJson(Map<String, dynamic> json) {
  return _JointStress.fromJson(json);
}

/// @nodoc
mixin _$JointStress {
  int get shoulder => throw _privateConstructorUsedError;
  int get elbow => throw _privateConstructorUsedError;
  int get knee => throw _privateConstructorUsedError;
  int get lowerBack => throw _privateConstructorUsedError;

  /// Serializes this JointStress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JointStress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JointStressCopyWith<JointStress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JointStressCopyWith<$Res> {
  factory $JointStressCopyWith(
    JointStress value,
    $Res Function(JointStress) then,
  ) = _$JointStressCopyWithImpl<$Res, JointStress>;
  @useResult
  $Res call({int shoulder, int elbow, int knee, int lowerBack});
}

/// @nodoc
class _$JointStressCopyWithImpl<$Res, $Val extends JointStress>
    implements $JointStressCopyWith<$Res> {
  _$JointStressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JointStress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoulder = null,
    Object? elbow = null,
    Object? knee = null,
    Object? lowerBack = null,
  }) {
    return _then(
      _value.copyWith(
            shoulder: null == shoulder
                ? _value.shoulder
                : shoulder // ignore: cast_nullable_to_non_nullable
                      as int,
            elbow: null == elbow
                ? _value.elbow
                : elbow // ignore: cast_nullable_to_non_nullable
                      as int,
            knee: null == knee
                ? _value.knee
                : knee // ignore: cast_nullable_to_non_nullable
                      as int,
            lowerBack: null == lowerBack
                ? _value.lowerBack
                : lowerBack // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JointStressImplCopyWith<$Res>
    implements $JointStressCopyWith<$Res> {
  factory _$$JointStressImplCopyWith(
    _$JointStressImpl value,
    $Res Function(_$JointStressImpl) then,
  ) = __$$JointStressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int shoulder, int elbow, int knee, int lowerBack});
}

/// @nodoc
class __$$JointStressImplCopyWithImpl<$Res>
    extends _$JointStressCopyWithImpl<$Res, _$JointStressImpl>
    implements _$$JointStressImplCopyWith<$Res> {
  __$$JointStressImplCopyWithImpl(
    _$JointStressImpl _value,
    $Res Function(_$JointStressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JointStress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoulder = null,
    Object? elbow = null,
    Object? knee = null,
    Object? lowerBack = null,
  }) {
    return _then(
      _$JointStressImpl(
        shoulder: null == shoulder
            ? _value.shoulder
            : shoulder // ignore: cast_nullable_to_non_nullable
                  as int,
        elbow: null == elbow
            ? _value.elbow
            : elbow // ignore: cast_nullable_to_non_nullable
                  as int,
        knee: null == knee
            ? _value.knee
            : knee // ignore: cast_nullable_to_non_nullable
                  as int,
        lowerBack: null == lowerBack
            ? _value.lowerBack
            : lowerBack // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JointStressImpl implements _JointStress {
  const _$JointStressImpl({
    this.shoulder = 0,
    this.elbow = 0,
    this.knee = 0,
    this.lowerBack = 0,
  });

  factory _$JointStressImpl.fromJson(Map<String, dynamic> json) =>
      _$$JointStressImplFromJson(json);

  @override
  @JsonKey()
  final int shoulder;
  @override
  @JsonKey()
  final int elbow;
  @override
  @JsonKey()
  final int knee;
  @override
  @JsonKey()
  final int lowerBack;

  @override
  String toString() {
    return 'JointStress(shoulder: $shoulder, elbow: $elbow, knee: $knee, lowerBack: $lowerBack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JointStressImpl &&
            (identical(other.shoulder, shoulder) ||
                other.shoulder == shoulder) &&
            (identical(other.elbow, elbow) || other.elbow == elbow) &&
            (identical(other.knee, knee) || other.knee == knee) &&
            (identical(other.lowerBack, lowerBack) ||
                other.lowerBack == lowerBack));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shoulder, elbow, knee, lowerBack);

  /// Create a copy of JointStress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JointStressImplCopyWith<_$JointStressImpl> get copyWith =>
      __$$JointStressImplCopyWithImpl<_$JointStressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JointStressImplToJson(this);
  }
}

abstract class _JointStress implements JointStress {
  const factory _JointStress({
    final int shoulder,
    final int elbow,
    final int knee,
    final int lowerBack,
  }) = _$JointStressImpl;

  factory _JointStress.fromJson(Map<String, dynamic> json) =
      _$JointStressImpl.fromJson;

  @override
  int get shoulder;
  @override
  int get elbow;
  @override
  int get knee;
  @override
  int get lowerBack;

  /// Create a copy of JointStress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JointStressImplCopyWith<_$JointStressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExerciseModel _$ExerciseModelFromJson(Map<String, dynamic> json) {
  return _ExerciseModel.fromJson(json);
}

/// @nodoc
mixin _$ExerciseModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get primaryMuscles => throw _privateConstructorUsedError;
  List<String> get secondaryMuscles => throw _privateConstructorUsedError;
  MovementPattern get movementPattern => throw _privateConstructorUsedError;
  ExerciseRole get exerciseRole => throw _privateConstructorUsedError;
  Equipment get equipment => throw _privateConstructorUsedError;
  Laterality get laterality => throw _privateConstructorUsedError;
  int get fatigueScore => throw _privateConstructorUsedError;
  int get recoveryCost => throw _privateConstructorUsedError;
  int get axialLoad => throw _privateConstructorUsedError;
  int get stability => throw _privateConstructorUsedError;
  int get skillRequirement => throw _privateConstructorUsedError;
  int get sfr => throw _privateConstructorUsedError;
  LengthBias get lengthBias => throw _privateConstructorUsedError;
  LoadingScheme get loadingScheme => throw _privateConstructorUsedError;
  JointStress get jointStress => throw _privateConstructorUsedError;
  int get sets => throw _privateConstructorUsedError;
  int get reps => throw _privateConstructorUsedError;
  int get restSeconds => throw _privateConstructorUsedError;
  String get emojiIcon => throw _privateConstructorUsedError;

  /// Serializes this ExerciseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseModelCopyWith<ExerciseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseModelCopyWith<$Res> {
  factory $ExerciseModelCopyWith(
    ExerciseModel value,
    $Res Function(ExerciseModel) then,
  ) = _$ExerciseModelCopyWithImpl<$Res, ExerciseModel>;
  @useResult
  $Res call({
    String id,
    String name,
    List<String> primaryMuscles,
    List<String> secondaryMuscles,
    MovementPattern movementPattern,
    ExerciseRole exerciseRole,
    Equipment equipment,
    Laterality laterality,
    int fatigueScore,
    int recoveryCost,
    int axialLoad,
    int stability,
    int skillRequirement,
    int sfr,
    LengthBias lengthBias,
    LoadingScheme loadingScheme,
    JointStress jointStress,
    int sets,
    int reps,
    int restSeconds,
    String emojiIcon,
  });

  $JointStressCopyWith<$Res> get jointStress;
}

/// @nodoc
class _$ExerciseModelCopyWithImpl<$Res, $Val extends ExerciseModel>
    implements $ExerciseModelCopyWith<$Res> {
  _$ExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? primaryMuscles = null,
    Object? secondaryMuscles = null,
    Object? movementPattern = null,
    Object? exerciseRole = null,
    Object? equipment = null,
    Object? laterality = null,
    Object? fatigueScore = null,
    Object? recoveryCost = null,
    Object? axialLoad = null,
    Object? stability = null,
    Object? skillRequirement = null,
    Object? sfr = null,
    Object? lengthBias = null,
    Object? loadingScheme = null,
    Object? jointStress = null,
    Object? sets = null,
    Object? reps = null,
    Object? restSeconds = null,
    Object? emojiIcon = null,
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
            primaryMuscles: null == primaryMuscles
                ? _value.primaryMuscles
                : primaryMuscles // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            secondaryMuscles: null == secondaryMuscles
                ? _value.secondaryMuscles
                : secondaryMuscles // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            movementPattern: null == movementPattern
                ? _value.movementPattern
                : movementPattern // ignore: cast_nullable_to_non_nullable
                      as MovementPattern,
            exerciseRole: null == exerciseRole
                ? _value.exerciseRole
                : exerciseRole // ignore: cast_nullable_to_non_nullable
                      as ExerciseRole,
            equipment: null == equipment
                ? _value.equipment
                : equipment // ignore: cast_nullable_to_non_nullable
                      as Equipment,
            laterality: null == laterality
                ? _value.laterality
                : laterality // ignore: cast_nullable_to_non_nullable
                      as Laterality,
            fatigueScore: null == fatigueScore
                ? _value.fatigueScore
                : fatigueScore // ignore: cast_nullable_to_non_nullable
                      as int,
            recoveryCost: null == recoveryCost
                ? _value.recoveryCost
                : recoveryCost // ignore: cast_nullable_to_non_nullable
                      as int,
            axialLoad: null == axialLoad
                ? _value.axialLoad
                : axialLoad // ignore: cast_nullable_to_non_nullable
                      as int,
            stability: null == stability
                ? _value.stability
                : stability // ignore: cast_nullable_to_non_nullable
                      as int,
            skillRequirement: null == skillRequirement
                ? _value.skillRequirement
                : skillRequirement // ignore: cast_nullable_to_non_nullable
                      as int,
            sfr: null == sfr
                ? _value.sfr
                : sfr // ignore: cast_nullable_to_non_nullable
                      as int,
            lengthBias: null == lengthBias
                ? _value.lengthBias
                : lengthBias // ignore: cast_nullable_to_non_nullable
                      as LengthBias,
            loadingScheme: null == loadingScheme
                ? _value.loadingScheme
                : loadingScheme // ignore: cast_nullable_to_non_nullable
                      as LoadingScheme,
            jointStress: null == jointStress
                ? _value.jointStress
                : jointStress // ignore: cast_nullable_to_non_nullable
                      as JointStress,
            sets: null == sets
                ? _value.sets
                : sets // ignore: cast_nullable_to_non_nullable
                      as int,
            reps: null == reps
                ? _value.reps
                : reps // ignore: cast_nullable_to_non_nullable
                      as int,
            restSeconds: null == restSeconds
                ? _value.restSeconds
                : restSeconds // ignore: cast_nullable_to_non_nullable
                      as int,
            emojiIcon: null == emojiIcon
                ? _value.emojiIcon
                : emojiIcon // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JointStressCopyWith<$Res> get jointStress {
    return $JointStressCopyWith<$Res>(_value.jointStress, (value) {
      return _then(_value.copyWith(jointStress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExerciseModelImplCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$ExerciseModelImplCopyWith(
    _$ExerciseModelImpl value,
    $Res Function(_$ExerciseModelImpl) then,
  ) = __$$ExerciseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    List<String> primaryMuscles,
    List<String> secondaryMuscles,
    MovementPattern movementPattern,
    ExerciseRole exerciseRole,
    Equipment equipment,
    Laterality laterality,
    int fatigueScore,
    int recoveryCost,
    int axialLoad,
    int stability,
    int skillRequirement,
    int sfr,
    LengthBias lengthBias,
    LoadingScheme loadingScheme,
    JointStress jointStress,
    int sets,
    int reps,
    int restSeconds,
    String emojiIcon,
  });

  @override
  $JointStressCopyWith<$Res> get jointStress;
}

/// @nodoc
class __$$ExerciseModelImplCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$ExerciseModelImpl>
    implements _$$ExerciseModelImplCopyWith<$Res> {
  __$$ExerciseModelImplCopyWithImpl(
    _$ExerciseModelImpl _value,
    $Res Function(_$ExerciseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? primaryMuscles = null,
    Object? secondaryMuscles = null,
    Object? movementPattern = null,
    Object? exerciseRole = null,
    Object? equipment = null,
    Object? laterality = null,
    Object? fatigueScore = null,
    Object? recoveryCost = null,
    Object? axialLoad = null,
    Object? stability = null,
    Object? skillRequirement = null,
    Object? sfr = null,
    Object? lengthBias = null,
    Object? loadingScheme = null,
    Object? jointStress = null,
    Object? sets = null,
    Object? reps = null,
    Object? restSeconds = null,
    Object? emojiIcon = null,
  }) {
    return _then(
      _$ExerciseModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        primaryMuscles: null == primaryMuscles
            ? _value._primaryMuscles
            : primaryMuscles // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        secondaryMuscles: null == secondaryMuscles
            ? _value._secondaryMuscles
            : secondaryMuscles // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        movementPattern: null == movementPattern
            ? _value.movementPattern
            : movementPattern // ignore: cast_nullable_to_non_nullable
                  as MovementPattern,
        exerciseRole: null == exerciseRole
            ? _value.exerciseRole
            : exerciseRole // ignore: cast_nullable_to_non_nullable
                  as ExerciseRole,
        equipment: null == equipment
            ? _value.equipment
            : equipment // ignore: cast_nullable_to_non_nullable
                  as Equipment,
        laterality: null == laterality
            ? _value.laterality
            : laterality // ignore: cast_nullable_to_non_nullable
                  as Laterality,
        fatigueScore: null == fatigueScore
            ? _value.fatigueScore
            : fatigueScore // ignore: cast_nullable_to_non_nullable
                  as int,
        recoveryCost: null == recoveryCost
            ? _value.recoveryCost
            : recoveryCost // ignore: cast_nullable_to_non_nullable
                  as int,
        axialLoad: null == axialLoad
            ? _value.axialLoad
            : axialLoad // ignore: cast_nullable_to_non_nullable
                  as int,
        stability: null == stability
            ? _value.stability
            : stability // ignore: cast_nullable_to_non_nullable
                  as int,
        skillRequirement: null == skillRequirement
            ? _value.skillRequirement
            : skillRequirement // ignore: cast_nullable_to_non_nullable
                  as int,
        sfr: null == sfr
            ? _value.sfr
            : sfr // ignore: cast_nullable_to_non_nullable
                  as int,
        lengthBias: null == lengthBias
            ? _value.lengthBias
            : lengthBias // ignore: cast_nullable_to_non_nullable
                  as LengthBias,
        loadingScheme: null == loadingScheme
            ? _value.loadingScheme
            : loadingScheme // ignore: cast_nullable_to_non_nullable
                  as LoadingScheme,
        jointStress: null == jointStress
            ? _value.jointStress
            : jointStress // ignore: cast_nullable_to_non_nullable
                  as JointStress,
        sets: null == sets
            ? _value.sets
            : sets // ignore: cast_nullable_to_non_nullable
                  as int,
        reps: null == reps
            ? _value.reps
            : reps // ignore: cast_nullable_to_non_nullable
                  as int,
        restSeconds: null == restSeconds
            ? _value.restSeconds
            : restSeconds // ignore: cast_nullable_to_non_nullable
                  as int,
        emojiIcon: null == emojiIcon
            ? _value.emojiIcon
            : emojiIcon // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseModelImpl implements _ExerciseModel {
  const _$ExerciseModelImpl({
    required this.id,
    required this.name,
    required final List<String> primaryMuscles,
    final List<String> secondaryMuscles = const [],
    required this.movementPattern,
    required this.exerciseRole,
    required this.equipment,
    required this.laterality,
    this.fatigueScore = 2,
    this.recoveryCost = 2,
    this.axialLoad = 1,
    this.stability = 2,
    this.skillRequirement = 2,
    this.sfr = 3,
    required this.lengthBias,
    required this.loadingScheme,
    required this.jointStress,
    this.sets = 3,
    this.reps = 10,
    this.restSeconds = 90,
    this.emojiIcon = '',
  }) : _primaryMuscles = primaryMuscles,
       _secondaryMuscles = secondaryMuscles;

  factory _$ExerciseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<String> _primaryMuscles;
  @override
  List<String> get primaryMuscles {
    if (_primaryMuscles is EqualUnmodifiableListView) return _primaryMuscles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_primaryMuscles);
  }

  final List<String> _secondaryMuscles;
  @override
  @JsonKey()
  List<String> get secondaryMuscles {
    if (_secondaryMuscles is EqualUnmodifiableListView)
      return _secondaryMuscles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondaryMuscles);
  }

  @override
  final MovementPattern movementPattern;
  @override
  final ExerciseRole exerciseRole;
  @override
  final Equipment equipment;
  @override
  final Laterality laterality;
  @override
  @JsonKey()
  final int fatigueScore;
  @override
  @JsonKey()
  final int recoveryCost;
  @override
  @JsonKey()
  final int axialLoad;
  @override
  @JsonKey()
  final int stability;
  @override
  @JsonKey()
  final int skillRequirement;
  @override
  @JsonKey()
  final int sfr;
  @override
  final LengthBias lengthBias;
  @override
  final LoadingScheme loadingScheme;
  @override
  final JointStress jointStress;
  @override
  @JsonKey()
  final int sets;
  @override
  @JsonKey()
  final int reps;
  @override
  @JsonKey()
  final int restSeconds;
  @override
  @JsonKey()
  final String emojiIcon;

  @override
  String toString() {
    return 'ExerciseModel(id: $id, name: $name, primaryMuscles: $primaryMuscles, secondaryMuscles: $secondaryMuscles, movementPattern: $movementPattern, exerciseRole: $exerciseRole, equipment: $equipment, laterality: $laterality, fatigueScore: $fatigueScore, recoveryCost: $recoveryCost, axialLoad: $axialLoad, stability: $stability, skillRequirement: $skillRequirement, sfr: $sfr, lengthBias: $lengthBias, loadingScheme: $loadingScheme, jointStress: $jointStress, sets: $sets, reps: $reps, restSeconds: $restSeconds, emojiIcon: $emojiIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
              other._primaryMuscles,
              _primaryMuscles,
            ) &&
            const DeepCollectionEquality().equals(
              other._secondaryMuscles,
              _secondaryMuscles,
            ) &&
            (identical(other.movementPattern, movementPattern) ||
                other.movementPattern == movementPattern) &&
            (identical(other.exerciseRole, exerciseRole) ||
                other.exerciseRole == exerciseRole) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            (identical(other.laterality, laterality) ||
                other.laterality == laterality) &&
            (identical(other.fatigueScore, fatigueScore) ||
                other.fatigueScore == fatigueScore) &&
            (identical(other.recoveryCost, recoveryCost) ||
                other.recoveryCost == recoveryCost) &&
            (identical(other.axialLoad, axialLoad) ||
                other.axialLoad == axialLoad) &&
            (identical(other.stability, stability) ||
                other.stability == stability) &&
            (identical(other.skillRequirement, skillRequirement) ||
                other.skillRequirement == skillRequirement) &&
            (identical(other.sfr, sfr) || other.sfr == sfr) &&
            (identical(other.lengthBias, lengthBias) ||
                other.lengthBias == lengthBias) &&
            (identical(other.loadingScheme, loadingScheme) ||
                other.loadingScheme == loadingScheme) &&
            (identical(other.jointStress, jointStress) ||
                other.jointStress == jointStress) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.restSeconds, restSeconds) ||
                other.restSeconds == restSeconds) &&
            (identical(other.emojiIcon, emojiIcon) ||
                other.emojiIcon == emojiIcon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    name,
    const DeepCollectionEquality().hash(_primaryMuscles),
    const DeepCollectionEquality().hash(_secondaryMuscles),
    movementPattern,
    exerciseRole,
    equipment,
    laterality,
    fatigueScore,
    recoveryCost,
    axialLoad,
    stability,
    skillRequirement,
    sfr,
    lengthBias,
    loadingScheme,
    jointStress,
    sets,
    reps,
    restSeconds,
    emojiIcon,
  ]);

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseModelImplCopyWith<_$ExerciseModelImpl> get copyWith =>
      __$$ExerciseModelImplCopyWithImpl<_$ExerciseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseModelImplToJson(this);
  }
}

abstract class _ExerciseModel implements ExerciseModel {
  const factory _ExerciseModel({
    required final String id,
    required final String name,
    required final List<String> primaryMuscles,
    final List<String> secondaryMuscles,
    required final MovementPattern movementPattern,
    required final ExerciseRole exerciseRole,
    required final Equipment equipment,
    required final Laterality laterality,
    final int fatigueScore,
    final int recoveryCost,
    final int axialLoad,
    final int stability,
    final int skillRequirement,
    final int sfr,
    required final LengthBias lengthBias,
    required final LoadingScheme loadingScheme,
    required final JointStress jointStress,
    final int sets,
    final int reps,
    final int restSeconds,
    final String emojiIcon,
  }) = _$ExerciseModelImpl;

  factory _ExerciseModel.fromJson(Map<String, dynamic> json) =
      _$ExerciseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get primaryMuscles;
  @override
  List<String> get secondaryMuscles;
  @override
  MovementPattern get movementPattern;
  @override
  ExerciseRole get exerciseRole;
  @override
  Equipment get equipment;
  @override
  Laterality get laterality;
  @override
  int get fatigueScore;
  @override
  int get recoveryCost;
  @override
  int get axialLoad;
  @override
  int get stability;
  @override
  int get skillRequirement;
  @override
  int get sfr;
  @override
  LengthBias get lengthBias;
  @override
  LoadingScheme get loadingScheme;
  @override
  JointStress get jointStress;
  @override
  int get sets;
  @override
  int get reps;
  @override
  int get restSeconds;
  @override
  String get emojiIcon;

  /// Create a copy of ExerciseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseModelImplCopyWith<_$ExerciseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
