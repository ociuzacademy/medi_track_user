// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medi_track/modules/home_module/view/home_page.dart';
import 'package:medi_track/modules/login_module/view/login_page.dart';

import 'package:medi_track/modules/onboarding_screen/view/onboarding_screen.dart';
import 'package:medi_track/modules/splash_screen_module/widgets/loading_dots.dart';
import 'package:medi_track/modules/splash_screen_module/widgets/splash_content.dart';

class SplashScreen extends StatefulWidget {
  final bool isFirstLaunch;
  final bool isLoggedIn;
  const SplashScreen({
    super.key,
    required this.isFirstLaunch,
    required this.isLoggedIn,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  final List<Animation<double>> _dotAnimations = [];
  Timer? _navigationTimer;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _startNavigationTimer();
  }

  void _initializeAnimations() {
    // Main animation controller for dots
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1400),
      vsync: this,
    )..repeat();

    // Fade animation for smooth transition (optional)
    _fadeAnimation = Tween<double>(begin: 1.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    // Create animations for each dot with different delays
    for (int i = 0; i < 3; i++) {
      _dotAnimations.add(
        Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Interval(i * 0.2, 1.0, curve: Curves.easeInOut),
          ),
        ),
      );
    }
  }

  void _startNavigationTimer() {
    _navigationTimer = Timer(const Duration(seconds: 3), _navigateToOnboarding);
  }

  void _navigateToOnboarding() {
    if (mounted) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            if (widget.isFirstLaunch) {
              return OnboardingScreen();
            } else {
              if (widget.isLoggedIn) {
                return HomePage();
              } else {
                return LoginPage();
              }
            }
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 500),
        ),
      );
    }
  }

  @override
  void dispose() {
    _navigationTimer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: AnimatedBuilder(
        animation: _fadeAnimation,
        builder: (context, child) {
          return Opacity(
            opacity: _fadeAnimation.value,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [colorScheme.primary, colorScheme.primaryContainer],
                ),
              ),
              child: Stack(
                children: [
                  // Main Content
                  const Center(child: SplashContent()),

                  // Loading Dots
                  Positioned(
                    bottom: 64,
                    left: 0,
                    right: 0,
                    child: LoadingDots(
                      animations: _dotAnimations,
                      color: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
