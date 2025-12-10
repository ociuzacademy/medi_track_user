import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/view/blood_donor_dashboard_page.dart';
import 'package:medi_track/modules/blood_donor_register_module/view/blood_donor_register_page.dart';
import 'package:medi_track/modules/home_module/utils/blood_donation_banner_helper.dart';

class BloodDonationBanner extends StatefulWidget {
  const BloodDonationBanner({super.key});

  @override
  State<BloodDonationBanner> createState() => _BloodDonationBannerState();
}

class _BloodDonationBannerState extends State<BloodDonationBanner> {
  late final BloodDonationBannerHelper _bloodDonationBannerHelper;
  @override
  void initState() {
    super.initState();
    _bloodDonationBannerHelper = BloodDonationBannerHelper(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloodDonationBannerHelper.isDonorInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(screenSize.width * 0.04),
      decoration: BoxDecoration(
        color: colorScheme.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(screenSize.width * 0.03),
      ),
      child: Row(
        children: [
          // Image
          Container(
            width: screenSize.width * 0.2,
            height: screenSize.width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenSize.width * 0.02),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuC_4mHEMCZsYb71_ay1DVKao-08qBRc_GoeP9D1ljWELGp2jIOQ2wwSA5YLph09rEJJwAtRWG0-Cp9X5pfvKTAyVcrkK_ts8b6WA2WY81HgTX4Y1VVNeVIOv5k80G-I8pebaFCIJ8S8qT3JlIpd3KtG-OkKi131UY9f7Q_nngX7mvXQILX2MhiAPjjoJdVxnrDYNlpG4a2ecBtpcgGRxR4X7vHtKkvlMXgrdDfqGDZeIaWIeHQwqAmZNmzM8LSTX0LQBTBlOERBG4gm',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: screenSize.width * 0.04),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Be a Hero, Donate Blood',
                  style: GoogleFonts.inter(
                    fontSize: _bloodDonationBannerHelper.responsiveFontSize(16),
                    fontWeight: FontWeight.w700,
                    color: colorScheme.onSurface,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.005),
                Text(
                  'Your donation can save up to three lives.',
                  style: GoogleFonts.inter(
                    fontSize: _bloodDonationBannerHelper.responsiveFontSize(14),
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.01),
                BlocBuilder<IsDonorCubit, IsDonorState>(
                  builder: (context, state) {
                    switch (state) {
                      case IsDonorLoading _:
                        return const Center(child: CircularProgressIndicator());
                      case IsDonorError(:final message):
                        return Center(child: Text(message));
                      case IsDonorSuccess(:final isDonor):
                        return GestureDetector(
                          onTap: () {
                            if (isDonor) {
                              Navigator.push(
                                context,
                                BloodDonorDashboardPage.route(),
                              );
                            } else {
                              Navigator.push(
                                context,
                                BloodDonorRegisterPage.route(),
                              );
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width * 0.04,
                              vertical: screenSize.height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.primary,
                              borderRadius: BorderRadius.circular(
                                screenSize.width * 0.05,
                              ),
                            ),
                            child: Text(
                              isDonor ? 'Go to Dashboard' : 'Register Now',
                              style: GoogleFonts.inter(
                                fontSize: _bloodDonationBannerHelper
                                    .responsiveFontSize(14),
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      default:
                        return const SizedBox.shrink();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
