import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonorDashboardActionItem extends StatelessWidget {
  const DonorDashboardActionItem({
    super.key,
    required this.icon,
    required this.title,
    required this.isDark,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final bool isDark;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF1E293B) : Colors.white,
            borderRadius: BorderRadius.circular(12),
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
            children: [
              // Icon
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF137fec).withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: const Color(0xFF137fec), size: 24),
              ),
              const SizedBox(width: 16),
              // Title
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : const Color(0xFF111418),
                  ),
                ),
              ),
              // Chevron
              Icon(
                Icons.chevron_right,
                color: isDark
                    ? const Color(0xFF9CA3AF)
                    : const Color(0xFF6B7280),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
