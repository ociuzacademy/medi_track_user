import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/prescription_details_module/models/prescription_details_model.dart';
import 'package:medi_track/core/services/prescription_pdf_service.dart';

part 'send_prescription_event.dart';
part 'send_prescription_state.dart';
part 'send_prescription_bloc.freezed.dart';

class SendPrescriptionBloc
    extends Bloc<SendPrescriptionEvent, SendPrescriptionState> {
  final PrescriptionPdfService _prescriptionPdfService;
  SendPrescriptionBloc({required PrescriptionPdfService prescriptionPdfService})
    : _prescriptionPdfService = prescriptionPdfService,
      super(const SendPrescriptionInitial()) {
    on<_GeneratingPrescription>(_onGeneratingPrescription);
  }

  Future<void> _onGeneratingPrescription(
    _GeneratingPrescription event,
    Emitter<SendPrescriptionState> emit,
  ) async {
    emit(const SendPrescriptionLoading());
    try {
      await _prescriptionPdfService.generateAndShare(event.prescriptionData);
      emit(const SendPrescriptionSuccess());
    } catch (e) {
      emit(SendPrescriptionError(e.toString()));
    }
  }
}
