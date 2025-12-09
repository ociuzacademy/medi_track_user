// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class BloodDonationHistoryItem extends StatelessWidget {
  const BloodDonationHistoryItem({
    super.key,
    required this.date,
    required this.location,
    required this.isDark,
  });

  final String date;
  final String location;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
        border: isDark
            ? Border.all(color: Colors.white.withValues(alpha: 0.1))
            : null,
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Icon
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF137fec).withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.history,
                  color: Color(0xFF137fec),
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              // Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: isDark ? Colors.white : const Color(0xFF111418),
                    ),
                  ),
                  Text(
                    location,
                    style: GoogleFonts.lexend(
                      fontSize: 14,
                      color: isDark
                          ? AppColors.textTertiaryDark
                          : AppColors.textTertiaryLight,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Status
          Text(
            'Completed',
            style: GoogleFonts.lexend(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isDark ? const Color(0xFF34D399) : const Color(0xFF059669),
            ),
          ),
        ],
      ),
    );
  }
}
