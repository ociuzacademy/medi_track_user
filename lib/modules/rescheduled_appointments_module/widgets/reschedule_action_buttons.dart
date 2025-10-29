// widgets/appointment_card.dart

import 'package:flutter/material.dart';

class RescheduleActionButtons extends StatelessWidget {
  const RescheduleActionButtons({
    super.key,
    required this.onReject,
    required this.onAccept,
  });

  final VoidCallback? onReject;
  final VoidCallback? onAccept;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade200, width: 1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Reject button
          SizedBox(
            height: 40,
            child: OutlinedButton(
              onPressed: onReject,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.grey.shade700,
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Reject'),
            ),
          ),
          const SizedBox(width: 12),
          // Accept button
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: onAccept,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF137FEC),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Accept Reschedule'),
            ),
          ),
        ],
      ),
    );
  }
}
