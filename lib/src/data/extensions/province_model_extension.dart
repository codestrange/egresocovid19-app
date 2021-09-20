import 'package:egresocovid19/src/data/extensions/extensions.dart';
import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

extension ProvinceModelExtension on ProvinceModel {
  ProvinceEntity toEntity() {
    return ProvinceEntity(
      name: name,
      code: code,
      municipalities: municipalities
          .map((municipality) => municipality.toEntity())
          .toList(),
    );
  }
}
