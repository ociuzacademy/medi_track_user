// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileLogoutItem extends StatelessWidget {
  final VoidCallback onLogoutButtonClick;
  const ProfileLogoutItem({super.key, required this.onLogoutButtonClick});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: isDark ? const Color(0xFF334155) : const Color(0xFFdbe4e6),
          ),
        ),
      ),
      child: ListTile(
        onTap: onLogoutButtonClick,
        leading: Icon(Icons.logout, color: const Color(0xFFD0021B), size: 24),
        title: Text(
          'Logout',
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color(0xFFD0021B),
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
