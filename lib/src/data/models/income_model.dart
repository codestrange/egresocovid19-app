import 'package:json_annotation/json_annotation.dart';

import 'package:egresocovid19/src/domain/enums/enums.dart';

part 'income_model.g.dart';

@JsonSerializable(explicitToJson: true)
class IncomeModel {
  IncomeModel({
    required this.income,
    required this.days,
  });

  factory IncomeModel.fromJson(Map<String, dynamic> json) =>
      _$IncomeModelFromJson(json);

  Income income;
  int days;

  Map<String, dynamic> toJson() => _$IncomeModelToJson(this);
}
