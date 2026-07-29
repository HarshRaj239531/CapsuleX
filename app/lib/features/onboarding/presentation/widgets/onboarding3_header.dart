import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';

/// Top header section for Onboarding Screen 3.
class Onboarding3Header extends StatelessWidget {
  const Onboarding3Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Title Line 1 & Line 2
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              TextSpan(
                text: '${AppStrings.onboarding3TitleLine1}\n',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textWhite,
                  height: 1.2,
                  letterSpacing: -0.3,
                ),
              ),
              TextSpan(
                text: AppStrings.onboarding3TitleLine2,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFC084FC),
                  height: 1.2,
                  letterSpacing: -0.3,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),

        // Subtitle Body
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            AppStrings.onboarding3Subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xFF94A3B8),
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
