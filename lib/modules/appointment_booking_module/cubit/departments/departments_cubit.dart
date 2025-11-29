import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_booking_module/models/departments_model.dart';
import 'package:medi_track/modules/appointment_booking_module/services/appointment_booking_services.dart';

part 'departments_state.dart';
part 'departments_cubit.freezed.dart';

class DepartmentsCubit extends Cubit<DepartmentsState> {
  DepartmentsCubit() : super(const DepartmentsState.initial());

  Future<void> fetchDepartments() async {
    emit(const DepartmentsState.loading());
    try {
      final departments = await AppointmentBookingServices.getDepartments();
      emit(DepartmentsState.success(departments));
    } catch (e) {
      emit(DepartmentsState.error(e.toString()));
    }
  }
}
