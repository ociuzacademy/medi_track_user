// [file name]: upcoming_appointments_loading_widget.dart
// [file content begin]

import 'package:flutter/material.dart';

import 'package:medi_track/core/constants/app_colors.dart';

class UpcomingAppointmentsLoadingWidget extends StatelessWidget {
  const UpcomingAppointmentsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.card(context),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryAlt),
            ),
            const SizedBox(height: 12),
            Text(
              'Loading appointments...',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textTertiary(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
