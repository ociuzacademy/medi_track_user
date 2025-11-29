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
        Column(
          children: appointmentBookingProvider.doctors.map((doctor) {
            final isSelected =
                appointmentBookingProvider.selectedDoctorId == doctor['id'];
            return DoctorCard(
              doctor: doctor,
              isSelected: isSelected,
              onTap: () {
                appointmentBookingProvider.setSelectedDoctor(doctor['id']);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
