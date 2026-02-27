// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/models/blood_donation_history_model.dart';
import 'package:medi_track/modules/blood_donation_history_module/view/blood_donation_history_page.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/blood_donation_history_item.dart';

class DonationHistory extends StatelessWidget {
  final List<BloodDonationHistoryModel> donationHistory;
  const DonationHistory({super.key, required this.donationHistory});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        // Section Header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Donation History',
                style: GoogleFonts.lexend(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.015,
                  color: isDark ? Colors.white : const Color(0xFF111418),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, BloodDonationHistoryPage.route());
                },
                child: Text(
                  'View All',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF137fec),
                  ),
                ),
              ),
            ],
          ),
        ),

        // History Items
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: donationHistory.length,
            itemBuilder: (context, index) {
              final donation = donationHistory[index];
              return BloodDonationHistoryItem(
                date: donation.donationDate,
                isDark: isDark,
              );
            },
          ),
        ),
      ],
    );
  }
}
