import 'package:flutter/material.dart';
import 'package:medi_track/modules/blood_donor_register_module/widgets/illness_details_section.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class HealthEligibilitySection extends StatelessWidget {
  const HealthEligibilitySection({super.key});

  @override
  Widget build(BuildContext context) {
    final donorFormProvider = Provider.of<DonorFormProvider>(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 8),
            child: Text(
              'Health & Eligibility',
              style: GoogleFonts.lexend(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.015,
                color: isDark ? AppColors.borderLight : const Color(0xFF111418),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Weight Input
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Weight (kg)',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: isDark
                      ? AppColors.borderLight
                      : const Color(0xFF111418),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 56,
                decoration: BoxDecoration(
                  color: isDark ? const Color(0xFF101922) : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDark
                        ? AppColors.borderDark
                        : const Color(0xFFdbe0e6),
                  ),
                ),
                child: TextFormField(
                  controller: donorFormProvider.weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter your weight',
                    hintStyle: GoogleFonts.lexend(
                      fontSize: 16,
                      color: isDark
                          ? AppColors.textTertiaryDark
                          : const Color(0xFF617589),
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    color: isDark
                        ? AppColors.borderLight
                        : const Color(0xFF111418),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your weight';
                    }
                    final weight = double.tryParse(value);
                    if (weight == null || weight < 40) {
                      return 'Weight must be at least 40kg';
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Under Medication
          Selector<DonorFormProvider, bool>(
            selector: (context, provider) => provider.underMedication,
            builder: (context, underMedication, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Currently under any medication?',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isDark
                          ? AppColors.borderLight
                          : const Color(0xFF111418),
                    ),
                  ),
                  Switch(
                    value: underMedication,
                    onChanged: (value) {
                      Provider.of<DonorFormProvider>(
                        context,
                        listen: false,
                      ).setUnderMedication(value);
                    },
                    activeColor: const Color(0xFF2A75C1),
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 16),

          // Recent Illness
          Selector<DonorFormProvider, bool>(
            selector: (context, provider) => provider.recentIllness,
            builder: (context, recentIllness, child) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Any recent illnesses?',
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: isDark
                              ? AppColors.borderLight
                              : const Color(0xFF111418),
                        ),
                      ),
                      Switch(
                        value: recentIllness,
                        onChanged: (value) {
                          Provider.of<DonorFormProvider>(
                            context,
                            listen: false,
                          ).setRecentIllness(value);
                        },
                        activeColor: const Color(0xFF2A75C1),
                      ),
                    ],
                  ),

                  // Illness Details (only show when recentIllness is true)
                  if (recentIllness) ...[
                    const SizedBox(height: 16),
                    const IllnessDetailsSection(),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
