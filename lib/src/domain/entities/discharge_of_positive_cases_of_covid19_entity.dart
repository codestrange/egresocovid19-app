import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discharge_of_positive_cases_of_covid19_entity.freezed.dart';

@freezed
class DischargeOfPositiveCasesOfCovid19Entity
    with _$DischargeOfPositiveCasesOfCovid19Entity {
  const factory DischargeOfPositiveCasesOfCovid19Entity({
    DateTime? detectionDate,
    List<String>? symptoms,
    int? durationOfSymptoms,
    DiagnosisWay? diagnosisWay,
    TestDiagnosis? testUsedInDiagnosis,
    int? daysFromSymptomsToDiagnosis,
    int? numberPcrPerformed,
    int? timeFromDiagnosisToNegativeOrDischarge,
    Contagion? formOfContagion,
    bool? wasHePartOfAnEvent,
    bool? didHeWorkInTheAttentionToPositiveCases,
    String? hospitalizationTime,
    List<IncomeEntity>? incomes,
    int? contactsFirstLevel,
    int? contactsFirstLevelPositives,
    int? contactsSecondLevel,
    int? contactsSecondLevelPositives,
    int? contactsThirdLevel,
    int? contactsThirdLevelPositives,
    List<Treatment>? treatmentsReceived,
    List<String>? antibiotics,
    List<Prophylaxis>? prophylaxis,
    String? anotherVaccineAgainstCovid,
    List<Aftermath>? aftermath,
    List<String>? othersAftermath,
  }) = _BaseDischargeOfPositiveCasesOfCovid19Entity;
}
