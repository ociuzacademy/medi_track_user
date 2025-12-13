import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/home_module/utils/bottom_navigation_helper.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected
                ? AppColors.primary
                : AppColors.textPrimary(context).withValues(alpha: 0.5),
            size: screenSize.width * 0.06,
          ),
          SizedBox(height: screenSize.height * 0.005),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: BottomNavigationHelper.responsiveFontSize(context, 12),
              fontWeight: FontWeight.w500,
              color: isSelected
                  ? AppColors.primary
                  : AppColors.textPrimary(context).withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
