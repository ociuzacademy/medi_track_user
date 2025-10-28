import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/onboarding_screen/models/onboarding_content.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingContent content;

  const OnboardingPage({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;
    final _ = screenSize.width < 350;
    final _ = screenSize.width > 600;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenSize.width * 0.05,
        vertical: screenSize.height * 0.02,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image Container
          Container(
            width: _getImageSize(context),
            height: _getImageSize(context),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenSize.width * 0.04),
              image: DecorationImage(
                image: NetworkImage(content.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: screenSize.height * 0.05),

          // Title
          Text(
            content.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: _responsiveFontSize(context, 28),
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurface,
              height: 1.2,
            ),
          ),

          SizedBox(height: screenSize.height * 0.02),

          // Description
          SizedBox(
            width: _getDescriptionWidth(context),
            child: Text(
              content.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: _responsiveFontSize(context, 16),
                fontWeight: FontWeight.w400,
                color: colorScheme.onSurface.withValues(alpha: 0.7),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  double _getImageSize(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final minDimension = screenSize.width < screenSize.height
        ? screenSize.width
        : screenSize.height;

    if (screenSize.width < 350) {
      return minDimension * 0.6;
    } else if (screenSize.width > 600) {
      return minDimension * 0.5;
    }
    return minDimension * 0.7;
  }

  double _getDescriptionWidth(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.width > 600) {
      return screenSize.width * 0.6;
    }
    return screenSize.width * 0.8;
  }

  double _responsiveFontSize(BuildContext context, double baseSize) {
    final screenSize = MediaQuery.of(context).size;
    final textScaler = MediaQuery.of(context).textScaler; // UPDATED
    final width = screenSize.width;

    double scaleFactor;
    if (width < 350) {
      scaleFactor = 0.8;
    } else if (width > 600) {
      scaleFactor = 1.2;
    } else {
      scaleFactor = 1.0;
    }

    return textScaler.scale(baseSize * scaleFactor); // UPDATED
  }
}
