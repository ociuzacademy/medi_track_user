// ignore_for_file: public_member_api_docs, sort_constructors_first
// details_list.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RefundStatusRow extends StatelessWidget {
  const RefundStatusRow({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Refund Status',
            style: GoogleFonts.lexend(
              fontSize: 14,
              color: isDark ? const Color(0xFF9E9E9E) : const Color(0xFF5f868c),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFFFC107).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.hourglass_top,
                  color: isDark
                      ? const Color(0xFFFFC107)
                      : const Color(0xFF996500),
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  'Pending',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: isDark
                        ? const Color(0xFFFFC107)
                        : const Color(0xFF996500),
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
