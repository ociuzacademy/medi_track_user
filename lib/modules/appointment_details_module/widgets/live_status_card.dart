// live_status_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveStatusCard extends StatelessWidget {
  const LiveStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E2B2E) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isDark
                      ? const Color(0xFF37474F)
                      : const Color(0xFFE0E0E0),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sensors,
                      color: const Color(0xFF04798b),
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Live Status',
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : const Color(0xFF212121),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.refresh,
                    color: isDark
                        ? const Color(0xFF9E9E9E)
                        : const Color(0xFF616161),
                    size: 24,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: isDark
                        ? const Color(0xFF37474F)
                        : const Color(0xFFF5F5F5),
                    shape: const CircleBorder(),
                    minimumSize: const Size(32, 32),
                  ),
                ),
              ],
            ),
          ),

          // Stats Grid
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                // Current Token
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'Current Token',
                          style: GoogleFonts.lexend(
                            fontSize: 14,
                            color: isDark
                                ? const Color(0xFF9E9E9E)
                                : const Color(0xFF616161),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'A-118',
                          style: GoogleFonts.lexend(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF04798b),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Vertical Divider
                Container(
                  width: 1,
                  height: 40,
                  color: isDark
                      ? const Color(0xFF37474F)
                      : const Color(0xFFE0E0E0),
                ),

                // Waiting Time
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'Waiting Time',
                          style: GoogleFonts.lexend(
                            fontSize: 14,
                            color: isDark
                                ? const Color(0xFF9E9E9E)
                                : const Color(0xFF616161),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '~25 min',
                          style: GoogleFonts.lexend(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: isDark
                                ? Colors.white
                                : const Color(0xFF212121),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Vertical Divider
                Container(
                  width: 1,
                  height: 40,
                  color: isDark
                      ? const Color(0xFF37474F)
                      : const Color(0xFFE0E0E0),
                ),

                // Delay
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          'Delay',
                          style: GoogleFonts.lexend(
                            fontSize: 14,
                            color: isDark
                                ? const Color(0xFF9E9E9E)
                                : const Color(0xFF616161),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '~5 min',
                          style: GoogleFonts.lexend(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFE53935),
                          ),
                        ),
                      ],
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
