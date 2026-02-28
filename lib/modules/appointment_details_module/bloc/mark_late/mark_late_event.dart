part of 'mark_late_bloc.dart';

@freezed
sealed class MarkLateEvent with _$MarkLateEvent {
  const factory MarkLateEvent.started() = _Started;
  const factory MarkLateEvent.markingLate(int appointmentId) = _MarkingLate;
}
