import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/modules/appointment_booking_module/classes/appointment_data.dart';
import 'package:medi_track/modules/appointment_booking_module/models/appointment_booking_response_model.dart';
import 'package:medi_track/modules/appointment_booking_module/services/appointment_booking_services.dart';

part 'appointment_booking_event.dart';
part 'appointment_booking_state.dart';
part 'appointment_booking_bloc.freezed.dart';

class AppointmentBookingBloc
    extends Bloc<AppointmentBookingEvent, AppointmentBookingState> {
  AppointmentBookingBloc() : super(const AppointmentBookingInitial()) {
    on<_BookingAppointment>(_onBookingAppointment);
  }

  Future<void> _onBookingAppointment(
    _BookingAppointment event,
    Emitter<AppointmentBookingState> emit,
  ) async {
    emit(const AppointmentBookingLoading());
    try {
      final String userId = await AuthStorageFunctions.getUserId();

      final response = await AppointmentBookingServices.bookAppointment(
        appointmentData: event.appointmentData,
        userId: userId,
      );
      emit(AppointmentBookingSuccess(response: response));
    } catch (e) {
      emit(AppointmentBookingError(message: e.toString()));
    }
  }
}
