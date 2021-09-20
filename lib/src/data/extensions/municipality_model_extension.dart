import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

extension MunicipalityModelExtension on MunicipalityModel {
  MunicipalityEntity toEntity() {
    return MunicipalityEntity(
      name: name,
      code: code,
    );
  }
}
