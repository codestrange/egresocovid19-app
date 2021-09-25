part of 'patient_egreso_edit_bloc.dart';

@freezed
class PatientEgresoEditState with _$PatientEgresoEditState {
  const factory PatientEgresoEditState.initial() = _Initial;

  const factory PatientEgresoEditState.fetchInProgress() = _FetchInProgress;

  const factory PatientEgresoEditState.fetchFailure(String errorMessage) =
      _FetchFailure;

  const factory PatientEgresoEditState.fetchSuccess(
    DischargeDataEntity actualDischargeData,
  ) = _FetchSuccess;

  const factory PatientEgresoEditState.updateInProgress(
    DischargeDataEntity newDischargeData,
  ) = _UpdateInProgress;

  const factory PatientEgresoEditState.updateFailure(
    String errorMessage,
    DischargeDataEntity newDischargeData,
  ) = _UpdateFailure;

  const factory PatientEgresoEditState.updateSuccess(
    DischargeDataEntity newDischargeData,
  ) = _UpdateSuccess;
}
