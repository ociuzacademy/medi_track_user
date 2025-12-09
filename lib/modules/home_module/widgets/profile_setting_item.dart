// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class ProfileSettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isFirst;
  const ProfileSettingItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isFirst = false,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: isFirst
              ? BorderSide.none
              : BorderSide(
                  color: isDark
                      ? const Color(0xFF334155)
                      : const Color(0xFFdbe4e6),
                ),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: const Color(0xFF4A90E2), size: 24),
        title: Text(
          title,
          style: GoogleFonts.lexend(
            fontSize: 16,
            color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: isDark ? const Color(0xFF94A3B8) : const Color(0xFF64748B),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: const RoundedRectangleBorder(),
      ),
    );
  }
}
