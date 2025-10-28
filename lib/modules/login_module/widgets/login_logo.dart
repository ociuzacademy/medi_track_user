import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  static const String assetName = 'assets/icons/hospital-svgrepo-com.svg';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        // Responsive SVG Logo
        Container(
          width: _getLogoSize(context),
          height: _getLogoSize(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(screenSize.width * 0.03),
          ),
          child: SvgPicture.asset(assetName, semanticsLabel: 'Hospital Logo'),
        ),

        SizedBox(height: screenSize.height * 0.02),

        // Welcome Text
        Text(
          'Welcome Back',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: _responsiveFontSize(context, 28),
            fontWeight: FontWeight.w700,
            color: colorScheme.onSurface,
          ),
        ),

        SizedBox(height: screenSize.height * 0.01),

        // Subtitle
        Text(
          'Log in to continue your journey.',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: _responsiveFontSize(context, 16),
            fontWeight: FontWeight.w400,
            color: colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
      ],
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
      return minDimension * 0.15;
    }
    return minDimension * 0.2;
  }

  double _responsiveFontSize(BuildContext context, double baseSize) {
    final screenSize = MediaQuery.of(context).size;
    final textScaler = MediaQuery.of(
      context,
    ).textScaler; // UPDATED: using textScaler
    final width = screenSize.width;

    double scaleFactor;
    if (width < 350) {
      scaleFactor = 0.8;
    } else if (width > 600) {
      scaleFactor = 1.2;
    } else {
      scaleFactor = 1.0;
    }

    return textScaler.scale(
      baseSize * scaleFactor,
    ); // UPDATED: using textScaler.scale()
  }
}
