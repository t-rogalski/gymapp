import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/providers/auth_provider.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/home/presentation/screens/plan_detail_screen.dart';
import '../../features/generator/presentation/screens/generator_screen.dart';
import '../../features/stats/presentation/screens/stats_screen.dart';
import '../../features/account/presentation/screens/account_screen.dart';
import '../widgets/app_scaffold.dart';

part 'app_router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

/// A ChangeNotifier that listens to auth state and notifies GoRouter to re-evaluate redirects.
class AuthChangeNotifier extends ChangeNotifier {
  AuthChangeNotifier(this._ref) {
    _ref.listen(authNotifierProvider, (_, __) {
      notifyListeners();
    });
  }
  final Ref _ref;
}

@riverpod
AuthChangeNotifier authChangeNotifier(AuthChangeNotifierRef ref) {
  final notifier = AuthChangeNotifier(ref);
  ref.onDispose(notifier.dispose);
  return notifier;
}

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  final authNotifier = ref.watch(authChangeNotifierProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/home',
    refreshListenable: authNotifier,
    redirect: (context, state) {
      final isAuth = ref.read(isAuthenticatedProvider);
      final location = state.matchedLocation;
      final isLoginOrRegister = location == '/login' || location == '/register';

      if (!isAuth && !isLoginOrRegister) return '/login';
      if (isAuth && isLoginOrRegister) return '/home';
      return null;
    },
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) => AppScaffold(child: child),
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: HomeScreen(),
            ),
          ),
          GoRoute(
            path: '/generate',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: GeneratorScreen(),
            ),
          ),
          GoRoute(
            path: '/stats',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: StatsScreen(),
            ),
          ),
          GoRoute(
            path: '/account',
            pageBuilder: (context, state) => const NoTransitionPage(
              child: AccountScreen(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/plan/:id',
        builder: (context, state) => PlanDetailScreen(
          planId: state.pathParameters['id']!,
        ),
      ),
    ],
  );
}
