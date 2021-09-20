part of 'patient_create_bloc.dart';

@freezed
class PatientCreateEvent with _$PatientCreateEvent {
  const factory PatientCreateEvent.started() = _Started;
}
