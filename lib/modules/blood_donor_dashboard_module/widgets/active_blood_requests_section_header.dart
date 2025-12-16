import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/blood_requests_module/view/blood_requests_page.dart';

class ActiveBloodRequestsSectionHeader extends StatelessWidget {
  const ActiveBloodRequestsSectionHeader({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Active Blood Requests',
            style: GoogleFonts.lexend(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.015,
              color: isDark
                  ? AppColors.textPrimaryDark
                  : AppColors.textPrimaryLight,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, BloodRequestsPage.route());
            },
            child: Text(
              'See All',
              style: GoogleFonts.lexend(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryAlt,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
