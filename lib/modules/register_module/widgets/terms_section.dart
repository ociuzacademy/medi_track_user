import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/register_module/typedefs/checkbox_click.dart';

class TermsSection extends StatelessWidget {
  final ThemeData theme;
  final bool? agreeToTerms;
  final CheckboxClick onClickingCheckbox;
  const TermsSection({
    super.key,
    required this.theme,
    this.onClickingCheckbox,
    this.agreeToTerms,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Checkbox(
            value: agreeToTerms,
            onChanged: onClickingCheckbox,
            checkColor: Colors.white,
            fillColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.selected)) {
                return theme.colorScheme.primary;
              }
              return Colors.transparent;
            }),
            side: BorderSide(color: theme.colorScheme.primary, width: 2),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: theme.textTheme.bodyMedium?.color,
                ),
                children: [
                  const TextSpan(text: 'I agree to the '),
                  TextSpan(
                    text: 'Terms of Service',
                    style: GoogleFonts.inter(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(text: ' & '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: GoogleFonts.inter(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(text: '.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
