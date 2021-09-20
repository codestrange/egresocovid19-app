// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_put_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientPutModel _$PatientPutModelFromJson(Map<String, dynamic> json) {
  return PatientPutModel(
    firstname: json['firstname'] as String?,
    lastname: json['lastname'] as String?,
    ci: json['ci'] as String?,
    municipalityCode: json['municipalityCode'] as String?,
    sex: sexNullableFromInt(json['sex'] as int?),
    age: json['age'] as int?,
    skinColor: skinColorNullableFromInt(json['skinColor'] as int?),
    bloodType: bloodTypeFromInt(json['bloodType'] as int?),
    address: json['address'] as String?,
    polyclinic: json['polyclinic'] as String?,
    surgery: json['surgery'] as String?,
    popularCouncil: json['popularCouncil'] as String?,
    neighborhood: json['neighborhood'] as String?,
    blockNumber: json['blockNumber'] as int?,
    personalPathologicalHistory:
        (json['personalPathologicalHistory'] as List<dynamic>?)
            ?.map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
            .toList(),
    familyPathologicalHistory:
        (json['familyPathologicalHistory'] as List<dynamic>?)
            ?.map((e) => PathologicalModel.fromJson(e as Map<String, dynamic>))
            .toList(),
  );
}

Map<String, dynamic> _$PatientPutModelToJson(PatientPutModel instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'ci': instance.ci,
      'municipalityCode': instance.municipalityCode,
      'sex': sexNullableToInt(instance.sex),
      'age': instance.age,
      'skinColor': skinColorNullableToInt(instance.skinColor),
      'bloodType': bloodTypeToInt(instance.bloodType),
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