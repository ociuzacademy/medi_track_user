import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/onboarding_screen/models/onboarding_content.dart';
import 'package:medi_track/modules/onboarding_screen/utils/onboarding_helper.dart';
import 'package:medi_track/modules/onboarding_screen/widgets/onboarding_dot_indicator.dart';
import 'package:medi_track/modules/onboarding_screen/widgets/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();

  static route() => MaterialPageRoute(builder: (_) => OnboardingScreen());
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final OnboardingHelper _onboardingHelper;
  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);

  final List<OnboardingContent> _onboardingContents = [
    OnboardingContent(
      imageUrl:
          "https://lh3.googleusercontent.com/aida-public/AB6AXuBDZPlYInYFVz4g8qs3mLXRbqD1ZilZxJjNSkrpIg-ufT4w_CrwAZXhfjBGPWtmnD3gNd-A-K_0vzIInRkDuWkg5pwijfLujt6bFDEZh00zrJKZ6sbd-PCvIxkCQLngLDDpbsaQ0kWf7dxwGQnb4Vr-e7yC1FUjme3Q7o6JwveA65BCf-5cTO_2usrp1qjNYGI8xpwN415VpTxLdiFsV81E4f1WAsuNyRLSoU74l-DKzg9ocUzPcPTnY4dNy4WoiborcpUlAPDazV3C",
      title: "Book Appointments",
      description:
          "Schedule your next check-up with ease. Find available slots and book instantly.",
    ),
    OnboardingContent(
      imageUrl:
          "https://lh3.googleusercontent.com/aida-public/AB6AXuDmc15fuTPjP-mOrMKuRkotpBQ-3CPmDVvp6qpWsIWZCPm2Pbq6I2nlZP_KF95RruxAC-5wS1mJX8ZA7wHYs-9urE80w1su7am8ijqkN6tXKDqUXpOwaSEmuEwNDu8bLaCNQgP6C7diMK6elHXNtddrXum88N8MsRkirqNeIeuKdJ8Izs7Cpuc5EXE5uNHY_0tPdZVK76JX1sUweEarV2przZJpCgb8W5DVHnW9CdzWg0Dgp1sOeBcg2JlqYajwRJ1PWTe9x4ixVBPN",
      title: "Digital Prescriptions",
      description:
          "Access your prescriptions digitally. View, manage, and refill them on the go.",
    ),
    OnboardingContent(
      imageUrl:
          "https://lh3.googleusercontent.com/aida-public/AB6AXuDwd2ohUCglPXUrm7NnVdmPFTe1K2-zVeZ96pgBolX7GC22--KUSuXDGR08JZ_6afioMLbjq7SnLU74ug-Khm8sp0BKhWYthjRDnnNaXdVdf2852CJpJN0kZLhGp3i9D8PQA6cjWtH1SyFogyV5tAzVC5-gOO51CT1NTWHa_Bz9WJ6F7j86fOA9ZJlBbk4FmobxGVbrzuQmB6IJNDkDadYLPgDtmua1CdPEf-O5EV03rlrNcX1k5Kz9zn7UJ88ob73YDAa3RneBX_pj",
      title: "Blood Donation",
      description:
          "Become a hero. Find donation drives, schedule your visit, and save lives.",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _onboardingHelper = OnboardingHelper(
      context: context,
      pageController: _pageController,
      currentPage: _currentPage,
      onboardingContents: _onboardingContents,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _currentPage.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Page View Content
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _onboardingContents.length,
                onPageChanged: (int page) {
                  _currentPage.value = page;
                },
                itemBuilder: (context, index) {
                  return OnboardingPage(content: _onboardingContents[index]);
                },
              ),
            ),

            // Dots Indicator and Button
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Dots Indicator
                  ValueListenableBuilder<int>(
                    valueListenable: _currentPage,
                    builder: (context, value, _) => OnboardingDotIndicator(
                      currentPage: value,
                      pageCount: _onboardingContents.length,
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Action Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _onboardingHelper.nextPage,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 20,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 0,
                      ),
                      child: ValueListenableBuilder<int>(
                        valueListenable: _currentPage,
                        builder: (context, value, _) => Text(
                          value == _onboardingContents.length - 1
                              ? 'Get Started'
                              : 'Next',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
