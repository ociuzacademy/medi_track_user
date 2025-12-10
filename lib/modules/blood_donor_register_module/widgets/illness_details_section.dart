import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';
import 'package:provider/provider.dart';

class IllnessDetailsSection extends StatelessWidget {
  const IllnessDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final donorFormProvider = Provider.of<DonorFormProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details (if yes)',
          style: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isDark ? AppColors.borderLight : const Color(0xFF111418),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: isDark ? const Color(0xFF101922) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isDark ? AppColors.borderDark : const Color(0xFFdbe0e6),
            ),
          ),
          child: TextFormField(
            controller: donorFormProvider.illnessDetailsController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Please provide details about your recent illness(es)',
              hintStyle: GoogleFonts.lexend(
                fontSize: 16,
                color: isDark
                    ? AppColors.textTertiaryDark
                    : const Color(0xFF617589),
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(16),
            ),
            style: GoogleFonts.lexend(
              fontSize: 16,
              color: isDark ? AppColors.borderLight : const Color(0xFF111418),
            ),
            validator: (value) {
              if (donorFormProvider.recentIllness &&
                  (value == null || value.isEmpty)) {
                return 'Please provide details about recent illness';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }
}
