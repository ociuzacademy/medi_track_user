// attach_file_button.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttachFileButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AttachFileButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xFF00796B),
        side: const BorderSide(
          color: Color(0xFF00796B),
          width: 2,
          style: BorderStyle.solid,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.attach_file, color: Color(0xFF00796B), size: 20),
          const SizedBox(width: 8),
          Text(
            'Attach File or Screenshot',
            style: GoogleFonts.lexend(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF00796B),
            ),
          ),
        ],
      ),
    );
  }
}
