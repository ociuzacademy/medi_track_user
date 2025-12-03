import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class LiveStatusCardHelper {
  final BuildContext context;
  final int doctorId;

  const LiveStatusCardHelper({required this.context, required this.doctorId});

  void getTokenStatus() {
    final TokenStatusCubit tokenStatusCubit = context.read<TokenStatusCubit>();
    tokenStatusCubit.getTokenStatus(doctorId: doctorId);
  }
}
