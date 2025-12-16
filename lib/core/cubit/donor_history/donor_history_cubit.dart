import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/core/models/blood_donation_history_model.dart';
import 'package:medi_track/core/services/app_services.dart';

part 'donor_history_state.dart';
part 'donor_history_cubit.freezed.dart';

class DonorHistoryCubit extends Cubit<DonorHistoryState> {
  DonorHistoryCubit() : super(const DonorHistoryState.initial());

  Future<void> getDonorHistory() async {
    emit(const DonorHistoryState.loading());
    try {
      final donorId = await AuthStorageFunctions.getDonorId();
      final List<BloodDonationHistoryModel> bloodDonationHistoryList =
          await AppServices.getDonorHistory(donorId: donorId);
      if (bloodDonationHistoryList.isEmpty) {
        emit(const DonorHistoryState.empty());
      } else {
        emit(DonorHistoryState.success(bloodDonationHistoryList));
      }
    } catch (e) {
      emit(DonorHistoryState.error(e.toString()));
    }
  }
}
