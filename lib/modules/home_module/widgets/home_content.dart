// [file name]: home_content.dart
// [file content begin]
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/core/constants/app_colors.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/modules/home_module/utils/home_content_helper.dart';
import 'package:medi_track/modules/home_module/widgets/blood_donation_banner.dart';
import 'package:medi_track/modules/home_module/widgets/healthy_tip_carousel.dart';
import 'package:medi_track/modules/home_module/widgets/quick_actions_grid.dart';
import 'package:medi_track/modules/home_module/widgets/upcoming_appointments_empty_widget.dart';
import 'package:medi_track/modules/home_module/widgets/upcoming_appointments_error_widget.dart';
import 'package:medi_track/modules/home_module/widgets/upcoming_appointments_list_widget.dart';
import 'package:medi_track/modules/home_module/widgets/upcoming_appointments_loading_widget.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  late final HomeContentHelper _helper;
  @override
  void initState() {
    super.initState();
    _helper = HomeContentHelper(context: context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _helper.upcomingAppointmentsInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      padding: EdgeInsets.all(screenSize.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Upcoming Appointment Section Header
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Appointments',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary(context),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.refresh,
                    color: AppColors.textTertiary(context),
                  ),
                  onPressed: () {
                    _helper.upcomingAppointmentsInit();
                  },
                ),
              ],
            ),
          ),

          // Upcoming Appointment Content
          BlocBuilder<UpcomingAppointmentsCubit, UpcomingAppointmentsState>(
            builder: (context, state) {
              return switch (state) {
                UpcomingAppointmentsLoading() =>
                  const UpcomingAppointmentsLoadingWidget(),
                UpcomingAppointmentsError(:final message) =>
                  UpcomingAppointmentsErrorWidget(message: message),
                UpcomingAppointmentsSuccess(:final data) =>
                  UpcomingAppointmentsListWidget(data: data),

                UpcomingAppointmentsInitial() =>
                  const UpcomingAppointmentsLoadingWidget(),
                UpcomingAppointmentsEmpty() =>
                  const UpcomingAppointmentsEmptyWidget(),
              };
            },
          ),

          SizedBox(height: screenSize.height * 0.03),
          // Quick Actions
          const QuickActionsGrid(),

          SizedBox(height: screenSize.height * 0.03),

          // Health Tips
          const HealthTipsCarousel(),

          SizedBox(height: screenSize.height * 0.03),

          // Blood Donation Banner
          const BloodDonationBanner(),

          SizedBox(height: screenSize.height * 0.02),
        ],
      ),
    );
  }
}
