part of 'appointment_list_cubit.dart';

@freezed
sealed class AppointmentListState with _$AppointmentListState {
  const factory AppointmentListState.initial() = AppointmentListInitial;
  const factory AppointmentListState.loading() = AppointmentListLoading;
  const factory AppointmentListState.success({
    required AppointmentsModel appointments,
  }) = AppointmentListSuccess;
  const factory AppointmentListState.error({required String message}) =
      AppointmentListError;
}
