// available_doctors_section.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/appointment_booking_module/widgets/doctor_card.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_booking_module/providers/appointment_booking_provider.dart';

class AvailableDoctorsSection extends StatelessWidget {
  const AvailableDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appointmentBookingProvider = Provider.of<AppointmentBookingProvider>(
      context,
    );
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Available Doctors',
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111518),
            ),
          ),
        ),
        BlocBuilder<AvailableDoctorsCubit, AvailableDoctorsState>(
          builder: (context, state) {
            switch (state) {
              case AvailableDoctorsInitial():
                // Show message when department and date are not selected
                return Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF101a22) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isDark
                          ? const Color(0xFF374151)
                          : const Color(0xFFdbe1e6),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.medical_services_outlined,
                        size: 48,
                        color: theme.colorScheme.primary.withValues(alpha: 0.5),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'No doctors available',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF111518),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Please select a department and date to view available doctors',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color:
                              (isDark ? Colors.white : const Color(0xFF111518))
                                  .withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                );
              case AvailableDoctorsLoading():
                return Container(
                  padding: const EdgeInsets.all(48),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF101a22) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isDark
                          ? const Color(0xFF374151)
                          : const Color(0xFFdbe1e6),
                    ),
                  ),
                  child: const Center(child: CircularProgressIndicator()),
                );
              case AvailableDoctorsSuccess(:final availableDoctors):
                // Check if the list is empty
                if (availableDoctors.availableDoctors.isEmpty) {
                  return Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: isDark ? const Color(0xFF101a22) : Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isDark
                            ? const Color(0xFF374151)
                            : const Color(0xFFdbe1e6),
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.medical_services_outlined,
                          size: 48,
                          color: theme.colorScheme.primary.withValues(
                            alpha: 0.5,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No doctors available',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: isDark
                                ? Colors.white
                                : const Color(0xFF111518),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'No doctors are available for the selected department and date',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color:
                                (isDark
                                        ? Colors.white
                                        : const Color(0xFF111518))
                                    .withValues(alpha: 0.7),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                // Show list of doctors
                return Column(
                  children: availableDoctors.availableDoctors.map((doctor) {
                    final isSelected =
                        appointmentBookingProvider.selectedDoctor == doctor;
                    return DoctorCard(
                      doctor: doctor,
                      isSelected: isSelected,
                      onTap: () {
                        appointmentBookingProvider.setSelectedDoctor(doctor);
                      },
                    );
                  }).toList(),
                );
              case AvailableDoctorsError(:final errorMessage):
                return Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF101a22) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isDark
                          ? const Color(0xFF374151)
                          : const Color(0xFFdbe1e6),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.error_outline,
                        size: 48,
                        color: Colors.red.withValues(alpha: 0.7),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Error loading doctors',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: isDark
                              ? Colors.white
                              : const Color(0xFF111518),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        errorMessage,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color:
                              (isDark ? Colors.white : const Color(0xFF111518))
                                  .withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                );
            }
          },
        ),
      ],
    );
  }
}
