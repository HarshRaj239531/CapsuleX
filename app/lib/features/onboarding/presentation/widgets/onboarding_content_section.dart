import 'package:flutter/material.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';

/// Renders the typography content block (Title, Subtitle, Description).
class OnboardingContentSection extends StatelessWidget {
  const OnboardingContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // App Title
        Text(
          AppStrings.appName,
          style: AppTextStyles.brandTitle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),

        // Tagline / Subtitle
        Text(
          AppStrings.onboardingSubtitle,
          style: AppTextStyles.onboardingSubtitle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),

        // Description Body
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            AppStrings.onboardingDescription,
            style: AppTextStyles.onboardingDescription,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
