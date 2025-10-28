import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/utils/quick_action_item_helper.dart';

class QuickActionItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isPrimary;
  final ColorScheme colorScheme;
  final VoidCallback onTap;

  const QuickActionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.isPrimary,
    required this.colorScheme,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(screenSize.width * 0.03),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            Container(
              width: screenSize.width * 0.12,
              height: screenSize.width * 0.12,
              decoration: BoxDecoration(
                color: isPrimary
                    ? colorScheme.primary.withValues(alpha: 0.1)
                    : colorScheme.surface.withValues(alpha: 0.8),
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: isPrimary
                    ? colorScheme.primary
                    : colorScheme.onSurface.withValues(alpha: 0.6),
                size: screenSize.width * 0.06,
              ),
            ),
            SizedBox(height: screenSize.height * 0.01),

            // Title
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: QuickActionItemHelper.responsiveFontSize(context, 12),
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
