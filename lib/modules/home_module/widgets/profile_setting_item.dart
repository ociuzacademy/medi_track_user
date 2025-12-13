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
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: isFirst
              ? BorderSide.none
              : BorderSide(color: AppColors.border(context)),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: AppColors.primary, size: 24),
        title: Text(
          title,
          style: GoogleFonts.lexend(
            fontSize: 16,
            color: AppColors.textSecondary(context),
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: AppColors.textTertiary(context),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: const RoundedRectangleBorder(),
      ),
    );
  }
}
