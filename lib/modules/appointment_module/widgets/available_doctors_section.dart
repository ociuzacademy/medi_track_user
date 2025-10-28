// available_doctors_section.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/appointment_module/widgets/doctor_card.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointment_module/providers/appointment_provider.dart';

class AvailableDoctorsSection extends StatelessWidget {
  const AvailableDoctorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final appointmentProvider = Provider.of<AppointmentProvider>(context);
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
          children: appointmentProvider.doctors.map((doctor) {
            final isSelected =
                appointmentProvider.selectedDoctorId == doctor['id'];
            return DoctorCard(
              doctor: doctor,
              isSelected: isSelected,
              onTap: () {
                appointmentProvider.setSelectedDoctor(doctor['id']);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
