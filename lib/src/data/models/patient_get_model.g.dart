// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientGetModel _$PatientGetModelFromJson(Map<String, dynamic> json) =>
    PatientGetModel(
      id: json['id'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      ci: json['ci'] as String,
      province: json['province'] as String,
      municipality: json['municipality'] as String,
      sex: _$enumDecode(_$SexEnumMap, json['sex']),
      age: json['age'] as int,
      skinColor: _$enumDecode(_$SkinColorEnumMap, json['skinColor']),
      bloodType: _$enumDecodeNullable(_$BloodTypeEnumMap, json['bloodType']),
      address: json['address'] as String,
      polyclinic: json['polyclinic'] as String,
      surgery: json['surgery'] as String,
      popularCouncil: json['popularCouncil'] as String,
      neighborhood: json['neighborhood'] as String,
      blockNumber: json['blockNumber'] as int,
      personalPathologicalHistory:
          (json['personalPathologicalHistory'] as List<dynamic>)
              .map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      familyPathologicalHistory:
          (json['familyPathologicalHistory'] as List<dynamic>)
              .map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PatientGetModelToJson(PatientGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'ci': instance.ci,
      'province': instance.province,
      'municipality': instance.municipality,
      'sex': _$SexEnumMap[instance.sex],
      'age': instance.age,
      'skinColor': _$SkinColorEnumMap[instance.skinColor],
      'bloodType': _$BloodTypeEnumMap[instance.bloodType],
      'address': instance.address,
      'polyclinic': instance.polyclinic,
      'surgery': instance.surgery,
      'popularCouncil': instance.popularCouncil,
      'neighborhood': instance.neighborhood,
      'blockNumber': instance.blockNumber,
      'personalPathologicalHistory':
          instance.personalPathologicalHistory.map((e) => e.toJson()).toList(),
      'familyPathologicalHistory':
          instance.familyPathologicalHistory.map((e) => e.toJson()).toList(),
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

const _$SexEnumMap = {
  Sex.Female: 0,
  Sex.Male: 1,
  Sex.Other: 2,
};

const _$SkinColorEnumMap = {
  SkinColor.White: 0,
  SkinColor.Black: 1,
  SkinColor.Other: 2,
};

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$BloodTypeEnumMap = {
  BloodType.Aplus: 0,
  BloodType.Bplus: 1,
  BloodType.ABplus: 2,
  BloodType.Oplus: 3,
  BloodType.Aminus: 4,
  BloodType.Bminus: 5,
  BloodType.ABminus: 6,
  BloodType.Ominus: 7,
};
