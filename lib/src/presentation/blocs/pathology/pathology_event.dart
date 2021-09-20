part of 'pathology_bloc.dart';

@freezed
class PathologyEvent with _$PathologyEvent {
  const factory PathologyEvent.treatmentChanged(String treatment) =
      TreatmentPathologyChanged;
  const factory PathologyEvent.pathologyNameChanged(String pathology) =
      PathologyNameChanged;
}
