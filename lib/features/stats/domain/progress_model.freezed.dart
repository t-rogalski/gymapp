// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProgressEntry _$ProgressEntryFromJson(Map<String, dynamic> json) {
  return _ProgressEntry.fromJson(json);
}

/// @nodoc
mixin _$ProgressEntry {
  DateTime get date => throw _privateConstructorUsedError;
  double get weightKg => throw _privateConstructorUsedError;
  int get workoutsThisWeek => throw _privateConstructorUsedError;
  int get totalVolume => throw _privateConstructorUsedError;
  int get personalRecords => throw _privateConstructorUsedError;

  /// Serializes this ProgressEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProgressEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressEntryCopyWith<ProgressEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressEntryCopyWith<$Res> {
  factory $ProgressEntryCopyWith(
    ProgressEntry value,
    $Res Function(ProgressEntry) then,
  ) = _$ProgressEntryCopyWithImpl<$Res, ProgressEntry>;
  @useResult
  $Res call({
    DateTime date,
    double weightKg,
    int workoutsThisWeek,
    int totalVolume,
    int personalRecords,
  });
}

/// @nodoc
class _$ProgressEntryCopyWithImpl<$Res, $Val extends ProgressEntry>
    implements $ProgressEntryCopyWith<$Res> {
  _$ProgressEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgressEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weightKg = null,
    Object? workoutsThisWeek = null,
    Object? totalVolume = null,
    Object? personalRecords = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            weightKg: null == weightKg
                ? _value.weightKg
                : weightKg // ignore: cast_nullable_to_non_nullable
                      as double,
            workoutsThisWeek: null == workoutsThisWeek
                ? _value.workoutsThisWeek
                : workoutsThisWeek // ignore: cast_nullable_to_non_nullable
                      as int,
            totalVolume: null == totalVolume
                ? _value.totalVolume
                : totalVolume // ignore: cast_nullable_to_non_nullable
                      as int,
            personalRecords: null == personalRecords
                ? _value.personalRecords
                : personalRecords // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProgressEntryImplCopyWith<$Res>
    implements $ProgressEntryCopyWith<$Res> {
  factory _$$ProgressEntryImplCopyWith(
    _$ProgressEntryImpl value,
    $Res Function(_$ProgressEntryImpl) then,
  ) = __$$ProgressEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime date,
    double weightKg,
    int workoutsThisWeek,
    int totalVolume,
    int personalRecords,
  });
}

/// @nodoc
class __$$ProgressEntryImplCopyWithImpl<$Res>
    extends _$ProgressEntryCopyWithImpl<$Res, _$ProgressEntryImpl>
    implements _$$ProgressEntryImplCopyWith<$Res> {
  __$$ProgressEntryImplCopyWithImpl(
    _$ProgressEntryImpl _value,
    $Res Function(_$ProgressEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgressEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? weightKg = null,
    Object? workoutsThisWeek = null,
    Object? totalVolume = null,
    Object? personalRecords = null,
  }) {
    return _then(
      _$ProgressEntryImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        weightKg: null == weightKg
            ? _value.weightKg
            : weightKg // ignore: cast_nullable_to_non_nullable
                  as double,
        workoutsThisWeek: null == workoutsThisWeek
            ? _value.workoutsThisWeek
            : workoutsThisWeek // ignore: cast_nullable_to_non_nullable
                  as int,
        totalVolume: null == totalVolume
            ? _value.totalVolume
            : totalVolume // ignore: cast_nullable_to_non_nullable
                  as int,
        personalRecords: null == personalRecords
            ? _value.personalRecords
            : personalRecords // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressEntryImpl implements _ProgressEntry {
  const _$ProgressEntryImpl({
    required this.date,
    required this.weightKg,
    required this.workoutsThisWeek,
    required this.totalVolume,
    this.personalRecords = 0,
  });

  factory _$ProgressEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressEntryImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double weightKg;
  @override
  final int workoutsThisWeek;
  @override
  final int totalVolume;
  @override
  @JsonKey()
  final int personalRecords;

  @override
  String toString() {
    return 'ProgressEntry(date: $date, weightKg: $weightKg, workoutsThisWeek: $workoutsThisWeek, totalVolume: $totalVolume, personalRecords: $personalRecords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressEntryImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.workoutsThisWeek, workoutsThisWeek) ||
                other.workoutsThisWeek == workoutsThisWeek) &&
            (identical(other.totalVolume, totalVolume) ||
                other.totalVolume == totalVolume) &&
            (identical(other.personalRecords, personalRecords) ||
                other.personalRecords == personalRecords));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    weightKg,
    workoutsThisWeek,
    totalVolume,
    personalRecords,
  );

  /// Create a copy of ProgressEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressEntryImplCopyWith<_$ProgressEntryImpl> get copyWith =>
      __$$ProgressEntryImplCopyWithImpl<_$ProgressEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressEntryImplToJson(this);
  }
}

