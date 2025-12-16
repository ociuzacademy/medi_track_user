import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/view/blood_request_notifications_page.dart';

class NotificationsSectionHeader extends StatelessWidget {
  const NotificationsSectionHeader({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notifications',
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
              Navigator.push(context, BloodRequestNotificationsPage.route());
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
