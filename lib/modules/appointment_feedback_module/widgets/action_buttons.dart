// action_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onSubmit;
  final VoidCallback onSkip;
  final bool isSubmitting;

  const ActionButtons({
    super.key,
    required this.onSubmit,
    required this.onSkip,
    required this.isSubmitting,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Submit Feedback Button
        SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(
            onPressed: isSubmitting ? null : onSubmit,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF05c7a7),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              elevation: 4,
            ),
            child: isSubmitting
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(
                    'Submit Feedback',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),

        const SizedBox(height: 16),

        // Skip for Now Button
        SizedBox(
          width: double.infinity,
          height: 48,
          child: TextButton(
            onPressed: isSubmitting ? null : onSkip,
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF05c7a7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              'Skip for Now',
              style: GoogleFonts.lexend(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
