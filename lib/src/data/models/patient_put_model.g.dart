// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_put_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientPutModel _$PatientPutModelFromJson(Map<String, dynamic> json) =>
    PatientPutModel(
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      ci: json['ci'] as String?,
      municipalityCode: json['municipalityCode'] as String?,
      sex: $enumDecodeNullable(_$SexEnumMap, json['sex']),
      age: json['age'] as int?,
      skinColor: $enumDecodeNullable(_$SkinColorEnumMap, json['skinColor']),
      bloodType: $enumDecodeNullable(_$BloodTypeEnumMap, json['bloodType']),
      address: json['address'] as String?,
      polyclinic: json['polyclinic'] as String?,
      surgery: json['surgery'] as String?,
      popularCouncil: json['popularCouncil'] as String?,
      neighborhood: json['neighborhood'] as String?,
      blockNumber: json['blockNumber'] as int?,
      personalPathologicalHistory: (json['personalPathologicalHistory']
              as List<dynamic>?)
          ?.map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      familyPathologicalHistory: (json['familyPathologicalHistory']
              as List<dynamic>?)
          ?.map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PatientPutModelToJson(PatientPutModel instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'ci': instance.ci,
      'municipalityCode': instance.municipalityCode,
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
          instance.personalPathologicalHistory?.map((e) => e.toJson()).toList(),
      'familyPathologicalHistory':
          instance.familyPathologicalHistory?.map((e) => e.toJson()).toList(),
    };

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
