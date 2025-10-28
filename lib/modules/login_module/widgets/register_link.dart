import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterLink extends StatelessWidget {
  final ColorScheme colorScheme;
  final VoidCallback navigateToRegister;
  const RegisterLink({
    super.key,
    required this.colorScheme,
    required this.navigateToRegister,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: GoogleFonts.inter(
            fontSize: _responsiveFontSize(context, 14),
            color: colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        SizedBox(width: screenSize.width * 0.01),
        GestureDetector(
          onTap: navigateToRegister,
          child: Text(
            'Register',
            style: GoogleFonts.inter(
              fontSize: _responsiveFontSize(context, 14),
              fontWeight: FontWeight.w500,
              color: colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  double _responsiveFontSize(BuildContext context, double baseSize) {
    final screenSize = MediaQuery.of(context).size;
    final textScaler = MediaQuery.of(
      context,
    ).textScaler; // UPDATED: using textScaler
    final width = screenSize.width;

    double scaleFactor;
    if (width < 350) {
      scaleFactor = 0.9;
    } else if (width > 600) {
      scaleFactor = 1.1;
    } else {
      scaleFactor = 1.0;
    }

    return textScaler.scale(
      baseSize * scaleFactor,
    ); // UPDATED: using textScaler.scale()
  }
}
