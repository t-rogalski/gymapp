import 'package:freezed_annotation/freezed_annotation.dart';

part 'generator_config.freezed.dart';
part 'generator_config.g.dart';

@freezed
class GeneratorConfig with _$GeneratorConfig {
  const factory GeneratorConfig({
    @Default([]) List<String> goals,
    @Default('intermediate') String level,
    @Default(4) int daysPerWeek,
    @Default([]) List<String> availableEquipment,
    @Default(60) int sessionMinutes,
    @Default([]) List<String> injuredJoints,
    @Default(0) int seed,
  }) = _GeneratorConfig;

  factory GeneratorConfig.fromJson(Map<String, dynamic> json) =>
      _$GeneratorConfigFromJson(json);
}
