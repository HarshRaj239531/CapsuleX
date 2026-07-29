import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/primary_button.dart';
import '../widgets/memory_types_grid.dart';
import '../widgets/onboarding2_header.dart';
import 'onboarding_third_page.dart';


/// Second welcome / feature highlight screen for CapsuleX.
class OnboardingSecondPage extends StatelessWidget {
  const OnboardingSecondPage({super.key});

  void _onNextPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const OnboardingThirdPage(),
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
              const Onboarding2Header(),

              const SizedBox(height: 16),

              // 3D Floating Cube Hero Image
              Image.asset(
                AppAssets.onboarding2Hero,
                width: heroSize,
                height: heroSize,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.view_in_ar_rounded,
                    size: 120,
                    color: AppColors.primaryPurpleGlow,
                  );
                },
              ),

              const SizedBox(height: 16),

              // 3x2 Memory Types Grid Cards
              const MemoryTypesGrid(),

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
