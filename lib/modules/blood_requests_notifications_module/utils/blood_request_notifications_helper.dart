// utils/blood_request_notifications_helper.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/modules/blood_requests_notifications_module/cubit/user_blood_requests_cubit.dart';

class BloodRequestNotificationsHelper {
  final BuildContext context;

  const BloodRequestNotificationsHelper({required this.context});

  void userBloodRequestsInit() {
    final UserBloodRequestsCubit userBloodRequestsCubit = context
        .read<UserBloodRequestsCubit>();
    userBloodRequestsCubit.getBloodRequests();
  }
}
