import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/modules/appointment_details_module/model/accept_reschedule_response_module.dart';
import 'package:medi_track/modules/appointment_details_module/model/reject_reschedule_response_model.dart';
import 'package:medi_track/modules/appointment_details_module/services/appointment_details_services.dart';

part 'reschedule_task_event.dart';
part 'reschedule_task_state.dart';
part 'reschedule_task_bloc.freezed.dart';

class RescheduleTaskBloc
    extends Bloc<RescheduleTaskEvent, RescheduleTaskState> {
  RescheduleTaskBloc() : super(const RescheduleTaskInitial()) {
    on<_AcceptingReschedule>(_onAcceptingReschedule);
    on<_RejectingReschedule>(_onRejectingReschedule);
  }

  Future<void> _onAcceptingReschedule(
    _AcceptingReschedule event,
    Emitter<RescheduleTaskState> emit,
  ) async {
    emit(const RescheduleTaskLoading(true));
    try {
      final String userId = await AuthStorageFunctions.getUserId();
      final response = await AppointmentDetailsServices.acceptReschedule(
        appointmentId: event.appointmentId,
        userId: userId,
      );
      emit(RescheduleTaskAcceptRescheduleSuccess(response: response));
    } catch (e) {
      emit(RescheduleTaskError(message: e.toString()));
    }
  }

  Future<void> _onRejectingReschedule(
    _RejectingReschedule event,
    Emitter<RescheduleTaskState> emit,
  ) async {
    emit(const RescheduleTaskLoading(false));
    try {
      final String userId = await AuthStorageFunctions.getUserId();
      final response = await AppointmentDetailsServices.rejectReschedule(
        appointmentId: event.appointmentId,
        userId: userId,
      );
      emit(RescheduleTaskRejectRescheduleSuccess(response: response));
    } catch (e) {
      emit(RescheduleTaskError(message: e.toString()));
    }
  }
}
