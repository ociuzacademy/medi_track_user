part of 'upcoming_appointments_cubit.dart';

@freezed
sealed class UpcomingAppointmentsState with _$UpcomingAppointmentsState {
  const factory UpcomingAppointmentsState.initial() =
      UpcomingAppointmentsInitial;
  const factory UpcomingAppointmentsState.loading() =
      UpcomingAppointmentsLoading;
  const factory UpcomingAppointmentsState.success({
    required UpcomingAppointmentsModel data,
  }) = UpcomingAppointmentsSuccess;
  const factory UpcomingAppointmentsState.empty() = UpcomingAppointmentsEmpty;
  const factory UpcomingAppointmentsState.error({required String message}) =
      UpcomingAppointmentsError;
}
