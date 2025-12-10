// [file name]: non_donor_dashboard.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/benefit_card.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/widgets/stat_item.dart';
import 'package:medi_track/modules/blood_donor_register_module/view/blood_donor_register_page.dart';
import 'package:medi_track/core/constants/app_colors.dart';

class NonDonorDashboard extends StatelessWidget {
  const NonDonorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Card
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF1E293B) : Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF137fec).withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person_add_alt_1,
                      color: Color(0xFF137fec),
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Welcome to MediTrack Blood Donation',
                    style: GoogleFonts.lexend(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : const Color(0xFF111418),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'You are not registered as a blood donor yet. Join our community of lifesavers by registering as a donor.',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      color: isDark
                          ? AppColors.textTertiaryDark
                          : AppColors.textTertiaryLight,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, BloodDonorRegisterPage.route());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF137fec),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Register as Donor',
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Benefits Section
            Text(
              'Why Become a Donor?',
              style: GoogleFonts.lexend(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isDark ? Colors.white : const Color(0xFF111418),
              ),
            ),
            const SizedBox(height: 16),

            BenefitCard(
              icon: Icons.favorite,
              title: 'Save Lives',
              description: 'Your blood donation can save up to 3 lives.',
              isDark: isDark,
            ),
            const SizedBox(height: 12),
            BenefitCard(
              icon: Icons.health_and_safety,
              title: 'Health Benefits',
              description: 'Regular donation reduces risk of heart disease.',
              isDark: isDark,
            ),
            const SizedBox(height: 12),
            BenefitCard(
              icon: Icons.people,
              title: 'Join Community',
              description: 'Be part of a network of life-savers.',
              isDark: isDark,
            ),

            const SizedBox(height: 32),

            // Quick Stats
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF1E293B) : Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Every Donation Counts',
                    style: GoogleFonts.lexend(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : const Color(0xFF111418),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatItem(
                        value: '1,234+',
                        label: 'Lives Saved',
                        isDark: isDark,
                      ),
                      StatItem(
                        value: '456+',
                        label: 'Active Donors',
                        isDark: isDark,
                      ),
                      StatItem(
                        value: '789+',
                        label: 'Requests Met',
                        isDark: isDark,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // Call to Action
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFF137fec).withValues(alpha: 0.1),
                    const Color(0xFF10B981).withValues(alpha: 0.1),
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFF137fec).withValues(alpha: 0.3),
                ),
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.flag, color: Color(0xFF137fec), size: 48),
                  const SizedBox(height: 16),
                  Text(
                    'Ready to Make a Difference?',
                    style: GoogleFonts.lexend(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : const Color(0xFF111418),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Register now and become someone\'s hero today.',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      color: isDark
                          ? AppColors.textTertiaryDark
                          : AppColors.textTertiaryLight,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(context, BloodDonorRegisterPage.route());
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF137fec),
                      side: const BorderSide(color: Color(0xFF137fec)),
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Start Donor Registration',
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
