// action_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback onReset;
  final VoidCallback onSubmit;
  final bool isSubmitting;

  const ActionButtons({
    super.key,
    required this.onReset,
    required this.onSubmit,
    required this.isSubmitting,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    if (isTablet) {
      // Tablet layout - use Row with Expanded
      return Row(
        children: [
          // Reset Button
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              child: OutlinedButton(
                onPressed: isSubmitting ? null : onReset,
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color(0xFF00796B),
                  side: const BorderSide(color: Color(0xFF00796B)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  'Reset Form',
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),

          // Submit Button
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 8),
              child: ElevatedButton(
                onPressed: isSubmitting ? null : onSubmit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFea2a33),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: isSubmitting
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.white,
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.send, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Submit Complaint',
                            style: GoogleFonts.lexend(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ],
      );
    } else {
      // Mobile layout - use Column without Expanded
      return Column(
        children: [
          // Reset Button
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 8),
            child: OutlinedButton(
              onPressed: isSubmitting ? null : onReset,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF00796B),
                side: const BorderSide(color: Color(0xFF00796B)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: Text(
                'Reset Form',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // Submit Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isSubmitting ? null : onSubmit,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFea2a33),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
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
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.send, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          'Submit Complaint',
                          style: GoogleFonts.lexend(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      );
    }
  }
}
