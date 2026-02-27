// widgets/donation_history_card.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/models/blood_donation_history_model.dart';
import 'package:medi_track/modules/blood_donation_history_module/widgets/donation_detail.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class DonationHistoryCard extends StatelessWidget {
  final BloodDonationHistoryModel donation;

  const DonationHistoryCard({super.key, required this.donation});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('dd MMM yyyy');

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
            // Header with date
            Text(
              dateFormat.format(donation.donationDate),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isDark
                    ? AppColors.surfaceLight
                    : const Color(0xFF1A1A1A),
              ),
            ),
            const SizedBox(height: 8),
            // Donation details
            DonationDetail(
              label: 'Units Donated:',
              value: donation.units.toString(),
              isDark: isDark,
            ),
          ],
        ),
      ),
    );
  }
}
