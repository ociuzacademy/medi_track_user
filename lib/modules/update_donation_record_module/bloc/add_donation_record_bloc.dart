import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/export/storage_export.dart';
import 'package:medi_track/modules/update_donation_record_module/classes/update_donation_record_data.dart';
import 'package:medi_track/modules/update_donation_record_module/models/add_donation_record_response_model.dart';
import 'package:medi_track/modules/update_donation_record_module/services/update_donation_record_services.dart';

part 'add_donation_record_event.dart';
part 'add_donation_record_state.dart';
part 'add_donation_record_bloc.freezed.dart';

class AddDonationRecordBloc
    extends Bloc<AddDonationRecordEvent, AddDonationRecordState> {
  AddDonationRecordBloc() : super(const AddDonationRecordInitial()) {
    on<_AddDonationRecord>(_onAddDonationRecord);
  }

  Future<void> _onAddDonationRecord(
    _AddDonationRecord event,
    Emitter<AddDonationRecordState> emit,
  ) async {
    emit(const AddDonationRecordLoading());
    try {
      final donorId = await AuthStorageFunctions.getDonorId();

      final response = await UpdateDonationRecordServices.updateDonationRecord(
        donorId: donorId,
        data: event.data,
      );
      emit(AddDonationRecordSuccess(response));
    } catch (e) {
      emit(AddDonationRecordError(e.toString()));
    }
  }
}
