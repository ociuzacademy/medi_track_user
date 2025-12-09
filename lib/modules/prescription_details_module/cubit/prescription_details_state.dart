part of 'prescription_details_cubit.dart';

@freezed
sealed class PrescriptionDetailsState with _$PrescriptionDetailsState {
  const factory PrescriptionDetailsState.initial() = PrescriptionDetailsInitial;
  const factory PrescriptionDetailsState.loading() = PrescriptionDetailsLoading;
  const factory PrescriptionDetailsState.success(
    PrescriptionDetailsModel data,
  ) = PrescriptionDetailsSuccess;
  const factory PrescriptionDetailsState.error(String message) =
      PrescriptionDetailsError;
}
