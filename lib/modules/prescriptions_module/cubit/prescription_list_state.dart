part of 'prescription_list_cubit.dart';

@freezed
sealed class PrescriptionListState with _$PrescriptionListState {
  const factory PrescriptionListState.initial() = PrescriptionListInitial;
  const factory PrescriptionListState.loading() = PrescriptionListLoading;
  const factory PrescriptionListState.success(PrescriptionListModel data) =
      PrescriptionListSuccess;
  const factory PrescriptionListState.error(String message) =
      PrescriptionListError;
}
