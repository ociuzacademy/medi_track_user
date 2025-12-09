import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/modules/prescription_details_module/models/prescription_details_model.dart';
import 'package:medi_track/modules/prescription_details_module/services/prescription_details_services.dart';

part 'prescription_details_state.dart';
part 'prescription_details_cubit.freezed.dart';

class PrescriptionDetailsCubit extends Cubit<PrescriptionDetailsState> {
  PrescriptionDetailsCubit() : super(const PrescriptionDetailsState.initial());

  Future<void> getPrescriptionDetails({required int prescriptionId}) async {
    emit(const PrescriptionDetailsState.loading());
    try {
      final response = await PrescriptionDetailsServices.getPrescriptionDetails(
        prescriptionId: prescriptionId,
      );
      emit(PrescriptionDetailsState.success(response));
    } catch (e) {
      emit(PrescriptionDetailsState.error(e.toString()));
    }
  }
}
