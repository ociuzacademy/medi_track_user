import 'package:flutter/material.dart';

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
              // Add donation logic here
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
