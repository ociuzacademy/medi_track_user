import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_track/core/localstorage/auth_storage_functions.dart';

part 'is_donor_state.dart';
part 'is_donor_cubit.freezed.dart';

class IsDonorCubit extends Cubit<IsDonorState> {
  IsDonorCubit() : super(const IsDonorState.initial());

  Future<void> checkIsDonor() async {
    emit(const IsDonorState.loading());
    try {
      final donorId = await AuthStorageFunctions.getDonorId();
      emit(IsDonorState.success(donorId > 0));
    } catch (e) {
      emit(IsDonorState.error(e.toString()));
    }
  }
}
