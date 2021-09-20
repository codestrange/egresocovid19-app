import 'package:egresocovid19/src/data/models/pathological_model.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_get_model.g.dart';

@JsonSerializable()
class PatientGetModel {
  const PatientGetModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.ci,
    required this.province,
    required this.municipality,
    required this.sex,
    required this.skinColor,
    required this.bloodType,
    required this.address,
    required this.polyclinic,
    required this.surgery,
    required this.popularCouncil,
    required this.neighborhood,
    required this.blockNumber,
    required this.personalPathologicalHistory,
    required this.familyPathologicalHistory,
  });

  final String id;
  final String firstname;
  final String lastname;
  final String ci;
  final String province;
  final String municipality;
  final Sex sex;
  final SkinColor skinColor;
  final BloodType? bloodType;
  final String address;
  final String polyclinic;
  final String surgery;
  final String popularCouncil;
  final String neighborhood;
  final int blockNumber;
  final List<PathologicalModel> personalPathologicalHistory;
  final List<PathologicalModel> familyPathologicalHistory;

  static PatientGetModel fromJson(Map<String, dynamic> json) =>
      _$PatientGetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PatientGetModelToJson(this);
}
