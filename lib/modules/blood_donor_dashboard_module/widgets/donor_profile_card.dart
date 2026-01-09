import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/utils/donor_profile_card_helper.dart';

class DonorProfileCard extends StatefulWidget {
  const DonorProfileCard({super.key});

  @override
  State<DonorProfileCard> createState() => _DonorProfileCardState();
}

class _DonorProfileCardState extends State<DonorProfileCard> {
  late final DonorProfileCardHelper _donorProfileCardHelper;
  @override
  void initState() {
    super.initState();
    _donorProfileCardHelper = DonorProfileCardHelper(context: context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _donorProfileCardHelper.donorProfileInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final DateFormat dateFormat = DateFormat('dd MMM yyyy');

    return BlocBuilder<NextDonationDateCubit, NextDonationDateState>(
      builder: (context, state) {
        return switch (state) {
          NextDonationDateInitial() => const SizedBox.shrink(),
          NextDonationDateLoading() => const Center(
            child: CircularProgressIndicator(strokeWidth: 1),
          ),
          NextDonationDateError(:final message) => CustomErrorWidget(
            errorMessage: message,
            isDark: isDark,
            onRetry: _donorProfileCardHelper.donorProfileInit,
          ),
          NextDonationDateSuccess(:final nextDonationDate) => Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: isDark ? AppColors.cardDark : AppColors.cardLight,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
              border: isDark ? Border.all(color: AppColors.borderDark) : null,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Blood Group and Info
                  Row(
                    children: [
                      // Blood Group Circle
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: isDark
                              ? const Color(0xFF991B1B)
                              : const Color(0xFFFEE2E2),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            nextDonationDate.bloodGroup,
                            style: GoogleFonts.lexend(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: isDark
                                  ? const Color(0xFFF87171)
                                  : const Color(0xFFDC2626),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Blood Group',
                              style: GoogleFonts.lexend(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: isDark
                                    ? AppColors.textTertiaryDark
                                    : AppColors.textTertiaryLight,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              nextDonationDate.donor,
                              style: GoogleFonts.lexend(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.015,
                                color: isDark
                                    ? AppColors.textPrimaryDark
                                    : AppColors.textPrimaryLight,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${nextDonationDate.eligible ? 'Eligible' : 'Not Eligible'} to Donate',
                              style: GoogleFonts.lexend(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.success,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Stats Grid
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: isDark
                                ? AppColors.backgroundDark
                                : AppColors.surfaceLight,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Donated',
                                style: GoogleFonts.lexend(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: isDark
                                      ? AppColors.textTertiaryDark
                                      : AppColors.textTertiaryLight,
                                ),
                              ),
                              const SizedBox(height: 4),
                              if (nextDonationDate.lastDonationDate != null)
                                Text(
                                  dateFormat.format(
                                    nextDonationDate.lastDonationDate!,
                                  ),
                                  style: GoogleFonts.lexend(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: isDark
                                        ? AppColors.textPrimaryDark
                                        : AppColors.textPrimaryLight,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: isDark
                                ? AppColors.backgroundDark
                                : AppColors.surfaceLight,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Donations',
                                style: GoogleFonts.lexend(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: isDark
                                      ? AppColors.textTertiaryDark
                                      : AppColors.textTertiaryLight,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '${nextDonationDate.totalDonations} ${nextDonationDate.totalDonations == 1 ? 'Time' : 'Times'}',
                                style: GoogleFonts.lexend(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: isDark
                                      ? AppColors.textPrimaryDark
                                      : AppColors.textPrimaryLight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Progress Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Next Eligible In',
                            style: GoogleFonts.lexend(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: isDark
                                  ? AppColors.textTertiaryDark
                                  : AppColors.textPrimaryLight,
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final daysToNextDonation = nextDonationDate
                                  .nextDonationDate
                                  .difference(DateTime.now())
                                  .inDays;
                              return Text(
                                daysToNextDonation <= 0
                                    ? 'Eligible Now'
                                    : '$daysToNextDonation ${daysToNextDonation == 1 ? 'Day' : 'Days'}',
                                style: GoogleFonts.lexend(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryAlt,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Builder(
                        builder: (context) {
                          final totalDays =
                              nextDonationDate.lastDonationDate != null
                              ? nextDonationDate.nextDonationDate
                                    .difference(
                                      nextDonationDate.lastDonationDate!,
                                    )
                                    .inDays
                              : 0;
                          final daysCompleted =
                              nextDonationDate.lastDonationDate != null
                              ? DateTime.now()
                                    .difference(
                                      nextDonationDate.lastDonationDate!,
                                    )
                                    .inDays
                              : 0;

                          double progress = 0.0;
                          if (totalDays > 0) {
                            progress = (daysCompleted / totalDays).clamp(
                              0.0,
                              1.0,
                            );
                          }
                          return Container(
                            width: double.infinity,
                            height: 10,
                            decoration: BoxDecoration(
                              color: isDark
                                  ? AppColors.borderDark
                                  : AppColors.borderLight,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: FractionallySizedBox(
                              alignment: Alignment.centerLeft,
                              widthFactor: progress,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: AppColors.success,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        };
      },
    );
  }
}
