import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class AccountSettingsSectionHelper {
  static void showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        final isDark = Theme.of(context).brightness == Brightness.dark;

        return AlertDialog(
          backgroundColor: isDark ? const Color(0xFF1A2A2D) : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          title: Text(
            'Logout',
            style: GoogleFonts.lexend(
              fontWeight: FontWeight.bold,
              color: isDark ? const Color(0xFFE0E0E0) : const Color(0xFF333333),
            ),
          ),
          content: Text(
            'Are you sure you want to logout?',
            style: GoogleFonts.lexend(
              color: isDark ? const Color(0xFF94A3B8) : const Color(0xFF64748B),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: GoogleFonts.lexend(
                  color: isDark
                      ? const Color(0xFF94A3B8)
                      : const Color(0xFF64748B),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                final AuthBloc authBloc = context.read<AuthBloc>();
                authBloc.add(const AuthEvent.userLoggingOut());
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFFD0021B),
              ),
              child: Text(
                'Logout',
                style: GoogleFonts.lexend(fontWeight: FontWeight.w600),
              ),
            ),
          ],
        );
      },
    );
  }
}
