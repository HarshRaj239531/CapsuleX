import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

/// Animated page dot indicator for onboarding/carousel navigation.
class CustomPageIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const CustomPageIndicator({
    super.key,
    this.count = 3,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        final bool isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? 10 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: isActive ? AppColors.dotActive : AppColors.dotInactive,
            borderRadius: BorderRadius.circular(4),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: AppColors.dotActive.withValues(alpha: 0.5),
                      blurRadius: 6,
                      spreadRadius: 1,
                    )
                  ]
                : [],
          ),
        );
      }),
    );
  }
}
