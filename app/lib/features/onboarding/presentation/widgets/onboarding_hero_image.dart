import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';

/// Renders the 3D glowing capsule box graphic cleanly without any artificial background container shapes.
class OnboardingHeroImage extends StatelessWidget {
  final double? customSize;

  const OnboardingHeroImage({
    super.key,
    this.customSize,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double size = customSize ?? (screenWidth * 0.70).clamp(200.0, 340.0);

    return Image.asset(
      AppAssets.capsuleHero,
      width: size,
      height: size,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) {
        return Icon(
          Icons.inventory_2_rounded,
          size: size * 0.5,
          color: AppColors.primaryPurpleGlow,
        );
      },
    );
  }
}
