import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class BloodDonationBannerHelper {
  final BuildContext context;

  const BloodDonationBannerHelper(this.context);

  void isDonorInit() {
    final IsDonorCubit isDonorCubit = context.read<IsDonorCubit>();
    isDonorCubit.checkIsDonor();
  }

  double responsiveFontSize(double baseSize) {
    final screenSize = MediaQuery.of(context).size;
    final textScaler = MediaQuery.of(context).textScaler;
    final width = screenSize.width;

    double scaleFactor;
    if (width < 350) {
      scaleFactor = 0.9;
    } else if (width > 600) {
      scaleFactor = 1.1;
    } else {
      scaleFactor = 1.0;
    }

    return textScaler.scale(baseSize * scaleFactor);
  }
}
