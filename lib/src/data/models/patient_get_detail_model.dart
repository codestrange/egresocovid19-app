import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_get_detail_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PatientGetDetailModel {
  const PatientGetDetailModel({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.ci,
    required this.province,
    required this.municipality,
    required this.sex,
    required this.age,
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
    required this.dischargeOfPositiveCasesOfCovid19,
  });

  final String id;
  final String firstname;
  final String lastname;
  final String ci;
  final String province;
  final String municipality;
  @JsonKey(fromJson: sexFromInt, toJson: sexToInt)
  final Sex sex;
  final int age;
  @JsonKey(fromJson: skinColorFromInt, toJson: skinColorToInt)
  final SkinColor skinColor;
  @JsonKey(fromJson: bloodTypeFromInt, toJson: bloodTypeToInt)
  final BloodType? bloodType;
  final String address;
  final String polyclinic;
  final String surgery;
  final String popularCouncil;
  final String neighborhood;
  final int blockNumber;
  final List<PathologicalModel> personalPathologicalHistory;
  final List<PathologicalModel> familyPathologicalHistory;
  final DischargeDataGetModel dischargeOfPositiveCasesOfCovid19;

  static PatientGetDetailModel fromJson(Map<String, dynamic> json) =>
      _$PatientGetDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$PatientGetDetailModelToJson(this);
}
