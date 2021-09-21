part of 'municipality_bloc.dart';

@freezed
class MunicipalityState with _$MunicipalityState {
  const factory MunicipalityState.initial() = MunicipalityInitial;
  const factory MunicipalityState.inProgress() = MunicipalityRequestInProgress;
  const factory MunicipalityState.provinceSelection({
    required List<ProvinceEntity> provinces,
  }) = ProvinceSelection;
  const factory MunicipalityState.municipalitySelection({
    required List<ProvinceEntity> provinces,
    required ProvinceEntity provinceSelected,
  }) = MunicipalitySelection;
  const factory MunicipalityState.municipalityCodeReady({
    required List<ProvinceEntity> provinces,
    required ProvinceEntity provinceSelected,
    required MunicipalityEntity municipalitySelected,
  }) = MunicipalityCodeReady;
}
