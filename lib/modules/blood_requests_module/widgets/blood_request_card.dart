// widgets/blood_request_card.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_requests_module/widgets/info_item.dart';
import '../models/blood_request.dart';

class BloodRequestCard extends StatelessWidget {
  final BloodRequest request;

  const BloodRequestCard({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1A1F2A) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? const Color(0xFF2D3748) : const Color(0xFFE2E8F0),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withValues(alpha: 0.3)
                : Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Urgency indicator strip
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: Container(
              width: 6,
              decoration: BoxDecoration(
                color: request.urgency.color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(left: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Patient name
                Text(
                  request.patientName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : Colors.black,
                  ),
                ),
                const SizedBox(height: 12),

                // Blood group and units required in a row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoItem(
                      icon: Icons.bloodtype,
                      label: 'Blood Group',
                      value: request.bloodGroup,
                      isDark: isDark,
                    ),
                    InfoItem(
                      icon: Icons.monitor_heart,
                      label: 'Units Required',
                      value:
                          '${request.unitsRequired} Unit${request.unitsRequired > 1 ? 's' : ''}',
                      isDark: isDark,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Urgency badge aligned to the left
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isDark
                        ? request.urgency.darkBackgroundColor
                        : request.urgency.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    request.urgency.displayName,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: request.urgency.color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
