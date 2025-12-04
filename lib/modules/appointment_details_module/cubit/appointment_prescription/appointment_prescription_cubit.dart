import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_details_module/model/appointment_prescription_model.dart';
import 'package:medi_track/modules/appointment_details_module/services/appointment_details_services.dart';

part 'appointment_prescription_state.dart';
part 'appointment_prescription_cubit.freezed.dart';

class AppointmentPrescriptionCubit extends Cubit<AppointmentPrescriptionState> {
  AppointmentPrescriptionCubit()
    : super(const AppointmentPrescriptionState.initial());

  Future<void> fetchAppointmentPrescription(int appointmentId) async {
    emit(const AppointmentPrescriptionState.loading());
    try {
      final result =
          await AppointmentDetailsServices.getAppointmentPrescription(
            appointmentId: appointmentId,
          );
      emit(AppointmentPrescriptionState.success(result));
    } catch (e) {
      emit(AppointmentPrescriptionState.error(e.toString()));
    }
  }
}
