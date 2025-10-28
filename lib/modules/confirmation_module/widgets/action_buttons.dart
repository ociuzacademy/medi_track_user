// action_buttons.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/appointments_module/view/appointments_page.dart';
import 'package:medi_track/modules/home_module/view/home_page.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        children: [
          // View My Tokens Button
          SizedBox(
            width: double.infinity,
            height: 54,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, AppointmentsPage.route());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2196F3),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: Text(
                'View My Tokens',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Back to Home Button
          SizedBox(
            width: double.infinity,
            height: 54,
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushAndRemoveUntil(HomePage.route(), (_) => false);
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF2196F3),
                side: const BorderSide(color: Color(0xFF2196F3), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Back to Home',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
