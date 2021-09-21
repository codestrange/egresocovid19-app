import 'package:egresocovid19/src/data/extensions/extensions.dart';
import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

extension DischargeDataGetModelExtension on DischargeDataGetModel {
  DischargeDataEntity toEntity() {
    return DischargeDataEntity(
      aftermath: aftermath,
      anotherVaccineAgainstCovid: anotherVaccineAgainstCovid,
      antibiotics: antibiotics,
      contactsFirstLevel: contactsFirstLevel,
      contactsFirstLevelPositives: contactsFirstLevelPositives,
      contactsSecondLevel: contactsSecondLevel,
      contactsSecondLevelPositives: contactsSecondLevelPositives,
      contactsThirdLevel: contactsThirdLevel,
      contactsThirdLevelPositives: contactsThirdLevelPositives,
      daysFromSymptomsToDiagnosis: daysFromSymptomsToDiagnosis,
      detectionDate: detectionDate,
      diagnosisWay: diagnosisWay,
      didHeWorkInTheAttentionToPositiveCases:
          didHeWorkInTheAttentionToPositiveCases,
      durationOfSymptoms: durationOfSymptoms,
      formOfContagion: formOfContagion,
      hospitalizationTime: hospitalizationTime,
      numberPcrPerformed: numberPcrPerformed,
      othersAftermath: othersAftermath,
      prophylaxis: prophylaxis,
      symptoms: symptoms,
      testUsedInDiagnosis: testUsedInDiagnosis,
      timeFromDiagnosisToNegativeOrDischarge:
          timeFromDiagnosisToNegativeOrDischarge,
      treatmentsReceived: treatmentsReceived,
      wasHePartOfAnEvent: wasHePartOfAnEvent,
      incomes: incomes?.map((e) => e.toEntity()).toList(),
    );
  }
}

extension DischargeOfPositiveCasesOfCovid19EntityExtension
    on DischargeDataEntity {
  DischargeDataPutModel toModel() {
    return DischargeDataPutModel(
      aftermath: aftermath,
      anotherVaccineAgainstCovid: anotherVaccineAgainstCovid,
      antibiotics: antibiotics,
      contactsFirstLevel: contactsFirstLevel,
      contactsFirstLevelPositives: contactsFirstLevelPositives,
      contactsSecondLevel: contactsSecondLevel,
      contactsSecondLevelPositives: contactsSecondLevelPositives,
      contactsThirdLevel: contactsThirdLevel,
      contactsThirdLevelPositives: contactsThirdLevelPositives,
      daysFromSymptomsToDiagnosis: daysFromSymptomsToDiagnosis,
      detectionDate: detectionDate,
      diagnosisWay: diagnosisWay,
      didHeWorkInTheAttentionToPositiveCases:
          didHeWorkInTheAttentionToPositiveCases,
      durationOfSymptoms: durationOfSymptoms,
      formOfContagion: formOfContagion,
      hospitalizationTime: hospitalizationTime,
      numberPcrPerformed: numberPcrPerformed,
      othersAftermath: othersAftermath,
      prophylaxis: prophylaxis,
      symptoms: symptoms,
      testUsedInDiagnosis: testUsedInDiagnosis,
      timeFromDiagnosisToNegativeOrDischarge:
          timeFromDiagnosisToNegativeOrDischarge,
      treatmentsReceived: treatmentsReceived,
      wasHePartOfAnEvent: wasHePartOfAnEvent,
      incomes: incomes?.map((e) => e.toModel()).toList(),
    );
  }
}
