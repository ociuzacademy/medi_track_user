import 'package:flutter/material.dart';
import 'package:medi_track/modules/update_donation_record_module/view/update_donation_record_page.dart';

class BloodDonationHistoryHelper {
  const BloodDonationHistoryHelper();
  void addExternalDonation(BuildContext context) {
    // Show dialog or navigate to add donation page
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add External Donation'),
        content: const Text(
          'This feature would allow you to add donations made outside the app.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(context, UpdateDonationRecordPage.route());
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF1565C0),
            ),
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
