// action_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    if (isTablet) {
      // For tablets - use Row with Flexible instead of Expanded
      return Row(
        children: [
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle accept action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF04798b),
                    foregroundColor: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Accept',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.015,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              margin: const EdgeInsets.only(left: 8),
              child: SizedBox(
                height: 48,
                child: OutlinedButton(
                  onPressed: () {
                    // Handle reject action
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFFE53935),
                    side: const BorderSide(color: Color(0xFFE53935)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Reject',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.015,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      // For phones - use Column without Expanded
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                // Handle accept action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF04798b),
                foregroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Accept',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.015,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: OutlinedButton(
              onPressed: () {
                // Handle reject action
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFFE53935),
                side: const BorderSide(color: Color(0xFFE53935)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Reject',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.015,
                ),
              ),
            ),
          ),
        ],
      );
    }
  }
}
