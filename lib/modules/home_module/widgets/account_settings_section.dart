// account_settings_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/utils/account_settings_section_helper.dart';
import 'package:medi_track/modules/home_module/widgets/profile_logout_item.dart';
import 'package:medi_track/modules/home_module/widgets/profile_setting_item.dart';
import 'package:medi_track/modules/submit_complaint_module/view/submit_complaint_page.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class AccountSettingsSection extends StatelessWidget {
  const AccountSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Account Settings',
              style: GoogleFonts.lexend(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.015,
                color: AppColors.textSecondary(context),
              ),
            ),
          ),

          // ProfileSettingItem(
          //   icon: Icons.notifications,
          //   title: 'Manage Notifications',
          //   onTap: () {
          //     Navigator.push(context, RescheduledAppointmentsPage.route());
          //   },
          //   isFirst: true,
          // ),
          ProfileSettingItem(
            icon: Icons.report,
            title: 'Register Complaint',
            onTap: () {
              Navigator.push(context, SubmitComplaintPage.route());
            },
          ),
          ProfileLogoutItem(
            onLogoutButtonClick: () {
              AccountSettingsSectionHelper.showLogoutConfirmation(context);
            },
          ),
        ],
      ),
    );
  }
}
