// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generator_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GeneratorConfig _$GeneratorConfigFromJson(Map<String, dynamic> json) {
  return _GeneratorConfig.fromJson(json);
}

/// @nodoc
mixin _$GeneratorConfig {
  List<String> get goals => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  int get daysPerWeek => throw _privateConstructorUsedError;
  List<String> get availableEquipment => throw _privateConstructorUsedError;
  int get sessionMinutes => throw _privateConstructorUsedError;
  List<String> get injuredJoints => throw _privateConstructorUsedError;
  int get seed => throw _privateConstructorUsedError;

  /// Serializes this GeneratorConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeneratorConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeneratorConfigCopyWith<GeneratorConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratorConfigCopyWith<$Res> {
  factory $GeneratorConfigCopyWith(
    GeneratorConfig value,
    $Res Function(GeneratorConfig) then,
  ) = _$GeneratorConfigCopyWithImpl<$Res, GeneratorConfig>;
  @useResult
  $Res call({
    List<String> goals,
    String level,
    int daysPerWeek,
    List<String> availableEquipment,
    int sessionMinutes,
    List<String> injuredJoints,
    int seed,
  });
}

/// @nodoc
class _$GeneratorConfigCopyWithImpl<$Res, $Val extends GeneratorConfig>
    implements $GeneratorConfigCopyWith<$Res> {
  _$GeneratorConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeneratorConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? level = null,
    Object? daysPerWeek = null,
    Object? availableEquipment = null,
    Object? sessionMinutes = null,
    Object? injuredJoints = null,
    Object? seed = null,
  }) {
    return _then(
      _value.copyWith(
            goals: null == goals
                ? _value.goals
                : goals // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as String,
            daysPerWeek: null == daysPerWeek
                ? _value.daysPerWeek
                : daysPerWeek // ignore: cast_nullable_to_non_nullable
                      as int,
            availableEquipment: null == availableEquipment
                ? _value.availableEquipment
                : availableEquipment // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            sessionMinutes: null == sessionMinutes
                ? _value.sessionMinutes
                : sessionMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            injuredJoints: null == injuredJoints
                ? _value.injuredJoints
                : injuredJoints // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            seed: null == seed
                ? _value.seed
                : seed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GeneratorConfigImplCopyWith<$Res>
    implements $GeneratorConfigCopyWith<$Res> {
  factory _$$GeneratorConfigImplCopyWith(
    _$GeneratorConfigImpl value,
    $Res Function(_$GeneratorConfigImpl) then,
  ) = __$$GeneratorConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> goals,
    String level,
    int daysPerWeek,
    List<String> availableEquipment,
    int sessionMinutes,
    List<String> injuredJoints,
    int seed,
  });
}

/// @nodoc
class __$$GeneratorConfigImplCopyWithImpl<$Res>
    extends _$GeneratorConfigCopyWithImpl<$Res, _$GeneratorConfigImpl>
    implements _$$GeneratorConfigImplCopyWith<$Res> {
  __$$GeneratorConfigImplCopyWithImpl(
    _$GeneratorConfigImpl _value,
    $Res Function(_$GeneratorConfigImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GeneratorConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goals = null,
    Object? level = null,
    Object? daysPerWeek = null,
    Object? availableEquipment = null,
    Object? sessionMinutes = null,
    Object? injuredJoints = null,
    Object? seed = null,
  }) {
    return _then(
      _$GeneratorConfigImpl(
        goals: null == goals
            ? _value._goals
            : goals // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as String,
        daysPerWeek: null == daysPerWeek
            ? _value.daysPerWeek
            : daysPerWeek // ignore: cast_nullable_to_non_nullable
                  as int,
        availableEquipment: null == availableEquipment
            ? _value._availableEquipment
            : availableEquipment // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        sessionMinutes: null == sessionMinutes
            ? _value.sessionMinutes
            : sessionMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        injuredJoints: null == injuredJoints
            ? _value._injuredJoints
            : injuredJoints // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        seed: null == seed
            ? _value.seed
            : seed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratorConfigImpl implements _GeneratorConfig {
  const _$GeneratorConfigImpl({
    final List<String> goals = const [],
    this.level = 'intermediate',
    this.daysPerWeek = 4,
    final List<String> availableEquipment = const [],
    this.sessionMinutes = 60,
    final List<String> injuredJoints = const [],
    this.seed = 0,
  }) : _goals = goals,
       _availableEquipment = availableEquipment,
       _injuredJoints = injuredJoints;

  factory _$GeneratorConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneratorConfigImplFromJson(json);

  final List<String> _goals;
  @override
  @JsonKey()
  List<String> get goals {
    if (_goals is EqualUnmodifiableListView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  @JsonKey()
  final String level;
  @override
  @JsonKey()
  final int daysPerWeek;
  final List<String> _availableEquipment;
  @override
  @JsonKey()
  List<String> get availableEquipment {
    if (_availableEquipment is EqualUnmodifiableListView)
      return _availableEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableEquipment);
  }

  @override
  @JsonKey()
  final int sessionMinutes;
  final List<String> _injuredJoints;
  @override
  @JsonKey()
  List<String> get injuredJoints {
    if (_injuredJoints is EqualUnmodifiableListView) return _injuredJoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_injuredJoints);
  }

  @override
  @JsonKey()
  final int seed;

  @override
  String toString() {
    return 'GeneratorConfig(goals: $goals, level: $level, daysPerWeek: $daysPerWeek, availableEquipment: $availableEquipment, sessionMinutes: $sessionMinutes, injuredJoints: $injuredJoints, seed: $seed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratorConfigImpl &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.daysPerWeek, daysPerWeek) ||
                other.daysPerWeek == daysPerWeek) &&
            const DeepCollectionEquality().equals(
              other._availableEquipment,
              _availableEquipment,
            ) &&
            (identical(other.sessionMinutes, sessionMinutes) ||
                other.sessionMinutes == sessionMinutes) &&
            const DeepCollectionEquality().equals(
              other._injuredJoints,
              _injuredJoints,
            ) &&
            (identical(other.seed, seed) || other.seed == seed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_goals),
    level,
    daysPerWeek,
    const DeepCollectionEquality().hash(_availableEquipment),
    sessionMinutes,
    const DeepCollectionEquality().hash(_injuredJoints),
    seed,
  );

  /// Create a copy of GeneratorConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratorConfigImplCopyWith<_$GeneratorConfigImpl> get copyWith =>
      __$$GeneratorConfigImplCopyWithImpl<_$GeneratorConfigImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratorConfigImplToJson(this);
  }
}

abstract class _GeneratorConfig implements GeneratorConfig {
  const factory _GeneratorConfig({
    final List<String> goals,
    final String level,
    final int daysPerWeek,
    final List<String> availableEquipment,
    final int sessionMinutes,
    final List<String> injuredJoints,
    final int seed,
  }) = _$GeneratorConfigImpl;

  factory _GeneratorConfig.fromJson(Map<String, dynamic> json) =
      _$GeneratorConfigImpl.fromJson;

  @override
  List<String> get goals;
  @override
  String get level;
  @override
  int get daysPerWeek;
  @override
  List<String> get availableEquipment;
  @override
  int get sessionMinutes;
  @override
  List<String> get injuredJoints;
  @override
  int get seed;

  /// Create a copy of GeneratorConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeneratorConfigImplCopyWith<_$GeneratorConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
