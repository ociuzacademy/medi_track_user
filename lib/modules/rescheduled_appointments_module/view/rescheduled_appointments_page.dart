// pages/rescheduled_appointments_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/enums/appointment_status.dart';
import 'package:medi_track/core/export/bloc_export.dart';
import 'package:medi_track/core/widgets/custom_error_widget.dart';
import 'package:medi_track/core/widgets/loaders/overlay_loader.dart';
import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/home_module/view/home_page.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/utils/rescheduled_appointments_helper.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/appointment_card.dart';
import 'package:medi_track/modules/rescheduled_appointments_module/widgets/empty_state.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';

class RescheduledAppointmentsPage extends StatefulWidget {
  const RescheduledAppointmentsPage({super.key});

  @override
  State<RescheduledAppointmentsPage> createState() =>
      _RescheduledAppointmentsPageState();

  static MaterialPageRoute route() =>
      MaterialPageRoute(builder: (_) => const RescheduledAppointmentsPage());
}

class _RescheduledAppointmentsPageState
    extends State<RescheduledAppointmentsPage> {
  late final RescheduledAppointmentsHelper _rescheduledAppointmentsHelper;

  @override
  void initState() {
    super.initState();
    _rescheduledAppointmentsHelper = RescheduledAppointmentsHelper(
      context: context,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _rescheduledAppointmentsHelper.appointmentListInit();
    });
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
      ),
      backgroundColor: isDark
          ? const Color(0xFF101922)
          : const Color(0xFFF6F7F8),
      body: BlocListener<RescheduleTaskBloc, RescheduleTaskState>(
        listener: (context, state) {
          switch (state) {
            case RescheduleTaskLoading(:final isAccepting):
              Navigator.pop(context);
              OverlayLoader.show(
                context,
                message: isAccepting
                    ? 'Accepting Reschedule...'
                    : 'Rejecting Reschedule...',
              );
              break;
            case RescheduleTaskError(:final message):
              OverlayLoader.hide();
              CustomSnackbar.showError(context, message: message);
              break;
            case RescheduleTaskAcceptRescheduleSuccess(:final response):
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(context, message: response.message);
              Navigator.pushAndRemoveUntil(
                context,
                HomePage.route(),
                (route) => false,
              );
              break;
            case RescheduleTaskRejectRescheduleSuccess(:final response):
              OverlayLoader.hide();
              CustomSnackbar.showSuccess(context, message: response.message);
              Navigator.pushAndRemoveUntil(
                context,
                HomePage.route(),
                (route) => false,
              );
              break;
            default:
              OverlayLoader.hide();
              break;
          }
        },
        child: BlocBuilder<AppointmentListCubit, AppointmentListState>(
          builder: (context, state) {
            return switch (state) {
              AppointmentListLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              AppointmentListSuccess(appointments: final appointmentList) =>
                Builder(
                  builder: (context) {
                    final List<Appointment> rescheduledAppointmentsList =
                        appointmentList.appointments
                            .where(
                              (appointment) =>
                                  appointment.status ==
                                  AppointmentStatus.rescheduled,
                            )
                            .toList();
                    if (rescheduledAppointmentsList.isEmpty) {
                      return EmptyState(
                        onRefresh:
                            _rescheduledAppointmentsHelper.appointmentListInit,
                      );
                    }
                    return ListView(
                      padding: EdgeInsets.symmetric(
                        horizontal: mediaQuery.size.width * 0.04,
                        vertical: 16,
                      ),
                      children: rescheduledAppointmentsList.map((appointment) {
                        return AppointmentCard(
                          appointment: appointment,
                          onAccept: () => _rescheduledAppointmentsHelper
                              .showAcceptRescheduleDialog(appointment.id),
                          onReject: () => _rescheduledAppointmentsHelper
                              .showRejectRescheduleDialog(appointment.id),
                        );
                      }).toList(),
                    );
                  },
                ),
              AppointmentListError(:final message) => CustomErrorWidget(
                errorMessage: message,
                isDark: isDark,
                onRetry: _rescheduledAppointmentsHelper.appointmentListInit,
              ),
              _ => const SizedBox.shrink(),
            };
          },
        ),
      ),
    );
  }
}
