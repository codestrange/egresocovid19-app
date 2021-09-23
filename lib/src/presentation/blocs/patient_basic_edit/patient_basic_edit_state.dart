part of 'patient_basic_edit_bloc.dart';

@freezed
class PatientBasicEditState with _$PatientBasicEditState {
  const factory PatientBasicEditState.initial() = _Initial;
  const factory PatientBasicEditState.patientEdit({
    required PatientEntity patient,
  }) = _PatientEditingState;
  const factory PatientBasicEditState.failure({
    required ErrorEntity error,
  }) = _PatientErrorState;
}
