import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class DonorProfileCardHelper {
  final BuildContext context;

  const DonorProfileCardHelper({required this.context});

  void donorProfileInit() {
    final NextDonationDateCubit nextDonationDateCubit = context
        .read<NextDonationDateCubit>();
    nextDonationDateCubit.getNextDonationDate();
  }
}
