import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/utils/bottom_navigation_helper.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final ColorScheme colorScheme;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.colorScheme,
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
                ? colorScheme.primary
                : colorScheme.onSurface.withValues(alpha: 0.5),
            size: screenSize.width * 0.06,
          ),
          SizedBox(height: screenSize.height * 0.005),
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: BottomNavigationHelper.responsiveFontSize(context, 12),
              fontWeight: FontWeight.w500,
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
