// account_settings_section.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/utils/account_settings_section_helper.dart';
import 'package:medi_track/modules/home_module/widgets/profile_logout_item.dart';
import 'package:medi_track/modules/home_module/widgets/profile_setting_item.dart';
import 'package:medi_track/modules/submit_complaint_module/view/submit_complaint_page.dart';

class AccountSettingsSection extends StatelessWidget {
  const AccountSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
              'Account Settings',
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

          // Settings Items
          ProfileSettingItem(
            icon: Icons.lock,
            title: 'Change Password',
            onTap: () {
              // Handle change password
            },
            isFirst: true,
          ),
          ProfileSettingItem(
            icon: Icons.notifications,
            title: 'Manage Notifications',
            onTap: () {
              // Handle manage notifications
            },
          ),
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
