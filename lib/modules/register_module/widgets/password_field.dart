import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.context,
    required this.label,
    required this.controller,
    required this.obscureText,
    required this.onToggleVisibility,
    required this.validator,
  });

  final BuildContext context;
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback onToggleVisibility;
  final String? Function(String? p1)? validator;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? Colors.white : const Color(0xFF333333),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller,
                  obscureText: obscureText,
                  validator: validator,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: isDark ? Colors.white : const Color(0xFF333333),
                  ),
                  decoration: InputDecoration(
                    hintText: label,
                    hintStyle: GoogleFonts.inter(
                      color: const Color(0xFF6B7280),
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility_off : Icons.visibility,
                    color: theme.colorScheme.primary,
                  ),
                  onPressed: onToggleVisibility,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
