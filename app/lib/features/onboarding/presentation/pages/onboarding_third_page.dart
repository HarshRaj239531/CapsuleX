import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/primary_button.dart';
import '../widgets/onboarding3_header.dart';
import '../widgets/unlock_conditions_list.dart';

/// Third welcome / condition selection screen for CapsuleX.
class OnboardingThirdPage extends StatelessWidget {
  const OnboardingThirdPage({super.key});

  void _onNextPressed(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Onboarding Complete! Ready for Home/Auth screen.'),
        backgroundColor: AppColors.primaryPurple,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double heroSize = (screenWidth * 0.55).clamp(160.0, 260.0);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 16.0,
          ),
          child: Column(
            children: [
              const SizedBox(height: 8),

              // Header (Title & Subtitle)
              const Onboarding3Header(),

              const SizedBox(height: 16),

              // 3D Padlock Cube Orbital Hero Image
              Image.asset(
                AppAssets.onboarding3Hero,
                width: heroSize,
                height: heroSize,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.lock_clock_rounded,
                    size: 120,
                    color: AppColors.primaryPurpleGlow,
                  );
                },
              ),

              const SizedBox(height: 16),

              // List of 6 Unlock Conditions
              const UnlockConditionsList(),

              const SizedBox(height: 20),

              // Primary Action Button ("Next")
              PrimaryButton(
                title: AppStrings.next,
                onPressed: () => _onNextPressed(context),
              ),

              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
