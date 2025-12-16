import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/models/next_donation_date_model.dart';
import 'package:medi_track/modules/blood_donor_dashboard_module/services/blood_donor_dashboard_services.dart';

part 'next_donation_date_state.dart';
part 'next_donation_date_cubit.freezed.dart';

class NextDonationDateCubit extends Cubit<NextDonationDateState> {
  NextDonationDateCubit() : super(const NextDonationDateState.initial());

  Future<void> getNextDonationDate() async {
    emit(const NextDonationDateState.loading());
    try {
      final donorId = await AuthStorageFunctions.getDonorId();
      final response = await BloodDonorDashboardServices.getNextDonationDate(
        donorId: donorId,
      );
      emit(NextDonationDateState.success(nextDonationDate: response));
    } catch (e) {
      emit(NextDonationDateState.error(message: e.toString()));
    }
  }
}
