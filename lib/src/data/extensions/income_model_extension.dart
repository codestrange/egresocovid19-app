import 'package:egresocovid19/src/data/models/income_model.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

extension IncomeModelExtension on IncomeModel {
  IncomeEntity toEntity() {
    return IncomeEntity(
      income: income,
      days: days,
    );
  }
}

extension IncomeEntityExtension on IncomeEntity {
  IncomeModel toModel() {
    return IncomeModel(
      income: income,
      days: days,
    );
  }
}
