// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/cubit/user_profile/user_profile_cubit.dart';

import 'package:medi_track/core/widgets/snackbars/custom_snackbar.dart';
import 'package:medi_track/modules/submit_complaint_module/bloc/submit_complaint_bloc.dart';
import 'package:medi_track/modules/submit_complaint_module/data/complaint_data.dart';
import 'package:medi_track/modules/submit_complaint_module/providers/complaint_form_provider.dart';

class SubmitComplaintHelper {
  final BuildContext context;
  const SubmitComplaintHelper(this.context);

  void userDataInit() {
    final UserProfileCubit cubit = context.read<UserProfileCubit>();
    cubit.getUserProfile();
  }

  Future<void> pickImage(ComplaintFormProvider provider) async {
    try {
      await provider.pickImage();
    } catch (e) {
      if (!context.mounted) return;
      CustomSnackbar.showError(context, message: 'Failed to pick image: $e');
    }
  }

  void submitComplaint(ComplaintData complaintData) {
    final SubmitComplaintBloc bloc = context.read<SubmitComplaintBloc>();
    bloc.add(
      SubmitComplaintEvent.submitComplaint(complaintData: complaintData),
    );
  }
}
