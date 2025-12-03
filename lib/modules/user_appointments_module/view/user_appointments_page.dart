// appointments_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/modules/user_appointments_module/cubit/appointment_list_cubit.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/utils/user_appointments_helper.dart';

import 'package:medi_track/modules/user_appointments_module/widgets/appointments_tab_bar.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/cancelled_tab.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/completed_tab.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/search_appointment_field.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/upcoming_tab.dart';
import 'package:medi_track/modules/user_appointments_module/widgets/rescheduled_tab.dart';

class UserAppointmentsPage extends StatefulWidget {
  const UserAppointmentsPage({super.key});

  @override
  State<UserAppointmentsPage> createState() => _UserAppointmentsPageState();

  static Route route() =>
      MaterialPageRoute(builder: (_) => const UserAppointmentsPage());
}

class _UserAppointmentsPageState extends State<UserAppointmentsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late UserAppointmentsHelper _userAppointmentsHelper;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _userAppointmentsHelper = UserAppointmentsHelper(context: context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _userAppointmentsHelper.appointmentListInit();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'My Appointments',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.015,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
        bottom: AppointmentsTabBar(tabController: _tabController),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF101a22)
          : const Color(0xFFf5f7f8),
      body: BlocBuilder<AppointmentListCubit, AppointmentListState>(
        builder: (context, state) {
          switch (state) {
            case AppointmentListInitial _:
              return const Center(child: CircularProgressIndicator());
            case AppointmentListLoading _:
              return const Center(child: CircularProgressIndicator());
            case AppointmentListError(message: final message):
              return Center(
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            case AppointmentListSuccess(
              appointments: final AppointmentsModel appointments,
            ):
              final List<Appointment> upcomingAppointmentsList = appointments
                  .appointments
                  .where(
                    (appointment) =>
                        appointment.status == AppointmentStatus.upcoming,
                  )
                  .toList();
              final List<Appointment> completedAppointmentsList = appointments
                  .appointments
                  .where(
                    (appointment) =>
                        appointment.status == AppointmentStatus.completed,
                  )
                  .toList();
              final List<Appointment> cancelledAppointmentsList = appointments
                  .appointments
                  .where(
                    (appointment) =>
                        appointment.status == AppointmentStatus.cancelled,
                  )
                  .toList();
              final List<Appointment> rescheduledAppointmentsList = appointments
                  .appointments
                  .where(
                    (appointment) =>
                        appointment.status == AppointmentStatus.rescheduled,
                  )
                  .toList();
              return Column(
                children: [
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: SearchAppointmentField(
                      controller: _searchController,
                      onChanged: (value) {
                        // Handle search functionality
                      },
                    ),
                  ),

                  // Tab Content
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        UpcomingTab(appointments: upcomingAppointmentsList),
                        CompletedTab(appointments: completedAppointmentsList),
                        CancelledTab(appointments: cancelledAppointmentsList),
                        RescheduledTab(
                          appointments: rescheduledAppointmentsList,
                        ),
                      ],
                    ),
                  ),
                ],
              );
          }
        },
      ),
    );
  }
}
