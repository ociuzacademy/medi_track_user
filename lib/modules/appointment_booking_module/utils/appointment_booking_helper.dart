import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class AppointmentBookingHelper {
  final BuildContext context;

  const AppointmentBookingHelper({required this.context});

  void showUserProfile() {
    final UserProfileCubit userProfileCubit = context.read<UserProfileCubit>();
    userProfileCubit.getUserProfile();
  }

  void showDepartments() {
    final DepartmentsCubit departmentsCubit = context.read<DepartmentsCubit>();
    departmentsCubit.fetchDepartments();
  }
}