abstract class _ProgressEntry implements ProgressEntry {
  const factory _ProgressEntry({
    required final DateTime date,
    required final double weightKg,
    required final int workoutsThisWeek,
    required final int totalVolume,
    final int personalRecords,
  }) = _$ProgressEntryImpl;

  factory _ProgressEntry.fromJson(Map<String, dynamic> json) =
      _$ProgressEntryImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get weightKg;
  @override
  int get workoutsThisWeek;
  @override
  int get totalVolume;
  @override
  int get personalRecords;

  /// Create a copy of ProgressEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressEntryImplCopyWith<_$ProgressEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MuscleStats _$MuscleStatsFromJson(Map<String, dynamic> json) {
  return _MuscleStats.fromJson(json);
}

/// @nodoc
mixin _$MuscleStats {
  String get muscle => throw _privateConstructorUsedError;
  int get exercisesCount => throw _privateConstructorUsedError;
  double get percentage => throw _privateConstructorUsedError;

  /// Serializes this MuscleStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MuscleStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MuscleStatsCopyWith<MuscleStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuscleStatsCopyWith<$Res> {
  factory $MuscleStatsCopyWith(
    MuscleStats value,
    $Res Function(MuscleStats) then,
  ) = _$MuscleStatsCopyWithImpl<$Res, MuscleStats>;
  @useResult
  $Res call({String muscle, int exercisesCount, double percentage});
}

/// @nodoc
class _$MuscleStatsCopyWithImpl<$Res, $Val extends MuscleStats>
    implements $MuscleStatsCopyWith<$Res> {
  _$MuscleStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MuscleStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muscle = null,
    Object? exercisesCount = null,
    Object? percentage = null,
  }) {
    return _then(
      _value.copyWith(
            muscle: null == muscle
                ? _value.muscle
                : muscle // ignore: cast_nullable_to_non_nullable
                      as String,
            exercisesCount: null == exercisesCount
                ? _value.exercisesCount
                : exercisesCount // ignore: cast_nullable_to_non_nullable
                      as int,
            percentage: null == percentage
                ? _value.percentage
                : percentage // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MuscleStatsImplCopyWith<$Res>
    implements $MuscleStatsCopyWith<$Res> {
  factory _$$MuscleStatsImplCopyWith(
    _$MuscleStatsImpl value,
    $Res Function(_$MuscleStatsImpl) then,
  ) = __$$MuscleStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String muscle, int exercisesCount, double percentage});
}

/// @nodoc
class __$$MuscleStatsImplCopyWithImpl<$Res>
    extends _$MuscleStatsCopyWithImpl<$Res, _$MuscleStatsImpl>
    implements _$$MuscleStatsImplCopyWith<$Res> {
  __$$MuscleStatsImplCopyWithImpl(
    _$MuscleStatsImpl _value,
    $Res Function(_$MuscleStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MuscleStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muscle = null,
    Object? exercisesCount = null,
    Object? percentage = null,
  }) {
    return _then(
      _$MuscleStatsImpl(
        muscle: null == muscle
            ? _value.muscle
            : muscle // ignore: cast_nullable_to_non_nullable
                  as String,
        exercisesCount: null == exercisesCount
            ? _value.exercisesCount
            : exercisesCount // ignore: cast_nullable_to_non_nullable
                  as int,
        percentage: null == percentage
            ? _value.percentage
            : percentage // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MuscleStatsImpl implements _MuscleStats {
  const _$MuscleStatsImpl({
    required this.muscle,
    required this.exercisesCount,
    required this.percentage,
  });

  factory _$MuscleStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MuscleStatsImplFromJson(json);

  @override
  final String muscle;
  @override
  final int exercisesCount;
  @override
  final double percentage;

  @override
  String toString() {
    return 'MuscleStats(muscle: $muscle, exercisesCount: $exercisesCount, percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuscleStatsImpl &&
            (identical(other.muscle, muscle) || other.muscle == muscle) &&
            (identical(other.exercisesCount, exercisesCount) ||
                other.exercisesCount == exercisesCount) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, muscle, exercisesCount, percentage);

  /// Create a copy of MuscleStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MuscleStatsImplCopyWith<_$MuscleStatsImpl> get copyWith =>
      __$$MuscleStatsImplCopyWithImpl<_$MuscleStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MuscleStatsImplToJson(this);
  }
}

abstract class _MuscleStats implements MuscleStats {
  const factory _MuscleStats({
    required final String muscle,
    required final int exercisesCount,
    required final double percentage,
  }) = _$MuscleStatsImpl;

  factory _MuscleStats.fromJson(Map<String, dynamic> json) =
      _$MuscleStatsImpl.fromJson;

  @override
  String get muscle;
  @override
  int get exercisesCount;
  @override
  double get percentage;

  /// Create a copy of MuscleStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MuscleStatsImplCopyWith<_$MuscleStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
