part of 'appointment_pdf_bloc.dart';

@freezed
sealed class AppointmentPdfEvent with _$AppointmentPdfEvent {
  const factory AppointmentPdfEvent.started() = _Started;
  const factory AppointmentPdfEvent.generatingAppointmentPdf(
    int appointmentId,
  ) = _GeneratingAppointmentPdf;
}
