import 'package:egresocovid19/src/domain/entities/discharge_of_positive_cases_of_covid19_entity.dart';
import 'package:egresocovid19/src/domain/entities/pathological_entity.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_entity.freezed.dart';

@freezed
class PatientEntity with _$PatientEntity {
  const factory PatientEntity.post({
    required String fullName,
    required String ci,
    required Sex sex,
    required SkinColor skinColor,
    BloodType? bloodType,
    required String address,
    required String municipalityName,
    required String provinceName,
    required String polyclinic,
    required String surgery,
    required String popularCouncil,
    required String neighborhood,
    required int blockNumber,
    required List<PathologicalEntity> personalPathologicalHistory,
    required List<PathologicalEntity> familyPathologicalHistory,
    DischargeOfPositiveCasesOfCovid19Entity?
        dischargeOfPositiveCasesOfCovid19Entity,
  }) = _PatientPostEntity;
  const factory PatientEntity.get({
    required String fullName,
    required String ci,
    required Sex sex,
    required SkinColor skinColor,
    BloodType? bloodType,
    required String address,
    required String municipalityCode,
    required String polyclinic,
    required String surgery,
    required String popularCouncil,
    required String neighborhood,
    required int blockNumber,
    required List<PathologicalEntity> personalPathologicalHistory,
    required List<PathologicalEntity> familyPathologicalHistory,
    DischargeOfPositiveCasesOfCovid19Entity?
        dischargeOfPositiveCasesOfCovid19Entity,
  }) = _PatientGetEntity;
  const factory PatientEntity.put({
    String? fullName,
    String? ci,
    Sex? sex,
    SkinColor? skinColor,
    BloodType? bloodType,
    String? address,
    String? municipalityName,
    String? provinceName,
    String? polyclinic,
    String? surgery,
    String? popularCouncil,
    String? neighborhood,
    int? blockNumber,
    List<PathologicalEntity>? personalPathologicalHistory,
    List<PathologicalEntity>? familyPathologicalHistory,
    DischargeOfPositiveCasesOfCovid19Entity?
        dischargeOfPositiveCasesOfCovid19Entity,
  }) = _PatientPutEntity;
}
