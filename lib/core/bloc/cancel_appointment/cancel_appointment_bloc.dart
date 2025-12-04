import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/classes/cancel_data.dart';
import 'package:medi_track/core/models/appointment_cancel_response_model.dart';
import 'package:medi_track/core/services/app_services.dart';

part 'cancel_appointment_event.dart';
part 'cancel_appointment_state.dart';
part 'cancel_appointment_bloc.freezed.dart';

class CancelAppointmentBloc
    extends Bloc<CancelAppointmentEvent, CancelAppointmentState> {
  CancelAppointmentBloc() : super(const CancelAppointmentInitial()) {
    on<_CancellingAppointment>(_onCancellingAppointment);
  }

  Future<void> _onCancellingAppointment(
    _CancellingAppointment event,
    Emitter<CancelAppointmentState> emit,
  ) async {
    emit(const CancelAppointmentLoading());
    try {
      final response = await AppServices.cancelAppointment(
        cancelData: event.cancelData,
      );
      emit(CancelAppointmentSuccess(response));
    } catch (e) {
      emit(CancelAppointmentError(e.toString()));
    }
  }
}
