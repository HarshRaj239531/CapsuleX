import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/page_indicator.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/text_link_button.dart';
import '../widgets/onboarding_content_section.dart';
import '../widgets/onboarding_hero_image.dart';
import 'onboarding_second_page.dart';


/// The primary welcome screen for CapsuleX.
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _currentPageIndex = 0;

  void _onGetStartedPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const OnboardingSecondPage(),
      ),
    );
  }


  void _onLogInPressed() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Log In clicked!'),
        backgroundColor: AppColors.primaryPurple,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 16.0,
                    ),
                    child: Column(
                      children: [
                        const Spacer(flex: 2),

                        // Hero Image with ambient glow
                        const OnboardingHeroImage(),

                        const Spacer(flex: 2),

                        // Title, Subtitle, and Description Text
                        const OnboardingContentSection(),

                        const Spacer(flex: 3),

                        // 3-Dot Page Indicator
                        CustomPageIndicator(
                          count: 3,
                          currentIndex: _currentPageIndex,
                        ),

                        const SizedBox(height: 24),

                        // Main CTA Button
                        PrimaryButton(
                          title: AppStrings.getStarted,
                          onPressed: _onGetStartedPressed,
                        ),

                        const SizedBox(height: 8),

                        // Secondary Log In Button
                        TextLinkButton(
                          title: AppStrings.logIn,
                          onPressed: _onLogInPressed,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
