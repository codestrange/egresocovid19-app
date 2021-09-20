import 'package:egresocovid19/src/data/extensions/extensions.dart';
import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

extension PatientGetModelExtension on PatientGetModel {
  PatientGetEntity toEntity() {
    return PatientGetEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      province: province,
      municipality: municipality,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory:
          personalPathologicalHistory.map((p) => p.toEntity()).toList(),
      familyPathologicalHistory:
          familyPathologicalHistory.map((p) => p.toEntity()).toList(),
    );
  }
}

extension PatientGetDetailModelExtension on PatientGetDetailModel {
  PatientGetDetailEntity toEntity() {
    return PatientGetDetailEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      province: province,
      municipality: municipality,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory:
          personalPathologicalHistory.map((p) => p.toEntity()).toList(),
      familyPathologicalHistory:
          familyPathologicalHistory.map((p) => p.toEntity()).toList(),
      dischargeOfPositiveCasesOfCovid19:
          dischargeOfPositiveCasesOfCovid19.toEntity(),
    );
  }
}

extension PatientPostEntityExtension on PatientPostEntity {
  PatientPostModel toModel() {
    return PatientPostModel(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      municipalityCode: municipalityCode,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory:
          personalPathologicalHistory.map((p) => p.toModel()).toList(),
      familyPathologicalHistory:
          familyPathologicalHistory.map((p) => p.toModel()).toList(),
    );
  }
}

extension PatientPutEntityExtension on PatientPutEntity {
  PatientPutModel toModel() {
    return PatientPutModel(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      municipalityCode: municipalityCode,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory:
          personalPathologicalHistory?.map((p) => p.toModel()).toList(),
      familyPathologicalHistory:
          familyPathologicalHistory?.map((p) => p.toModel()).toList(),
    );
  }
}
