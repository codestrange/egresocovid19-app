part of 'patient_basic_edit_bloc.dart';

@freezed
class PatientBasicEditEvent with _$PatientBasicEditEvent {
  const factory PatientBasicEditEvent.fetch(String patientId) = _Fetch;
}
