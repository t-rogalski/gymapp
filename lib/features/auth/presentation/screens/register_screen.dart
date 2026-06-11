import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../providers/auth_provider.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();

  String _fitnessLevel = 'beginner';
  double _weightKg = 75.0;
  int _heightCm = 175;
  bool _isLoading = false;
  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  int get _passwordStrength {
    final p = _passwordController.text;
    if (p.length < 6) return 0;
    int score = 1;
    if (p.length >= 8) score++;
    if (RegExp(r'[A-Z]').hasMatch(p) && RegExp(r'[0-9]').hasMatch(p)) score++;
    return score;
  }

  Color get _strengthColor {
    switch (_passwordStrength) {
      case 0:
        return Colors.red.shade400;
      case 1:
        return Colors.red.shade300;
      case 2:
        return Colors.amber;
      default:
        return AppColors.sageMid;
    }
  }

  String get _strengthLabel {
    switch (_passwordStrength) {
      case 0:
        return 'Za krótkie';
      case 1:
        return 'Słabe';
      case 2:
        return 'Średnie';
      default:
        return 'Silne';
    }
  }

  String? _validate() {
    if (_nameController.text.trim().isEmpty) return 'Podaj imię';
    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(_emailController.text.trim())) {
      return 'Nieprawidłowy adres e-mail';
    }
    if (_passwordController.text.length < 6) return 'Hasło musi mieć min. 6 znaków';
    if (_passwordController.text != _confirmController.text) return 'Hasła nie są zgodne';
    return null;
  }

  Future<void> _register() async {
    final error = _validate();
    if (error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error), backgroundColor: Colors.red.shade400),
      );
      return;
    }

    setState(() => _isLoading = true);

    await ref.read(authNotifierProvider.notifier).register(
      name: _nameController.text.trim(),
      email: _emailController.text.trim(),
      password: _passwordController.text,
      fitnessLevel: _fitnessLevel,
      weightKg: _weightKg,
      heightCm: _heightCm,
    );

    if (!mounted) return;
    setState(() => _isLoading = false);
    // Navigation is handled automatically by GoRouter redirect + refreshListenable
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 40),
                const Text(
                  'Utwórz konto',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 32),

                // Name
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: 'Imię i nazwisko',
                    prefixIcon: Icon(Icons.person_outline),
                  ),
                ),
                const SizedBox(height: 16),

                // Email
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Adres e-mail',
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(height: 16),

                // Password
                TextField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    hintText: 'Hasło',
                    prefixIcon: const Icon(Icons.lock_outlined),
                    suffixIcon: IconButton(
                      icon: Icon(_obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                      onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                    ),
                  ),
                ),
                if (_passwordController.text.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          value: _passwordStrength / 3,
                          backgroundColor: AppColors.creamDark,
                          color: _strengthColor,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        _strengthLabel,
                        style: TextStyle(fontSize: 12, color: _strengthColor),
                      ),
                    ],
                  ),
                ],
                const SizedBox(height: 16),

                // Confirm password
                TextField(
                  controller: _confirmController,
                  obscureText: _obscureConfirm,
                  decoration: InputDecoration(
                    hintText: 'Potwierdź hasło',
                    prefixIcon: const Icon(Icons.lock_outlined),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureConfirm ? Icons.visibility_off_outlined : Icons.visibility_outlined),
                      onPressed: () => setState(() => _obscureConfirm = !_obscureConfirm),
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Quick setup section
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Szybka konfiguracja',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Fitness level
                SegmentedButton<String>(
                  segments: const [
                    ButtonSegment(value: 'beginner', label: Text('Początkujący')),
                    ButtonSegment(value: 'intermediate', label: Text('Średni')),
                    ButtonSegment(value: 'advanced', label: Text('Zaawansowany')),
                  ],
                  selected: {_fitnessLevel},
                  onSelectionChanged: (v) => setState(() => _fitnessLevel = v.first),
                  style: SegmentedButton.styleFrom(
                    selectedBackgroundColor: AppColors.sage,
                    selectedForegroundColor: AppColors.warmWhite,
                  ),
                ),
                const SizedBox(height: 20),

                // Weight slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Waga', style: TextStyle(color: AppColors.textSecondary)),
                    Text('${_weightKg.toStringAsFixed(1)} kg',
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
                Slider(
                  value: _weightKg,
                  min: 40,
                  max: 150,
                  divisions: 220,
                  activeColor: AppColors.sageMid,
                  onChanged: (v) => setState(() => _weightKg = v),
                ),

                // Height slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Wzrost', style: TextStyle(color: AppColors.textSecondary)),
                    Text('$_heightCm cm',
                        style: const TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
                Slider(
                  value: _heightCm.toDouble(),
                  min: 140,
                  max: 220,
                  divisions: 80,
                  activeColor: AppColors.sageMid,
                  onChanged: (v) => setState(() => _heightCm = v.round()),
                ),
                const SizedBox(height: 24),

                // Register button
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _register,
                    child: _isLoading
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.warmWhite),
                          )
                        : const Text('Utwórz konto'),
                  ),
                ),
                const SizedBox(height: 16),

                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Masz już konto? ', style: TextStyle(color: AppColors.textSecondary)),
                    GestureDetector(
                      onTap: () => context.go('/login'),
                      child: const Text(
                        'Zaloguj się →',
                        style: TextStyle(color: AppColors.sageDark, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
