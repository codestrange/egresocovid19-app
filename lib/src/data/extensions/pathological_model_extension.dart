import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

extension PathologicalModelExtension on PathologicalModel {
  PathologicalEntity toEntity() {
    return PathologicalEntity(
      name: name,
      treatments: treatments,
    );
  }
}

extension PathologicalEntityExtension on PathologicalEntity {
  PathologicalModel toModel() {
    return PathologicalModel(
      name: name,
      treatments: treatments,
    );
  }
}
