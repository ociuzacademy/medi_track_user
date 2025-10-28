import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';

class ConfirmationCheckbox extends StatelessWidget {
  const ConfirmationCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Selector<DonorFormProvider, bool>(
      selector: (context, provider) => provider.confirmationChecked,
      builder: (context, confirmationChecked, child) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
              value: confirmationChecked,
              onChanged: (value) {
                Provider.of<DonorFormProvider>(
                  context,
                  listen: false,
                ).setConfirmationChecked(value ?? false);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: WidgetStateProperty.resolveWith<Color?>((
                Set<WidgetState> states,
              ) {
                if (states.contains(WidgetState.selected)) {
                  return const Color(0xFF2A75C1);
                }
                return null;
              }),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'I confirm that I meet the basic eligibility criteria and the information provided is accurate.',
                  style: GoogleFonts.lexend(
                    fontSize: 14,
                    color: isDark
                        ? const Color(0xFF9CA3AF)
                        : const Color(0xFF617589),
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
