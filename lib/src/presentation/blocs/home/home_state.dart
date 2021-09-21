part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.fetchInProgress() = _FetchInProgress;
  const factory HomeState.fetchSuccess({
    required List<PatientGetEntity> patients,
  }) = _FetchSuccess;
  const factory HomeState.fetchSuccessNotFound() = _FetchSuccessNotFound;
  const factory HomeState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
