// patient_details_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/prescription_details_module/widgets/patient_detail_row.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class PatientDetailsCard extends StatelessWidget {
  const PatientDetailsCard({
    super.key,
    required this.username,
    required this.email,
    required this.phoneNumber,
  });
  final String username;
  final String email;
  final String phoneNumber;

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
            'Patient Details',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isDark ? Colors.white : AppColors.textPrimaryLight,
            ),
          ),
          const SizedBox(height: 16),
          PatientDetailRow(
            context: context,
            icon: Icons.person,
            label: 'Patient Name',
            value: username,
          ),
          const SizedBox(height: 16),
          PatientDetailRow(
            context: context,
            icon: Icons.email,
            label: 'Email',
            value: email,
          ),
          const SizedBox(height: 16),
          PatientDetailRow(
            context: context,
            icon: Icons.phone,
            label: 'Phone Number',
            value: phoneNumber.isEmpty ? 'Not provided' : phoneNumber,
          ),
        ],
      ),
    );
  }
}
