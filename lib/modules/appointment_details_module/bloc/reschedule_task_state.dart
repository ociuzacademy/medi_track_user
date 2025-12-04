part of 'reschedule_task_bloc.dart';

@freezed
sealed class RescheduleTaskState with _$RescheduleTaskState {
  const factory RescheduleTaskState.initial() = RescheduleTaskInitial;
  const factory RescheduleTaskState.loading(bool isAccepting) =
      RescheduleTaskLoading;
  const factory RescheduleTaskState.acceptRescheduleSuccess({
    required AcceptRescheduleResponseModel response,
  }) = RescheduleTaskAcceptRescheduleSuccess;
  const factory RescheduleTaskState.rejectRescheduleSuccess({
    required RejectRescheduleResponseModel response,
  }) = RescheduleTaskRejectRescheduleSuccess;
  const factory RescheduleTaskState.error({required String message}) =
      RescheduleTaskError;
}
