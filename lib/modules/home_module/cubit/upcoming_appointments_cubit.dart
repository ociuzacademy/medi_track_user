import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/modules/home_module/models/upcoming_appointments_model.dart';
import 'package:medi_track/modules/home_module/services/home_module_services.dart';

part 'upcoming_appointments_state.dart';
part 'upcoming_appointments_cubit.freezed.dart';

class UpcomingAppointmentsCubit extends Cubit<UpcomingAppointmentsState> {
  UpcomingAppointmentsCubit()
    : super(const UpcomingAppointmentsState.initial());

  Future<void> getUpcomingAppointments() async {
    emit(const UpcomingAppointmentsState.loading());
    try {
      final String userId = await AuthStorageFunctions.getUserId();
      final response = await HomeModuleServices.getUpcomingAppointments(
        userId: userId,
      );
      if (response.appointments.isEmpty) {
        emit(const UpcomingAppointmentsState.empty());
      } else {
        emit(UpcomingAppointmentsState.success(data: response));
      }
    } catch (e) {
      emit(UpcomingAppointmentsState.error(message: e.toString()));
    }
  }
}
