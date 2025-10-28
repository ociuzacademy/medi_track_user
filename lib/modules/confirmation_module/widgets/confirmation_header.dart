// confirmation_header.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationHeader extends StatelessWidget {
  const ConfirmationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        // Success Icon
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: const Color(0xFF4CAF50),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 48),
        ),

        const SizedBox(height: 24),

        // Success Message
        Text(
          'Appointment Booked Successfully!',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : const Color(0xFF111518),
          ),
        ),
      ],
    );
  }
}
