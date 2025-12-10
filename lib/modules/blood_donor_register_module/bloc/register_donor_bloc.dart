import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/export/storage_export.dart';
import 'package:medi_track/modules/blood_donor_register_module/classes/blood_donor_register_data.dart';
import 'package:medi_track/modules/blood_donor_register_module/models/blood_donor_register_response_model.dart';
import 'package:medi_track/modules/blood_donor_register_module/services/blood_donor_register_services.dart';

part 'register_donor_event.dart';
part 'register_donor_state.dart';
part 'register_donor_bloc.freezed.dart';

class RegisterDonorBloc extends Bloc<RegisterDonorEvent, RegisterDonorState> {
  RegisterDonorBloc() : super(const RegisterDonorInitial()) {
    on<_RegisterDonor>(_onRegisterDonor);
  }

  Future<void> _onRegisterDonor(
    _RegisterDonor event,
    Emitter<RegisterDonorState> emit,
  ) async {
    emit(const RegisterDonorLoading());
    try {
      final String userId = await AuthStorageFunctions.getUserId();
      final response = await BloodDonorRegisterServices.bloodDonorRegister(
        userId: userId,
        bloodDonorRegisterData: event.bloodDonorRegisterData,
      );
      await AuthStorageFunctions.registerDonor(response.data.id);
      emit(RegisterDonorSuccess(response));
    } catch (e) {
      emit(RegisterDonorError(e.toString()));
    }
  }
}
