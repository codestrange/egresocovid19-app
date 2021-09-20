// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientGetModel _$PatientGetModelFromJson(Map<String, dynamic> json) {
  return PatientGetModel(
    id: json['id'] as String,
    firstname: json['firstname'] as String,
    lastname: json['lastname'] as String,
    ci: json['ci'] as String,
    province: json['province'] as String,
    municipality: json['municipality'] as String,
    sex: sexFromInt(json['sex'] as int),
    age: json['age'] as int,
    skinColor: skinColorFromInt(json['skinColor'] as int),
    bloodType: bloodTypeFromInt(json['bloodType'] as int?),
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

Map<String, dynamic> _$PatientGetModelToJson(PatientGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'ci': instance.ci,
      'province': instance.province,
      'municipality': instance.municipality,
      'sex': sexToInt(instance.sex),
      'age': instance.age,
      'skinColor': skinColorToInt(instance.skinColor),
      'bloodType': bloodTypeToInt(instance.bloodType),
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
