import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/export/storage_export.dart';
import 'package:medi_track/modules/user_appointments_module/models/appointments_model.dart';
import 'package:medi_track/modules/user_appointments_module/services/user_appointment_services.dart';

part 'appointment_list_state.dart';
part 'appointment_list_cubit.freezed.dart';

class AppointmentListCubit extends Cubit<AppointmentListState> {
  AppointmentListCubit() : super(const AppointmentListState.initial());

  Future<void> getUserAppointments() async {
    emit(const AppointmentListState.loading());
    try {
      final userId = await AuthStorageFunctions.getUserId();
      final appointments = await UserAppointmentServices.getUserAppointments(
        userId: userId,
      );
      emit(AppointmentListState.success(appointments: appointments));
    } catch (e) {
      emit(AppointmentListState.error(message: e.toString()));
    }
  }
}
