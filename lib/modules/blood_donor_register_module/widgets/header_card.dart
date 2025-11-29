import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF182431) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(24),
      child: isTablet
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIcon(),
                const SizedBox(width: 16),
                Expanded(child: _buildContent(isDark)),
              ],
            )
          : Column(
              children: [
                _buildIcon(),
                const SizedBox(height: 16),
                _buildContent(isDark),
              ],
            ),
    );
  }

  Widget _buildIcon() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFFD9534F).withValues(alpha: 0.1),
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.bloodtype, color: Color(0xFFD9534F), size: 32),
    );
  }

  Widget _buildContent(bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your donation can save lives.',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
            color: isDark ? const Color(0xFFE5E7EB) : const Color(0xFF111418),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Thank you for considering becoming a donor. Please provide the following details.',
          style: GoogleFonts.lexend(
            fontSize: 16,
            color: isDark ? const Color(0xFF9CA3AF) : const Color(0xFF617589),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
