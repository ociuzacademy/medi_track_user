import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/export/storage_export.dart';
import 'package:medi_track/modules/feedback_list_module/exception/feedback_list_empty_exception.dart';
import 'package:medi_track/modules/feedback_list_module/models/user_feedback_list_model.dart';
import 'package:medi_track/modules/feedback_list_module/services/feedback_list_services.dart';

part 'feedback_list_state.dart';
part 'feedback_list_cubit.freezed.dart';

class FeedbackListCubit extends Cubit<FeedbackListState> {
  FeedbackListCubit() : super(const FeedbackListState.initial());

  Future<void> getUserFeedbackList() async {
    emit(const FeedbackListState.loading());
    try {
      final userId = await AuthStorageFunctions.getUserId();
      final response = await FeedbackListServices.getUserFeedbackList(
        userId: userId,
      );
      emit(FeedbackListState.success(userFeedbackList: response));
    } catch (e) {
      if (e is FeedbackListEmptyException) {
        emit(const FeedbackListState.empty());
      } else {
        emit(FeedbackListState.error(message: e.toString()));
      }
    }
  }
}
