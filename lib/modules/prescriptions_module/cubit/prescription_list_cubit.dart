import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/export/storage_export.dart';
import 'package:medi_track/modules/prescriptions_module/models/prescription_list_model.dart';
import 'package:medi_track/modules/prescriptions_module/services/prescriptions_services.dart';

part 'prescription_list_state.dart';
part 'prescription_list_cubit.freezed.dart';

class PrescriptionListCubit extends Cubit<PrescriptionListState> {
  PrescriptionListCubit() : super(const PrescriptionListState.initial());

  Future<void> getPrescriptionList() async {
    emit(const PrescriptionListState.loading());
    try {
      final String doctorId = await AuthStorageFunctions.getUserId();

      final response = await PrescriptionsServices.getPrescriptionList(
        doctorId: doctorId,
      );
      emit(PrescriptionListState.success(response));
    } catch (e) {
      emit(PrescriptionListState.error(e.toString()));
    }
  }
}
