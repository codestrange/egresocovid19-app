import 'package:egresocovid19/src/domain/entities/municipality_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_entity.freezed.dart';

@freezed
class ProvinceEntity with _$ProvinceEntity {
  const factory ProvinceEntity.get({
    required String name,
    required String code,
    required List<MunicipalityEntity> municipalities,
  }) = _ProvinceEntity;
}
