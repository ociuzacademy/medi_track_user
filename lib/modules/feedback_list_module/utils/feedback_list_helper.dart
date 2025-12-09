import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/modules/feedback_list_module/cubit/feedback_list_cubit.dart';

class FeedbackListHelper {
  final BuildContext context;
  const FeedbackListHelper({required this.context});
  void feedbakListInitial() {
    final FeedbackListCubit feedbackListCubit = context
        .read<FeedbackListCubit>();
    feedbackListCubit.getUserFeedbackList();
  }
}
