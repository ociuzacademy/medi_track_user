// pages/rescheduled_appointments_page.dart
import 'package:flutter/material.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/data/rescheduled_appointment_data.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/models/rescheduled_appointment.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/utils/rescheduled_appointments_helper.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/appointment_card.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/empty_state.dart';

class RescheduledAppointmentsPage extends StatefulWidget {
  const RescheduledAppointmentsPage({super.key});

  @override
  State<RescheduledAppointmentsPage> createState() =>
      _RescheduledAppointmentsPageState();

  static route() =>
      MaterialPageRoute(builder: (_) => const RescheduledAppointmentsPage());
}

class _RescheduledAppointmentsPageState
    extends State<RescheduledAppointmentsPage> {
  late final RescheduledAppointmentsHelper _rescheduledAppointmentsHelper;

  final ValueNotifier<List<RescheduledAppointment>> _appointments =
      ValueNotifier<List<RescheduledAppointment>>(
        RescheduledAppointmentData.rescheduledAppointments,
      );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _appointments.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Rescheduled Appointments',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: isDark
            ? const Color(0xFF101922)
            : const Color(0xFFF6F7F8),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: _rescheduledAppointmentsHelper.markAllAsRead,
            child: const Text(
              'Mark all as read',
              style: TextStyle(
                color: Color(0xFF137FEC),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: isDark
          ? const Color(0xFF101922)
          : const Color(0xFFF6F7F8),
      body: ValueListenableBuilder<List<RescheduledAppointment>>(
        valueListenable: _appointments,
        builder: (context, appointments, _) {
          if (appointments.isEmpty) {
            return EmptyState(
              onRefresh: _rescheduledAppointmentsHelper.refreshData,
            );
          }
          return ListView(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQuery.size.width * 0.04,
              vertical: 16,
            ),
            children: appointments.map((appointment) {
              return AppointmentCard(
                appointment: appointment,
                isRead: appointment.status == AppointmentStatus.accepted,
                onAccept: appointment.status == AppointmentStatus.pending
                    ? () => _rescheduledAppointmentsHelper.acceptAppointment(
                        appointment.id,
                      )
                    : null,
                onReject: appointment.status == AppointmentStatus.pending
                    ? () => _rescheduledAppointmentsHelper.rejectAppointment(
                        appointment.id,
                      )
                    : null,
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
