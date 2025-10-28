import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Create Your Account', style: theme.textTheme.displayLarge),
          const SizedBox(height: 8),
          Text(
            'Join MediTrack to manage your health.',
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
