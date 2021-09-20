// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientPostModel _$PatientPostModelFromJson(Map<String, dynamic> json) {
  return PatientPostModel(
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    ci: json['ci'] as String,
    municipalityCode: json['municipalityCode'] as String,
    sex: _$enumDecode(_$SexEnumMap, json['sex']),
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
}

Map<String, dynamic> _$PatientPostModelToJson(PatientPostModel instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'ci': instance.ci,
      'municipalityCode': instance.municipalityCode,
      'sex': _$SexEnumMap[instance.sex],
      'skinColor': _$SkinColorEnumMap[instance.skinColor],
      'bloodType': _$BloodTypeEnumMap[instance.bloodType],
      'address': instance.address,
      'polyclinic': instance.polyclinic,
      'surgery': instance.surgery,
      'popularCouncil': instance.popularCouncil,
      'neighborhood': instance.neighborhood,
      'blockNumber': instance.blockNumber,
      'personalPathologicalHistory': instance.personalPathologicalHistory,
      'familyPathologicalHistory': instance.familyPathologicalHistory,
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
  Sex.Female: 'Female',
  Sex.Male: 'Male',
  Sex.Other: 'Other',
};

const _$SkinColorEnumMap = {
  SkinColor.White: 'White',
  SkinColor.Black: 'Black',
  SkinColor.Other: 'Other',
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
  BloodType.Aplus: 'Aplus',
  BloodType.Bplus: 'Bplus',
  BloodType.ABplus: 'ABplus',
  BloodType.Oplus: 'Oplus',
  BloodType.Aminus: 'Aminus',
  BloodType.Bminus: 'Bminus',
  BloodType.ABminus: 'ABminus',
  BloodType.Ominus: 'Ominus',
};
