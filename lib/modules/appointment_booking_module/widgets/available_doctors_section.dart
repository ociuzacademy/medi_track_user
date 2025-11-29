// available_doctors_section.dart
import 'package:flutter/material.dart';
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
              color: theme.brightness == Brightness.dark
                  ? Colors.white
                  : const Color(0xFF111518),
            ),
          ),
        ),
        (appointmentBookingProvider.doctors == null ||
                appointmentBookingProvider.doctors!.isEmpty)
            ? Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: theme.brightness == Brightness.dark
                      ? const Color(0xFF101a22)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.brightness == Brightness.dark
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
                        color: theme.brightness == Brightness.dark
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
                            (theme.brightness == Brightness.dark
                                    ? Colors.white
                                    : const Color(0xFF111518))
                                .withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                children: appointmentBookingProvider.doctors!.map((doctor) {
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
              ),
      ],
    );
  }
}
