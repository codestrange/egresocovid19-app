import 'package:egresocovid19/src/domain/entities/discharge_of_positive_cases_of_covid19_entity.dart';
import 'package:egresocovid19/src/domain/entities/pathological_entity.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_entity.freezed.dart';

@freezed
class PatientEntity with _$PatientEntity {
  const factory PatientEntity.get({
    required String id,
    required String firstname,
    required String lastname,
    required String ci,
    required String province,
    required String municipality,
    required Sex sex,
    required SkinColor skinColor,
    required BloodType? bloodType,
    required String address,
    required String polyclinic,
    required String surgery,
    required String popularCouncil,
    required String neighborhood,
    required int blockNumber,
    required List<PathologicalEntity> personalPathologicalHistory,
    required List<PathologicalEntity> familyPathologicalHistory,
  }) = _PatientGetEntity;
  const factory PatientEntity.getDetail({
    required String id,
    required String firstname,
    required String lastname,
    required String ci,
    required String province,
    required String municipality,
    required Sex sex,
    required SkinColor skinColor,
    required BloodType? bloodType,
    required String address,
    required String polyclinic,
    required String surgery,
    required String popularCouncil,
    required String neighborhood,
    required int blockNumber,
    required List<PathologicalEntity> personalPathologicalHistory,
    required List<PathologicalEntity> familyPathologicalHistory,
    required DischargeOfPositiveCasesOfCovid19Entity
        dischargeOfPositiveCasesOfCovid19,
  }) = _PatientGetDetailEntity;
  const factory PatientEntity.post({
    required String id,
    required String firstname,
    required String lastname,
    required String ci,
    required String municipalityCode,
    required Sex sex,
    required SkinColor skinColor,
    required BloodType? bloodType,
    required String address,
    required String polyclinic,
    required String surgery,
    required String popularCouncil,
    required String neighborhood,
    required int blockNumber,
    required List<PathologicalEntity> personalPathologicalHistory,
    required List<PathologicalEntity> familyPathologicalHistory,
  }) = _PatientPostEntity;
  const factory PatientEntity.put({
    required String? id,
    required String? firstname,
    required String? lastname,
    required String? ci,
    required String? municipalityCode,
    required Sex? sex,
    required SkinColor? skinColor,
    required BloodType? bloodType,
    required String? address,
    required String? polyclinic,
    required String? surgery,
    required String? popularCouncil,
    required String? neighborhood,
    required int? blockNumber,
    required List<PathologicalEntity>? personalPathologicalHistory,
    required List<PathologicalEntity>? familyPathologicalHistory,
  }) = _PatientPutEntity;
}
