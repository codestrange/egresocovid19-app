import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_entity.freezed.dart';

@freezed
class ProvinceEntity with _$ProvinceEntity {
  const factory ProvinceEntity({
    required String name,
    required String code,
    required List<MunicipalityEntity> municipalities,
  }) = _ProvinceEntity;
}
