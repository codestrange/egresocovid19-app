// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncomeModel _$IncomeModelFromJson(Map<String, dynamic> json) => IncomeModel(
      income: $enumDecode(_$IncomeEnumMap, json['income']),
      days: json['days'] as int,
    );

Map<String, dynamic> _$IncomeModelToJson(IncomeModel instance) =>
    <String, dynamic>{
      'income': _$IncomeEnumMap[instance.income],
      'days': instance.days,
    };

const _$IncomeEnumMap = {
  Income.Home: 0,
  Income.IsolationCenter: 1,
  Income.HospitalRoom: 2,
  Income.IntermediateTherapy: 3,
  Income.IntensiveTherapy: 4,
};
