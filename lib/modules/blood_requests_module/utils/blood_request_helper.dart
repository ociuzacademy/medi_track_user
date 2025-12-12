// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class BloodRequestHelper {
  final BuildContext context;
  const BloodRequestHelper({required this.context});

  void getAllBloodRequests() {
    final AllBloodRequestsCubit cubit = context.read<AllBloodRequestsCubit>();
    cubit.getAllBloodRequests();
  }
}
