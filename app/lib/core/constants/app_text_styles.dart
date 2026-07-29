import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Centralized text styles matching CapsuleX brand design system.
abstract class AppTextStyles {
  static const TextStyle brandTitle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
    color: AppColors.textWhite,
    letterSpacing: -0.5,
    fontFamily: 'Roboto',
  );

  static const TextStyle onboardingSubtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitlePurple,
    letterSpacing: 0.2,
  );

  static const TextStyle onboardingDescription = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.5,
    letterSpacing: 0.1,
  );

  static const TextStyle primaryButton = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
    letterSpacing: 0.3,
  );

  static const TextStyle textLinkButton = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.subtitlePurple,
    letterSpacing: 0.2,
  );
}
