// appointments_page.dart
import 'package:flutter/material.dart';

import 'package:medi_track/modules/appointments_module/widgets/appointments_tab_bar.dart';
import 'package:medi_track/modules/appointments_module/widgets/cancelled_tab.dart';
import 'package:medi_track/modules/appointments_module/widgets/completed_tab.dart';
import 'package:medi_track/modules/appointments_module/widgets/search_appointment_field.dart';
import 'package:medi_track/modules/appointments_module/widgets/upcoming_tab.dart';
import 'package:medi_track/modules/appointments_module/widgets/rescheduled_tab.dart';

class AppointmentsPage extends StatefulWidget {
  const AppointmentsPage({super.key});

  @override
  State<AppointmentsPage> createState() => _AppointmentsPageState();

  static Route route() =>
      MaterialPageRoute(builder: (_) => const AppointmentsPage());
}

class _AppointmentsPageState extends State<AppointmentsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
      body: Column(
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
              children: const [
                UpcomingTab(),
                CompletedTab(),
                CancelledTab(),
                RescheduledTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
