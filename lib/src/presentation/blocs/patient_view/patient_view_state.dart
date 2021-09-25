part of 'patient_view_bloc.dart';

@freezed
class PatientViewState with _$PatientViewState {
  const factory PatientViewState.fetchInProgress() = _FetchInProgress;
  const factory PatientViewState.fetchSuccess({
    required PatientGetDetailEntity patient,
  }) = _FetchSuccess;
  const factory PatientViewState.fetchFailure({
    required String error,
  }) = _FetchFailure;
}
