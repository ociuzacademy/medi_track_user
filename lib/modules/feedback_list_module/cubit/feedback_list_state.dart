part of 'feedback_list_cubit.dart';

@freezed
sealed class FeedbackListState with _$FeedbackListState {
  const factory FeedbackListState.initial() = FeedbackListInitial;
  const factory FeedbackListState.loading() = FeedbackListLoading;
  const factory FeedbackListState.success({
    required UserFeedbackListModel userFeedbackList,
  }) = FeedbackListSuccess;
  const factory FeedbackListState.error({required String message}) =
      FeedbackListError;
}
