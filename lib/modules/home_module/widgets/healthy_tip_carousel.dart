import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/modules/home_module/helper/health_tip_carousel_data.dart';
import 'package:medi_track/modules/home_module/utils/health_tip_carousel_helper.dart';
import 'package:medi_track/modules/home_module/widgets/health_tip_card.dart';

class HealthTipsCarousel extends StatelessWidget {
  const HealthTipsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Text(
          'Health Tips',
          style: GoogleFonts.inter(
            fontSize: HealthTipCarouselHelper.responsiveFontSize(context, 18),
            fontWeight: FontWeight.w700,
            color: AppColors.textPrimary(context),
          ),
        ),
        SizedBox(height: screenSize.height * 0.015),

        // Carousel
        SizedBox(
          height: screenSize.height * 0.25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: HealthTipCarouselData.healthTips.length,
            itemBuilder: (context, index) {
              final tip = HealthTipCarouselData.healthTips[index];
              return HealthTipCard(
                imageUrl: tip.imageUrl,
                title: tip.title,
                colorScheme: colorScheme,
              );
            },
          ),
        ),
      ],
    );
  }
}
