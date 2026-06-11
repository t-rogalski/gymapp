import '../domain/user_model.dart';

class AuthRepository {
  AuthRepository._();

  static const _demoEmail = 'demo@fitflow.app';
  static const _demoPassword = 'demo123';

  static final UserModel demoUser = const UserModel(
    id: 'usr_demo_001',
    name: 'Alex Kowalski',
    email: _demoEmail,
    avatarInitials: 'AK',
    workoutsCompleted: 47,
    currentStreak: 12,
    weightKg: 79.5,
    heightCm: 180,
    fitnessLevel: 'intermediate',
    fitnessGoals: ['hypertrophy', 'strength'],
    availableEquipment: ['barbell', 'dumbbell', 'cable', 'machine', 'pullUpBar'],
    injuredJoints: [],
  );

  static Future<UserModel?> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    if (email == _demoEmail && password == _demoPassword) {
      return demoUser;
    }
    return null;
  }

  static Future<UserModel> register({
    required String name,
    required String email,
    required String password,
    String fitnessLevel = 'beginner',
    double weightKg = 75.0,
    int heightCm = 175,
  }) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    final initials = name.split(' ').map((w) => w.isNotEmpty ? w[0] : '').take(2).join().toUpperCase();
    return UserModel(
      id: 'usr_${DateTime.now().millisecondsSinceEpoch}',
      name: name,
      email: email,
      avatarInitials: initials,
      weightKg: weightKg,
      heightCm: heightCm,
      fitnessLevel: fitnessLevel,
    );
  }
}
