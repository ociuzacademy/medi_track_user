import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final ColorScheme colorScheme;
  final VoidCallback submitForm;
  const LoginButton({
    super.key,
    required this.colorScheme,
    required this.submitForm,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: submitForm,
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            vertical: screenSize.height * 0.02,
            horizontal: screenSize.width * 0.05,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(screenSize.width * 0.03),
          ),
          elevation: 0,
        ),
        child: Text(
          'Login',
          style: GoogleFonts.inter(
            fontSize: _responsiveFontSize(context, 16),
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
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
