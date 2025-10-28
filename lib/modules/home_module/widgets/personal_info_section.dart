// personal_info_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/widgets/personal_info_row.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final _ = screenWidth < 400 ? 0.4 : 0.35;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A2A2D) : Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Header
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Personal Information',
              style: GoogleFonts.lexend(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.015,
                color: isDark
                    ? const Color(0xFFE0E0E0)
                    : const Color(0xFF333333),
              ),
            ),
          ),

          // Personal Info Items
          PersonalInfoRow(label: 'Full Name', value: 'Jane Doe', isFirst: true),
          PersonalInfoRow(label: 'Date of Birth', value: '01-Jan-1990'),
          PersonalInfoRow(label: 'Gender', value: 'Female'),
          PersonalInfoRow(label: 'Phone Number', value: '+1 (123) 456-7890'),
          PersonalInfoRow(
            label: 'Email Address',
            value: 'jane.doe@example.com',
          ),
          PersonalInfoRow(label: 'Blood Group', value: 'O+'),
          PersonalInfoRow(
            label: 'Address',
            value: '123 Wellness Ave, Health City',
          ),
        ],
      ),
    );
  }
}
