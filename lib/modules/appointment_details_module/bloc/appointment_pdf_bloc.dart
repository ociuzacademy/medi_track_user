import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/appointment_details_module/services/appointment_details_services.dart';
import 'package:medi_track/core/services/prescription_pdf_service.dart';

part 'appointment_pdf_event.dart';
part 'appointment_pdf_state.dart';
part 'appointment_pdf_bloc.freezed.dart';

class AppointmentPdfBloc
    extends Bloc<AppointmentPdfEvent, AppointmentPdfState> {
  final PrescriptionPdfService _prescriptionPdfService;
  AppointmentPdfBloc({required PrescriptionPdfService prescriptionPdfService})
    : _prescriptionPdfService = prescriptionPdfService,
      super(const AppointmentPdfInitial()) {
    on<_GeneratingAppointmentPdf>(_onGeneratingAppointmentPdf);
  }

  Future<void> _onGeneratingAppointmentPdf(
    _GeneratingAppointmentPdf event,
    Emitter<AppointmentPdfState> emit,
  ) async {
    emit(const AppointmentPdfLoading());
    try {
      final data = await AppointmentDetailsServices.getAppointmentPrescription(
        appointmentId: event.appointmentId,
      );
      await _prescriptionPdfService.generateAndShareForAppointment(data);
      emit(const AppointmentPdfSuccess());
    } catch (e) {
      emit(AppointmentPdfError(e.toString()));
    }
  }
}
