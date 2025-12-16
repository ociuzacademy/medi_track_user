import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class DonorDashboardHelper {
  final BuildContext context;
  const DonorDashboardHelper({required this.context});

  void bloodDonationHistoryInitial() {
    final DonorHistoryCubit donorHistoryCubit = context
        .read<DonorHistoryCubit>();
    donorHistoryCubit.getDonorHistory();
  }

  void allBloodRequestsInitial() {
    final AllBloodRequestsCubit allBloodRequestsCubit = context
        .read<AllBloodRequestsCubit>();
    allBloodRequestsCubit.getAllBloodRequests();
  }

  void userBloodRequestsInitial() {
    final UserBloodRequestsCubit userBloodRequestsCubit = context
        .read<UserBloodRequestsCubit>();
    userBloodRequestsCubit.getBloodRequests();
  }
}
