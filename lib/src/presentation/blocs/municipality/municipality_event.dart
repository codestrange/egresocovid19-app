part of 'municipality_bloc.dart';

@freezed
class MunicipalityEvent with _$MunicipalityEvent {
  const factory MunicipalityEvent.provincesRequested() = ProvincesRequested;
  const factory MunicipalityEvent.rebuild() = MunicipalityRebuild;
}
