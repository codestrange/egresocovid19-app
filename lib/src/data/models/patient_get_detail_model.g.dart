// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_get_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientGetDetailModel _$PatientGetDetailModelFromJson(
        Map<String, dynamic> json) =>
    PatientGetDetailModel(
      id: json['id'] as String,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      ci: json['ci'] as String,
      province: json['province'] as String,
      municipality: json['municipality'] as String,
      sex: $enumDecode(_$SexEnumMap, json['sex']),
      age: json['age'] as int,
      skinColor: $enumDecode(_$SkinColorEnumMap, json['skinColor']),
      bloodType: $enumDecodeNullable(_$BloodTypeEnumMap, json['bloodType']),
      address: json['address'] as String,
      polyclinic: json['polyclinic'] as String?,
      surgery: json['surgery'] as String?,
      popularCouncil: json['popularCouncil'] as String?,
      neighborhood: json['neighborhood'] as String?,
      blockNumber: json['blockNumber'] as int?,
      personalPathologicalHistory:
          (json['personalPathologicalHistory'] as List<dynamic>)
              .map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      familyPathologicalHistory:
          (json['familyPathologicalHistory'] as List<dynamic>)
              .map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      dischargeOfPositiveCasesOfCovid19: DischargeDataGetModel.fromJson(
          json['dischargeOfPositiveCasesOfCovid19'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PatientGetDetailModelToJson(
        PatientGetDetailModel instance) =>
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
      'dischargeOfPositiveCasesOfCovid19':
          instance.dischargeOfPositiveCasesOfCovid19.toJson(),
    };

const _$SexEnumMap = {
  Sex.Female: 0,
  Sex.Male: 1,
  Sex.Other: 2,
};

const _$SkinColorEnumMap = {
  SkinColor.White: 0,
  SkinColor.Black: 1,
  SkinColor.HalfBlood: 2,
  SkinColor.Other: 3,
};

const _$BloodTypeEnumMap = {
  BloodType.Unknown: 0,
  BloodType.Aplus: 1,
  BloodType.Bplus: 2,
  BloodType.ABplus: 3,
  BloodType.Oplus: 4,
  BloodType.Aminus: 5,
  BloodType.Bminus: 6,
  BloodType.ABminus: 7,
  BloodType.Ominus: 8,
};
