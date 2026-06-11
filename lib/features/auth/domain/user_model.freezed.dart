// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatarInitials => throw _privateConstructorUsedError;
  int get workoutsCompleted => throw _privateConstructorUsedError;
  int get currentStreak => throw _privateConstructorUsedError;
  double get weightKg => throw _privateConstructorUsedError;
  int get heightCm => throw _privateConstructorUsedError;
  String get fitnessLevel => throw _privateConstructorUsedError;
  List<String> get fitnessGoals => throw _privateConstructorUsedError;
  List<String> get availableEquipment => throw _privateConstructorUsedError;
  List<String> get injuredJoints => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String email,
    String avatarInitials,
    int workoutsCompleted,
    int currentStreak,
    double weightKg,
    int heightCm,
    String fitnessLevel,
    List<String> fitnessGoals,
    List<String> availableEquipment,
    List<String> injuredJoints,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatarInitials = null,
    Object? workoutsCompleted = null,
    Object? currentStreak = null,
    Object? weightKg = null,
    Object? heightCm = null,
    Object? fitnessLevel = null,
    Object? fitnessGoals = null,
    Object? availableEquipment = null,
    Object? injuredJoints = null,
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
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarInitials: null == avatarInitials
                ? _value.avatarInitials
                : avatarInitials // ignore: cast_nullable_to_non_nullable
                      as String,
            workoutsCompleted: null == workoutsCompleted
                ? _value.workoutsCompleted
                : workoutsCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            currentStreak: null == currentStreak
                ? _value.currentStreak
                : currentStreak // ignore: cast_nullable_to_non_nullable
                      as int,
            weightKg: null == weightKg
                ? _value.weightKg
                : weightKg // ignore: cast_nullable_to_non_nullable
                      as double,
            heightCm: null == heightCm
                ? _value.heightCm
                : heightCm // ignore: cast_nullable_to_non_nullable
                      as int,
            fitnessLevel: null == fitnessLevel
                ? _value.fitnessLevel
                : fitnessLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            fitnessGoals: null == fitnessGoals
                ? _value.fitnessGoals
                : fitnessGoals // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            availableEquipment: null == availableEquipment
                ? _value.availableEquipment
                : availableEquipment // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            injuredJoints: null == injuredJoints
                ? _value.injuredJoints
                : injuredJoints // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String email,
    String avatarInitials,
    int workoutsCompleted,
    int currentStreak,
    double weightKg,
    int heightCm,
    String fitnessLevel,
    List<String> fitnessGoals,
    List<String> availableEquipment,
    List<String> injuredJoints,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? avatarInitials = null,
    Object? workoutsCompleted = null,
    Object? currentStreak = null,
    Object? weightKg = null,
    Object? heightCm = null,
    Object? fitnessLevel = null,
    Object? fitnessGoals = null,
    Object? availableEquipment = null,
    Object? injuredJoints = null,
  }) {
    return _then(
      _$UserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarInitials: null == avatarInitials
            ? _value.avatarInitials
            : avatarInitials // ignore: cast_nullable_to_non_nullable
                  as String,
        workoutsCompleted: null == workoutsCompleted
            ? _value.workoutsCompleted
            : workoutsCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        currentStreak: null == currentStreak
            ? _value.currentStreak
            : currentStreak // ignore: cast_nullable_to_non_nullable
                  as int,
        weightKg: null == weightKg
            ? _value.weightKg
            : weightKg // ignore: cast_nullable_to_non_nullable
                  as double,
        heightCm: null == heightCm
            ? _value.heightCm
            : heightCm // ignore: cast_nullable_to_non_nullable
                  as int,
        fitnessLevel: null == fitnessLevel
            ? _value.fitnessLevel
            : fitnessLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        fitnessGoals: null == fitnessGoals
            ? _value._fitnessGoals
            : fitnessGoals // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        availableEquipment: null == availableEquipment
            ? _value._availableEquipment
            : availableEquipment // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        injuredJoints: null == injuredJoints
            ? _value._injuredJoints
            : injuredJoints // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    required this.id,
    required this.name,
    required this.email,
    this.avatarInitials = '',
    this.workoutsCompleted = 0,
    this.currentStreak = 0,
    this.weightKg = 0.0,
    this.heightCm = 0,
    this.fitnessLevel = 'beginner',
    final List<String> fitnessGoals = const [],
    final List<String> availableEquipment = const [],
    final List<String> injuredJoints = const [],
  }) : _fitnessGoals = fitnessGoals,
       _availableEquipment = availableEquipment,
       _injuredJoints = injuredJoints;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  @JsonKey()
  final String avatarInitials;
  @override
  @JsonKey()
  final int workoutsCompleted;
  @override
  @JsonKey()
  final int currentStreak;
  @override
  @JsonKey()
  final double weightKg;
  @override
  @JsonKey()
  final int heightCm;
  @override
  @JsonKey()
  final String fitnessLevel;
  final List<String> _fitnessGoals;
  @override
  @JsonKey()
  List<String> get fitnessGoals {
    if (_fitnessGoals is EqualUnmodifiableListView) return _fitnessGoals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fitnessGoals);
  }

  final List<String> _availableEquipment;
  @override
  @JsonKey()
  List<String> get availableEquipment {
    if (_availableEquipment is EqualUnmodifiableListView)
      return _availableEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableEquipment);
  }

  final List<String> _injuredJoints;
  @override
  @JsonKey()
  List<String> get injuredJoints {
    if (_injuredJoints is EqualUnmodifiableListView) return _injuredJoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_injuredJoints);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, avatarInitials: $avatarInitials, workoutsCompleted: $workoutsCompleted, currentStreak: $currentStreak, weightKg: $weightKg, heightCm: $heightCm, fitnessLevel: $fitnessLevel, fitnessGoals: $fitnessGoals, availableEquipment: $availableEquipment, injuredJoints: $injuredJoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatarInitials, avatarInitials) ||
                other.avatarInitials == avatarInitials) &&
            (identical(other.workoutsCompleted, workoutsCompleted) ||
                other.workoutsCompleted == workoutsCompleted) &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.fitnessLevel, fitnessLevel) ||
                other.fitnessLevel == fitnessLevel) &&
            const DeepCollectionEquality().equals(
              other._fitnessGoals,
              _fitnessGoals,
            ) &&
            const DeepCollectionEquality().equals(
              other._availableEquipment,
              _availableEquipment,
            ) &&
            const DeepCollectionEquality().equals(
              other._injuredJoints,
              _injuredJoints,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    email,
    avatarInitials,
    workoutsCompleted,
    currentStreak,
    weightKg,
    heightCm,
    fitnessLevel,
    const DeepCollectionEquality().hash(_fitnessGoals),
    const DeepCollectionEquality().hash(_availableEquipment),
    const DeepCollectionEquality().hash(_injuredJoints),
  );

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    required final String id,
    required final String name,
    required final String email,
    final String avatarInitials,
    final int workoutsCompleted,
    final int currentStreak,
    final double weightKg,
    final int heightCm,
    final String fitnessLevel,
    final List<String> fitnessGoals,
    final List<String> availableEquipment,
    final List<String> injuredJoints,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get avatarInitials;
  @override
  int get workoutsCompleted;
  @override
  int get currentStreak;
  @override
  double get weightKg;
  @override
  int get heightCm;
  @override
  String get fitnessLevel;
  @override
  List<String> get fitnessGoals;
  @override
  List<String> get availableEquipment;
  @override
  List<String> get injuredJoints;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
