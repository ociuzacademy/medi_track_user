import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_donor_register_module/utils/blood_information_card_helper.dart';
import 'package:provider/provider.dart';

import 'package:medi_track/modules/blood_donor_register_module/providers/donor_form_provider.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class BloodInformationSection extends StatelessWidget {
  const BloodInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DonorFormProvider>(
      builder: (context, donorFormProvider, child) {
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
                  'Blood Information',
                  style: GoogleFonts.lexend(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.015,
                    color: isDark
                        ? AppColors.borderLight
                        : const Color(0xFF111418),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Blood Group Dropdown
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Blood Group',
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: DropdownButtonFormField<String>(
                      value: donorFormProvider.selectedBloodGroup,
                      onChanged: donorFormProvider.setSelectedBloodGroup,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        color: isDark
                            ? AppColors.borderLight
                            : const Color(0xFF111418),
                      ),
                      dropdownColor: isDark
                          ? const Color(0xFF182431)
                          : Colors.white,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: isDark
                            ? AppColors.textTertiaryDark
                            : const Color(0xFF617589),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: null,
                          child: Text('Select your blood group'),
                        ),
                        DropdownMenuItem(value: 'A+', child: Text('A+')),
                        DropdownMenuItem(value: 'A-', child: Text('A-')),
                        DropdownMenuItem(value: 'B+', child: Text('B+')),
                        DropdownMenuItem(value: 'B-', child: Text('B-')),
                        DropdownMenuItem(value: 'AB+', child: Text('AB+')),
                        DropdownMenuItem(value: 'AB-', child: Text('AB-')),
                        DropdownMenuItem(value: 'O+', child: Text('O+')),
                        DropdownMenuItem(value: 'O-', child: Text('O-')),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Last Donation Date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Donation Date',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isDark
                          ? AppColors.borderLight
                          : const Color(0xFF111418),
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      BloodInformationCardHelper.showLastDonationDatePicker(
                        context,
                      );
                    },
                    child: Container(
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
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Text(
                                donorFormProvider.lastDonationDate ??
                                    'Select a date',
                                style: GoogleFonts.lexend(
                                  fontSize: 16,
                                  color:
                                      donorFormProvider.lastDonationDate == null
                                      ? (isDark
                                            ? AppColors.textTertiaryDark
                                            : const Color(0xFF617589))
                                      : (isDark
                                            ? AppColors.borderLight
                                            : const Color(0xFF111418)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 56,
                            height: 56,
                            decoration: BoxDecoration(
                              color: isDark
                                  ? const Color(0xFF182431)
                                  : Colors.white,
                              border: Border(
                                left: BorderSide(
                                  color: isDark
                                      ? AppColors.borderDark
                                      : const Color(0xFFdbe0e6),
                                ),
                              ),
                            ),
                            child: Icon(
                              Icons.calendar_today,
                              color: isDark
                                  ? AppColors.textTertiaryDark
                                  : const Color(0xFF617589),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
