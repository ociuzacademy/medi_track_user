import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/models/appointment_details_model.dart';
import 'package:medi_track/core/services/app_services.dart';

part 'appointment_details_state.dart';
part 'appointment_details_cubit.freezed.dart';

class AppointmentDetailsCubit extends Cubit<AppointmentDetailsState> {
  AppointmentDetailsCubit() : super(const AppointmentDetailsState.initial());

  Future<void> getAppointmentDetails(int appointmentId) async {
    emit(const AppointmentDetailsState.loading());
    try {
      final appointmentDetails = await AppServices.getAppointmentDetails(
        appointmentId: appointmentId,
      );
      emit(AppointmentDetailsState.success(appointmentDetails));
    } catch (e) {
      emit(AppointmentDetailsState.error(e.toString()));
    }
  }
}
