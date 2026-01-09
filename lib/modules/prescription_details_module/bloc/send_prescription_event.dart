part of 'send_prescription_bloc.dart';

@freezed
sealed class SendPrescriptionEvent with _$SendPrescriptionEvent {
  const factory SendPrescriptionEvent.started() = _Started;
  const factory SendPrescriptionEvent.generatingPrescription(
    PrescriptionDetailsModel prescriptionData,
  ) = _GeneratingPrescription;
}
