// personal_info_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/modules/home_module/widgets/personal_info_row.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class PersonalInfoSection extends StatelessWidget {
  const PersonalInfoSection({
    super.key,
    required this.name,
    required this.dob,
    required this.gender,
    required this.phoneNumber,
    required this.email,
    required this.bloodGroup,
    required this.address,
  });
  final String name;
  final DateTime dob;
  final String gender;
  final String phoneNumber;
  final String email;
  final String bloodGroup;
  final String address;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final _ = screenWidth < 400 ? 0.4 : 0.35;
    final DateFormat dateFormat = DateFormat('dd-MM-yyyy');

    return Container(
      decoration: BoxDecoration(
        color: AppColors.card(context),
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
                color: AppColors.textSecondary(context),
              ),
            ),
          ),

          // Personal Info Items
          PersonalInfoRow(label: 'Full Name', value: name, isFirst: true),
          PersonalInfoRow(
            label: 'Date of Birth',
            value: dateFormat.format(dob),
          ),
          PersonalInfoRow(label: 'Gender', value: gender),
          PersonalInfoRow(label: 'Phone Number', value: phoneNumber),
          PersonalInfoRow(label: 'Email Address', value: email),
          PersonalInfoRow(label: 'Blood Group', value: bloodGroup),
          PersonalInfoRow(label: 'Address', value: address),
        ],
      ),
    );
  }
}
