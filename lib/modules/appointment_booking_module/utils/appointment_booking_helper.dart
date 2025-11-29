import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/modules/appointment_booking_module/cubit/departments/departments_cubit.dart';

class AppointmentBookingHelper {
  final BuildContext context;

  const AppointmentBookingHelper({required this.context});

  void showDepartments() {
    final DepartmentsCubit departmentsCubit = context.read<DepartmentsCubit>();
    departmentsCubit.fetchDepartments();
  }
}
