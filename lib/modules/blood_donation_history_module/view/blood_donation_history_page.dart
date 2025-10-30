// pages/blood_donation_history_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_donation_history_module/helper/blood_donation_history_data.dart';

import 'package:medi_track/modules/blood_donation_history_module/models/blood_donation_history.dart';
import 'package:medi_track/modules/blood_donation_history_module/utils/blood_donation_history_helper.dart';
import 'package:medi_track/modules/blood_donation_history_module/widgets/donation_history_card.dart';
import 'package:medi_track/modules/blood_donation_history_module/widgets/no_donations_empty_state.dart';

class BloodDonationHistoryPage extends StatefulWidget {
  const BloodDonationHistoryPage({super.key});

  @override
  State<BloodDonationHistoryPage> createState() =>
      _BloodDonationHistoryPageState();

  static route() =>
      MaterialPageRoute(builder: (_) => const BloodDonationHistoryPage());
}

class _BloodDonationHistoryPageState extends State<BloodDonationHistoryPage> {
  late final BloodDonationHistoryHelper _bloodDonationHistoryHelper;
  final List<BloodDonationHistory> _donations =
      BloodDonationHistoryData.donations;

  @override
  void initState() {
    super.initState();
    _bloodDonationHistoryHelper = BloodDonationHistoryHelper();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Blood Donation History',
          style: GoogleFonts.lexend(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF101022)
            : const Color(0xFFF6F6F8),
        elevation: 0,
      ),
      backgroundColor: isDark
          ? const Color(0xFF101022)
          : const Color(0xFFF6F6F8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description text
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.size.width * 0.06,
              vertical: 8,
            ),
            child: Text(
              'View all your past blood donations and their details.',
              style: TextStyle(
                fontSize: 16,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B6B6B),
              ),
            ),
          ),
          // Donations list
          Expanded(
            child: _donations.isEmpty
                ? const NoDonationsEmptyState()
                : ListView(
                    padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.size.width * 0.04,
                      vertical: 16,
                    ),
                    children: _donations
                        .map(
                          (donation) => DonationHistoryCard(donation: donation),
                        )
                        .toList(),
                  ),
          ),
        ],
      ),
      // Floating Action Button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () =>
            _bloodDonationHistoryHelper.addExternalDonation(context),
        backgroundColor: const Color(0xFF1565C0),
        foregroundColor: Colors.white,
        elevation: 4,
        icon: const Icon(Icons.add),
        label: const Text(
          'Add External Donation',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
