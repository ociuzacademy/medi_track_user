import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_booking_module/models/available_doctors_model.dart';
import 'package:medi_track/modules/appointment_booking_module/services/appointment_booking_services.dart';

part 'available_doctors_state.dart';
part 'available_doctors_cubit.freezed.dart';

class AvailableDoctorsCubit extends Cubit<AvailableDoctorsState> {
  AvailableDoctorsCubit() : super(const AvailableDoctorsState.initial());

  void reset() {
    emit(const AvailableDoctorsState.initial());
  }

  Future<void> getAvailableDoctors({
    required int departmentId,
    required DateTime date,
  }) async {
    emit(const AvailableDoctorsState.loading());
    try {
      final AvailableDoctorsModel availableDoctors =
          await AppointmentBookingServices.getAvailableDoctors(
            departmentId: departmentId,
            date: date,
          );
      emit(AvailableDoctorsState.success(availableDoctors: availableDoctors));
    } catch (e) {
      emit(AvailableDoctorsState.error(errorMessage: e.toString()));
    }
  }
}
