import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
    @Default('') String avatarInitials,
    @Default(0) int workoutsCompleted,
    @Default(0) int currentStreak,
    @Default(0.0) double weightKg,
    @Default(0) int heightCm,
    @Default('beginner') String fitnessLevel,
    @Default([]) List<String> fitnessGoals,
    @Default([]) List<String> availableEquipment,
    @Default([]) List<String> injuredJoints,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
