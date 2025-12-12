// utils/blood_request_notifications_helper.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class BloodRequestNotificationsHelper {
  final BuildContext context;

  const BloodRequestNotificationsHelper({required this.context});

  void userBloodRequestsInit() {
    final UserBloodRequestsCubit userBloodRequestsCubit = context
        .read<UserBloodRequestsCubit>();
    userBloodRequestsCubit.getBloodRequests();
  }

  void acceptBloodRequest({required int requestId}) {
    final AcceptBloodRequestBloc acceptBloodRequestCubit = context
        .read<AcceptBloodRequestBloc>();
    acceptBloodRequestCubit.add(
      AcceptBloodRequestEvent.acceptBloodRequest(requestId: requestId),
    );
  }
}
