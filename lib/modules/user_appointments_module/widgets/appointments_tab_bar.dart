// appointments_tab_bar.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

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
            color: isDark ? AppColors.borderDark : const Color(0xFFdbe1e6),
          ),
        ),
      ),
      child: TabBar(
        controller: tabController,
        labelColor: AppColors.primary,
        unselectedLabelColor: isDark
            ? AppColors.textTertiaryDark
            : AppColors.textTertiaryLight,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 3, color: Color(0xFF007AFF)),
          insets: EdgeInsets.symmetric(horizontal: 0),
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
