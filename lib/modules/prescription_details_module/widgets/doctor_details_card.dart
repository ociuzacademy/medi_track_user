// doctor_details_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/doctor_detail_row.dart';

class DoctorDetailsCard extends StatelessWidget {
  const DoctorDetailsCard({
    super.key,
    required this.name,
    required this.specialization,
    required this.email,
  });
  final String name;
  final String specialization;
  final String email;

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
            'Doctor Details',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : const Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 16),
          DoctorDetailRow(
            icon: Icons.medical_information,
            label: 'Name',
            value: name,
          ),
          const SizedBox(height: 16),
          DoctorDetailRow(
            icon: Icons.local_hospital,
            label: 'Specialization',
            value: specialization,
          ),
          const SizedBox(height: 16),
          DoctorDetailRow(icon: Icons.email, label: 'Email', value: email),
        ],
      ),
    );
  }
}
