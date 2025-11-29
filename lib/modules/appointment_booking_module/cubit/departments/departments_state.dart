part of 'departments_cubit.dart';

@freezed
sealed class DepartmentsState with _$DepartmentsState {
  const factory DepartmentsState.initial() = DepartmentsInitial;
  const factory DepartmentsState.loading() = DepartmentsLoading;
  const factory DepartmentsState.success(DepartmentsModel departments) =
      DepartmentsSuccess;
  const factory DepartmentsState.error(String errorMessage) = DepartmentsError;
}
