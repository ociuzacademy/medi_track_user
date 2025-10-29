import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/donor_dashboard_action_item.dart';
import 'package:medi_track/modules/blood_donor_register_module/view/blood_donor_register_page.dart';
import 'package:medi_track/modules/update_donation_record_module/view/update_donation_record_page.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        // Section Header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Quick Actions',
              style: GoogleFonts.lexend(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.015,
                color: isDark ? Colors.white : const Color(0xFF111418),
              ),
            ),
          ),
        ),

        // Action Items
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              DonorDashboardActionItem(
                icon: Icons.edit_note,
                title: 'Update Donor Information',
                isDark: isDark,
                onTap: () {
                  Navigator.push(context, UpdateDonationRecordPage.route());
                },
              ),
              const SizedBox(height: 8),
              DonorDashboardActionItem(
                icon: Icons.person_add,
                title: 'Register Donor',
                isDark: isDark,
                onTap: () {
                  Navigator.push(context, BloodDonorRegisterPage.route());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
