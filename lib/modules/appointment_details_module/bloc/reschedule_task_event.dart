part of 'reschedule_task_bloc.dart';

@freezed
sealed class RescheduleTaskEvent with _$RescheduleTaskEvent {
  const factory RescheduleTaskEvent.started() = _Started;
  const factory RescheduleTaskEvent.acceptingReschedule({
    required int appointmentId,
  }) = _AcceptingReschedule;
  const factory RescheduleTaskEvent.rejectingReschedule({
    required int appointmentId,
  }) = _RejectingReschedule;
}
