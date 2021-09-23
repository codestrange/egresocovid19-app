part of 'patient_view_bloc.dart';

@freezed
class PatientViewEvent with _$PatientViewEvent {
  const factory PatientViewEvent.fetch(String patientId) = _Fetch;
}
