import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/home_module/utils/health_tip_card_helper.dart';

class HealthTipCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final ColorScheme colorScheme;

  const HealthTipCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.7,
      margin: EdgeInsets.only(right: screenSize.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenSize.width * 0.03),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),

          // Title
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: HealthTipCardHelper.responsiveFontSize(context, 14),
              fontWeight: FontWeight.w500,
              color: colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
