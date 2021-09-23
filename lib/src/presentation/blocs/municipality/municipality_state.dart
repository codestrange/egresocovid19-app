part of 'municipality_bloc.dart';

@freezed
class MunicipalityState with _$MunicipalityState {
  const factory MunicipalityState.municipalityState({
    List<ProvinceEntity>? provinces,
    @Default(true) bool rebuildTrueOrFalse,
  }) = MunicipalityCurrentState;
}
