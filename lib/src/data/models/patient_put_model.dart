import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patient_put_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PatientPutModel {
  const PatientPutModel({
    required this.firstname,
    required this.lastname,
    required this.ci,
    required this.municipalityCode,
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
  });

  final String? firstname;
  final String? lastname;
  final String? ci;
  final String? municipalityCode;
  @JsonKey(fromJson: sexNullableFromInt, toJson: sexNullableToInt)
  final Sex? sex;
  final int? age;
  @JsonKey(fromJson: skinColorNullableFromInt, toJson: skinColorNullableToInt)
  final SkinColor? skinColor;
  @JsonKey(fromJson: bloodTypeFromInt, toJson: bloodTypeToInt)
  final BloodType? bloodType;
  final String? address;
  final String? polyclinic;
  final String? surgery;
  final String? popularCouncil;
  final String? neighborhood;
  final int? blockNumber;
  final List<PathologicalModel>? personalPathologicalHistory;
  final List<PathologicalModel>? familyPathologicalHistory;

  static PatientPutModel fromJson(Map<String, dynamic> json) =>
      _$PatientPutModelFromJson(json);

  Map<String, dynamic> toJson() => _$PatientPutModelToJson(this);
}