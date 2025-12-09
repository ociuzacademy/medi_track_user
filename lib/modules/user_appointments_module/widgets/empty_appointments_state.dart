// empty_appointments_state.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class EmptyAppointmentsState extends StatelessWidget {
  final String title;
  final String description;
  final bool showBookButton;

  const EmptyAppointmentsState({
    super.key,
    required this.title,
    required this.description,
    this.showBookButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration (using an icon as placeholder)
          Container(
            width: 192,
            height: 192,
            decoration: BoxDecoration(
              color: isDark ? AppColors.cardDark : AppColors.surfaceLight,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.calendar_today_outlined,
              size: 64,
              color: AppColors.textTertiary(context),
            ),
          ),

          const SizedBox(height: 24),

          // Title
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary(context),
            ),
          ),

          const SizedBox(height: 8),

          // Description
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: AppColors.textTertiary(context),
            ),
          ),

          const SizedBox(height: 24),

          // Book Appointment Button (only show when specified)
          if (showBookButton)
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to book appointment page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Book Appointment',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
