import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/user_model.dart';
import '../../data/auth_repository.dart';

part 'auth_provider.g.dart';

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  AsyncValue<UserModel?> build() => const AsyncValue.data(null);

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    try {
      final user = await AuthRepository.login(email, password);
      if (user != null) {
        state = AsyncValue.data(user);
      } else {
        state = AsyncValue.error('Nieprawidłowe dane logowania', StackTrace.current);
      }
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    String fitnessLevel = 'beginner',
    double weightKg = 75.0,
    int heightCm = 175,
  }) async {
    state = const AsyncValue.loading();
    try {
      final user = await AuthRepository.register(
        name: name,
        email: email,
        password: password,
        fitnessLevel: fitnessLevel,
        weightKg: weightKg,
        heightCm: heightCm,
      );
      state = AsyncValue.data(user);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  void logout() {
    state = const AsyncValue.data(null);
  }
}

@riverpod
bool isAuthenticated(IsAuthenticatedRef ref) {
  final authState = ref.watch(authNotifierProvider);
  return authState.valueOrNull != null;
}
