import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/feedback_details_module/model/feedback_details_model.dart';
import 'package:medi_track/modules/feedback_details_module/services/feedback_details_services.dart';

part 'feedback_details_state.dart';
part 'feedback_details_cubit.freezed.dart';

class FeedbackDetailsCubit extends Cubit<FeedbackDetailsState> {
  FeedbackDetailsCubit() : super(const FeedbackDetailsState.initial());

  Future<void> getFeedbackDetails({required int feedbackId}) async {
    emit(const FeedbackDetailsState.loading());
    try {
      final response = await FeedbackDetailsServices.getFeedbackDetails(
        feedbackId: feedbackId,
      );
      emit(FeedbackDetailsState.success(response));
    } catch (e) {
      emit(FeedbackDetailsState.error(e.toString()));
    }
  }
}
