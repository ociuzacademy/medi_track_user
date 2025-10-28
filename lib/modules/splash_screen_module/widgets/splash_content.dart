import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/splash_screen_module/widgets/medi_track_logo.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          MediTrackLogo(size: _getLogoSize(context)),

          SizedBox(height: screenSize.height * 0.03),

          // Title
          Text(
            'MediTrack',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: _responsiveFontSize(context, 40),
              fontWeight: FontWeight.w900,
              color: colorScheme.onPrimary,
              letterSpacing: -0.5,
              height: 1.1,
              shadows: [
                Shadow(
                  blurRadius: 4,
                  color: Colors.black.withValues(alpha: 0.3),
                  offset: const Offset(0, 2),
                ),
              ],
            ),
          ),

          SizedBox(height: screenSize.height * 0.02),

          // Subtitle
          Text(
            'A Smarter Way to Care and Give.',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: _responsiveFontSize(context, 16),
              fontWeight: FontWeight.w500,
              color: colorScheme.onPrimary.withValues(alpha: 0.9),
              height: 1.4,
              shadows: [
                Shadow(
                  blurRadius: 2,
                  color: Colors.black.withValues(alpha: 0.2),
                  offset: const Offset(0, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  double _getLogoSize(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final minDimension = screenSize.width < screenSize.height
        ? screenSize.width
        : screenSize.height;

    if (screenSize.width < 350) {
      return minDimension * 0.25;
    } else if (screenSize.width > 600) {
      return minDimension * 0.2;
    }
    return minDimension * 0.3;
  }

  double _responsiveFontSize(BuildContext context, double baseSize) {
    final screenSize = MediaQuery.of(context).size;
    final textScaler = MediaQuery.of(context).textScaler; // UPDATED
    final width = screenSize.width;

    double scaleFactor;
    if (width < 350) {
      scaleFactor = 0.7;
    } else if (width > 600) {
      scaleFactor = 1.3;
    } else {
      scaleFactor = 1.0;
    }

    return textScaler.scale(baseSize * scaleFactor); // UPDATED
  }
}
