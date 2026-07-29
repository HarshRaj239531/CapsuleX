import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/onboarding/presentation/pages/onboarding_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CapsuleXApp());
}

/// Root widget of CapsuleX Application
class CapsuleXApp extends StatelessWidget {
  const CapsuleXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CapsuleX',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const OnboardingPage(),
    );
  }
}
