import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/login_module/view/login_page.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32),
      child: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacement(context, LoginPage.route());
          },
          child: Text(
            'Login',
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
