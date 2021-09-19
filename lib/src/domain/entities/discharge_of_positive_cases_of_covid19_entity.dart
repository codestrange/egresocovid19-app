import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';

class DischargeOfPositiveCasesOfCovid19Entity {
  DischargeOfPositiveCasesOfCovid19Entity({
    this.detectionDate,
    this.symptoms,
    this.durationOfSymptoms,
    this.diagnosisWay,
    this.testUsedInDiagnosis,
    this.daysFromSymptomsToDiagnosis,
    this.numberPcrPerformed,
    this.timeFromDiagnosisToNegativeOrDischarge,
    this.formOfContagion,
    this.wasHePartOfAnEvent,
    this.didHeWorkInTheAttentionToPositiveCases,
    this.hospitalizationTime,
    this.contactsFirstLevel,
    this.contactsFirstLevelPositives,
    this.contactsSecondLevel,
    this.contactsSecondLevelPositives,
    this.contactsThirdLevel,
    this.contactsThirdLevelPositives,
    this.treatmentsReceived,
    this.antibiotics,
    this.prophylaxis,
    this.anotherVaccineAgainstCovid,
    this.aftermath,
    this.othersAftermath,
  });

  DateTime? detectionDate;
  List<String>? symptoms;
  int? durationOfSymptoms;
  DiagnosisWay? diagnosisWay;
  TestDiagnosis? testUsedInDiagnosis;
  int? daysFromSymptomsToDiagnosis;
  int? numberPcrPerformed;
  int? timeFromDiagnosisToNegativeOrDischarge;
  Contagion? formOfContagion;
  bool? wasHePartOfAnEvent;
  bool? didHeWorkInTheAttentionToPositiveCases;
  String? hospitalizationTime;
  List<IncomeEntity>? incomes;
  int? contactsFirstLevel;
  int? contactsFirstLevelPositives;
  int? contactsSecondLevel;
  int? contactsSecondLevelPositives;
  int? contactsThirdLevel;
  int? contactsThirdLevelPositives;
  List<Treatment>? treatmentsReceived;
  List<String>? antibiotics;
  List<Prophylaxis>? prophylaxis;
  String? anotherVaccineAgainstCovid;
  List<Aftermath>? aftermath;
  List<String>? othersAftermath;
}
