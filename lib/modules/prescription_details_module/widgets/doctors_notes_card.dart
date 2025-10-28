// doctors_notes_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsNotesCard extends StatelessWidget {
  const DoctorsNotesCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2F2C) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 1,
            spreadRadius: 0,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Doctor\'s Notes',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Patient advised to take complete rest for 3 days. Drink plenty of warm fluids and avoid cold beverages. Monitor temperature regularly. If symptoms persist after the course of medication, schedule a follow-up.',
            style: GoogleFonts.lexend(
              fontSize: 14,
              color: isDark ? const Color(0xFFD1D5DB) : const Color(0xFF6B7280),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
