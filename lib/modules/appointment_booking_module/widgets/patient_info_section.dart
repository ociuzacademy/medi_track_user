// patient_info_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/patient_info_row.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_booking_module/providers/appointment_booking_provider.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class PatientInfoSection extends StatelessWidget {
  const PatientInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final AppointmentBookingProvider appointmentBookingProvider =
        Provider.of<AppointmentBookingProvider>(context);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Patient Information',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : AppColors.textPrimaryLight,
            ),
          ),
        ),
        // Patient Details Card
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(
              0xFFBBDEFB,
            ).withValues(alpha: isDark ? 0.1 : 0.2),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(
                0xFFBBDEFB,
              ).withValues(alpha: isDark ? 0.3 : 0.5),
            ),
          ),
          child: BlocBuilder<UserProfileCubit, UserProfileState>(
            builder: (context, state) {
              switch (state) {
                case UserProfileInitial():
                  return const SizedBox.shrink();
                case UserProfileLoading():
                  return const Center(child: CircularProgressIndicator());
                case UserProfileSuccess():
                  return Column(
                    children: [
                      PatientInfoRow(
                        label: 'Patient Name',
                        value: state.userProfile.username,
                        isDark: isDark,
                      ),
                      const SizedBox(height: 12),
                      PatientInfoRow(
                        label: 'Patient ID',
                        value: '#${state.userProfile.id}',
                        isDark: isDark,
                      ),
                    ],
                  );
                case UserProfileError(:final message):
                  return Center(
                    child: Text(
                      'Error: $message',
                      style: GoogleFonts.inter(
                        color: isDark
                            ? Colors.red.shade200
                            : Colors.red.shade700,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
              }
            },
          ),
        ),
        const SizedBox(height: 16),
        // Symptoms Text Field (Optional)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Reason for Visit / Symptoms',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: isDark ? Colors.white : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  '(Optional)',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: (isDark ? Colors.white : AppColors.textPrimaryLight)
                        .withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              height: 112,
              decoration: BoxDecoration(
                color: isDark ? AppColors.backgroundDark : Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isDark
                      ? AppColors.borderDark
                      : const Color(0xFFdbe1e6),
                ),
              ),
              child: TextField(
                controller: appointmentBookingProvider.symptomsController,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'e.g. Chest pain, annual check-up... (Optional)',
                  hintStyle: GoogleFonts.inter(
                    color: (isDark ? Colors.white : AppColors.textPrimaryLight)
                        .withValues(alpha: 0.5),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(16),
                ),
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: isDark ? Colors.white : AppColors.textPrimaryLight,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
