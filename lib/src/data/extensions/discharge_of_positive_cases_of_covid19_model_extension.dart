import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

extension DischargeOfPositiveCasesOfCovid19ModelExtension
    on DischargeOfPositiveCasesOfCovid19Model {
  DischargeOfPositiveCasesOfCovid19Entity toEntity() {
    return DischargeOfPositiveCasesOfCovid19Entity(
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
    );
  }
}

extension DischargeOfPositiveCasesOfCovid19EntityExtension
    on DischargeOfPositiveCasesOfCovid19Entity {
  DischargeOfPositiveCasesOfCovid19Model toModel() {
    return DischargeOfPositiveCasesOfCovid19Model(
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
    );
  }
}
