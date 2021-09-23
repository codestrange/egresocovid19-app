// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncomeModel _$IncomeModelFromJson(Map<String, dynamic> json) {
  return IncomeModel(
    income: _$enumDecode(_$IncomeEnumMap, json['income']),
    days: json['days'] as int,
  );
}

Map<String, dynamic> _$IncomeModelToJson(IncomeModel instance) =>
    <String, dynamic>{
      'income': _$IncomeEnumMap[instance.income],
      'days': instance.days,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$IncomeEnumMap = {
  Income.Home: 0,
  Income.IsolationCenter: 1,
  Income.HospitalRoom: 2,
  Income.IntermediateTherapy: 3,
  Income.IntensiveTherapy: 4,
};
