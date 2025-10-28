// payment_method_section.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isDark;

  const PaymentMethodButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF13c8ec) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: isSelected
                  ? Colors.white
                  : (isDark
                        ? const Color(0xFF9ca3af)
                        : const Color(0xFF618389)),
            ),
          ),
        ),
      ),
    );
  }
}
