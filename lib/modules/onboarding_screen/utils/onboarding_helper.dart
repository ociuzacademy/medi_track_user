// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:medi_track/core/localstorage/app_storage_functions.dart';

import 'package:medi_track/modules/login_module/view/login_page.dart';
import 'package:medi_track/modules/onboarding_screen/models/onboarding_content.dart';

class OnboardingHelper {
  final BuildContext context;
  final PageController pageController;
  final ValueNotifier<int> currentPage;
  final List<OnboardingContent> onboardingContents;
  const OnboardingHelper({
    required this.context,
    required this.pageController,
    required this.currentPage,
    required this.onboardingContents,
  });

  void nextPage() async {
    if (currentPage.value < onboardingContents.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Handle onboarding completion
      await _onGetStarted();
    }
  }

  Future<void> _onGetStarted() async {
    // Navigate to main app or next screen
    debugPrint('Onboarding complete!');

    await AppStorgeFunctions.disableIntroScreen();

    if (context.mounted) {
      Navigator.pushReplacement(context, LoginPage.route());
    }
  }
}
