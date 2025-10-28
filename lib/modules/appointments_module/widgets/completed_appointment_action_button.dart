// completed_appointment_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedAppointmentActionButton extends StatelessWidget {
  const CompletedAppointmentActionButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF007AFF).withValues(alpha: 0.1),
          foregroundColor: const Color(0xFF007AFF),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          text,
          style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
