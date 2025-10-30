// widgets/donation_history_card.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_donation_history_module/widgets/donation_detail.dart';
import 'package:medi_track/modules/blood_donation_history_module/models/blood_donation_history.dart';

class DonationHistoryCard extends StatelessWidget {
  final BloodDonationHistory donation;

  const DonationHistoryCard({super.key, required this.donation});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A1A2E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withValues(alpha: 0.2)
                : Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with date and status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  donation.formattedDate,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isDark
                        ? const Color(0xFFF3F4F6)
                        : const Color(0xFF1A1A1A),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? donation.status.darkBackgroundColor
                        : donation.status.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    donation.status.displayName,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: donation.status.color,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // Donation details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DonationDetail(
                  label: 'Donation Type:',
                  value: donation.donationType,
                  isDark: isDark,
                ),
                const SizedBox(height: 4),
                DonationDetail(
                  label: 'Units Donated:',
                  value: donation.unitsDonated,
                  isDark: isDark,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
