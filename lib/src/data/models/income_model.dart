import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'income_model.g.dart';

@JsonSerializable(explicitToJson: true)
class IncomeModel {
  const IncomeModel({
    required this.income,
    required this.days,
  });

  final Income income;
  final int days;

  static IncomeModel fromJson(Map<String, dynamic> json) =>
      _$IncomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$IncomeModelToJson(this);
}
