// [file name]: home_content.dart
// [file content begin]

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class UpcomingAppointmentsErrorWidget extends StatelessWidget {
  const UpcomingAppointmentsErrorWidget({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.card(context),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: isDark
              ? AppColors.error.withValues(alpha: 0.3)
              : const Color(0xFFFEE2E2),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFFEE2E2),
              shape: BoxShape.circle,
              gradient: isDark
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFF991B1B).withValues(alpha: 0.8),
                        const Color(0xFFDC2626).withValues(alpha: 0.6),
                      ],
                    )
                  : const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFFEE2E2), Color(0xFFFECACA)],
                    ),
            ),
            child: Icon(
              Icons.error_outline,
              size: 40,
              color: isDark ? const Color(0xFFF87171) : AppColors.error,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Unable to Load Appointments',
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary(context),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            message.length > 100 ? '${message.substring(0, 100)}...' : message,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: AppColors.textTertiary(context),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  context
                      .read<UpcomingAppointmentsCubit>()
                      .getUpcomingAppointments();
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primaryAlt,
                  side: const BorderSide(color: AppColors.primaryAlt),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Try Again'),
              ),
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: () {
                  // Navigate to book appointment or contact support
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryAlt,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Book Appointment'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
