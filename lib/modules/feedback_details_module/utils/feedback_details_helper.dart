import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medi_track/core/export/bloc_export.dart';

class FeedbackDetailsHelper {
  final BuildContext context;
  final int feedbackId;

  const FeedbackDetailsHelper({
    required this.context,
    required this.feedbackId,
  });

  void feedbackDetailsInit() {
    final FeedbackDetailsCubit cubit = context.read<FeedbackDetailsCubit>();
    cubit.getFeedbackDetails(feedbackId: feedbackId);
  }

  // Helper method to calculate thumb position as double
  static double calculateThumbPosition(double value) {
    final percentage = value / 5.0;
    return (percentage * 100) - 8;
  }
}
