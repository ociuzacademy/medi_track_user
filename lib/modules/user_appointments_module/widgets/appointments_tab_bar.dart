// appointments_tab_bar.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppointmentsTabBar extends StatelessWidget
    implements PreferredSizeWidget {
  final TabController tabController;

  const AppointmentsTabBar({super.key, required this.tabController});

  @override
  Size get preferredSize => const Size.fromHeight(48);

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isDark ? const Color(0xFF374151) : const Color(0xFFdbe1e6),
          ),
        ),
      ),
      child: TabBar(
        controller: tabController,
        labelColor: const Color(0xFF007AFF),
        unselectedLabelColor: isDark
            ? const Color(0xFF9CA3AF)
            : const Color(0xFF6B7280),
        indicator: UnderlineTabIndicator(
          borderSide: const BorderSide(width: 3, color: Color(0xFF007AFF)),
          insets: const EdgeInsets.symmetric(horizontal: 0),
        ),
        tabs: [
          Tab(
            child: Text(
              'Upcoming',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.015,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Completed',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.015,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Cancelled',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.015,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Modified',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.015,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
