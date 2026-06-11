import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../auth/presentation/providers/auth_provider.dart';

class AccountScreen extends ConsumerWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authNotifierProvider).valueOrNull;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 16),

              // Profile header
              CircleAvatar(
                radius: 40,
                backgroundColor: AppColors.sageMid,
                child: Text(
                  user?.avatarInitials ?? 'U',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.warmWhite,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                user?.name ?? 'Użytkownik',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                user?.email ?? '',
                style: const TextStyle(fontSize: 14, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.sageDark,
                  side: const BorderSide(color: AppColors.sage),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: const Text('Edytuj profil'),
              ),
              const SizedBox(height: 24),

              // Stats pills
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _StatPill(label: 'Waga', value: '${user?.weightKg ?? 79.5} kg'),
                  _StatPill(label: 'Wzrost', value: '${user?.heightCm ?? 180} cm'),
                  const _StatPill(label: 'Cel', value: 'Budowa masy'),
                ],
              ),
              const SizedBox(height: 32),

              // Settings section
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4, bottom: 8),
                  child: Text(
                    'USTAWIENIA',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textMuted,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ),
              _SettingsTile(icon: Icons.notifications_outlined, title: 'Powiadomienia treningowe'),
              _SettingsTile(icon: Icons.flag_outlined, title: 'Moje cele'),
              _SettingsTile(icon: Icons.straighten_outlined, title: 'Jednostki (kg/cm)'),
              _SettingsTileSwitch(icon: Icons.dark_mode_outlined, title: 'Tryb ciemny'),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4, bottom: 8),
                  child: Text(
                    'INFORMACJE',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textMuted,
                      letterSpacing: 0.8,
                    ),
                  ),
                ),
              ),
              _SettingsTile(icon: Icons.help_outline, title: 'Pomoc i wsparcie'),
              _SettingsTile(icon: Icons.description_outlined, title: 'Warunki użytkowania'),
              const SizedBox(height: 24),

              // Logout button
              TextButton(
                onPressed: () {
                  ref.read(authNotifierProvider.notifier).logout();
                  context.go('/login');
                },
                style: TextButton.styleFrom(foregroundColor: Colors.red.shade400),
                child: const Text('Wyloguj się'),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatPill extends StatelessWidget {
  final String label;
  final String value;
  const _StatPill({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.creamDark,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(label, style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
          const SizedBox(height: 2),
          Text(value, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const _SettingsTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: AppColors.sage.withValues(alpha: 0.15),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: AppColors.sageDark),
      ),
      title: Text(title, style: const TextStyle(fontSize: 15, color: AppColors.textPrimary)),
      trailing: const Icon(Icons.chevron_right, color: AppColors.textMuted, size: 20),
      onTap: () {},
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
    );
  }
}

class _SettingsTileSwitch extends StatelessWidget {
  final IconData icon;
  final String title;
  const _SettingsTileSwitch({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: AppColors.sage.withValues(alpha: 0.15),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 18, color: AppColors.sageDark),
      ),
      title: Text(title, style: const TextStyle(fontSize: 15, color: AppColors.textPrimary)),
      trailing: Switch(
        value: false,
        onChanged: (_) {},
        activeTrackColor: AppColors.sageMid,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 4),
    );
  }
}
