import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/header_card_content.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/header_card_icon.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF182431) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      child: isTablet
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderCardIcon(),
                const SizedBox(width: 16),
                Expanded(child: HeaderCardContent(isDark: isDark)),
              ],
            )
          : Column(
              children: [
                const HeaderCardIcon(),
                const SizedBox(height: 16),
                HeaderCardContent(isDark: isDark),
              ],
            ),
    );
  }
}
