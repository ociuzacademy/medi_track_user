part of 'appointment_pdf_bloc.dart';

@freezed
sealed class AppointmentPdfState with _$AppointmentPdfState {
  const factory AppointmentPdfState.initial() = AppointmentPdfInitial;
  const factory AppointmentPdfState.loading() = AppointmentPdfLoading;
  const factory AppointmentPdfState.success() = AppointmentPdfSuccess;
  const factory AppointmentPdfState.error(String message) = AppointmentPdfError;
}
