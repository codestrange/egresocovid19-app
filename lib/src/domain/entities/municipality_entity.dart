import 'package:freezed_annotation/freezed_annotation.dart';

part 'municipality_entity.freezed.dart';

@freezed
class MunicipalityEntity with _$MunicipalityEntity {
  const factory MunicipalityEntity({
    required String name,
    required String code,
  }) = _MunicipalityEntity;
}
