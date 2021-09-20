import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discharge_of_positive_cases_of_covid19_entity.freezed.dart';

@freezed
class DischargeOfPositiveCasesOfCovid19Entity
    with _$DischargeOfPositiveCasesOfCovid19Entity {
  const factory DischargeOfPositiveCasesOfCovid19Entity({
    required DateTime? detectionDate,
    required List<String>? symptoms,
    required int? durationOfSymptoms,
    required DiagnosisWay? diagnosisWay,
    required TestDiagnosis? testUsedInDiagnosis,
    required int? daysFromSymptomsToDiagnosis,
    required int? numberPcrPerformed,
    required int? timeFromDiagnosisToNegativeOrDischarge,
    required Contagion? formOfContagion,
    required bool? wasHePartOfAnEvent,
    required bool? didHeWorkInTheAttentionToPositiveCases,
    required String? hospitalizationTime,
    required List<IncomeEntity>? incomes,
    required int? contactsFirstLevel,
    required int? contactsFirstLevelPositives,
    required int? contactsSecondLevel,
    required int? contactsSecondLevelPositives,
    required int? contactsThirdLevel,
    required int? contactsThirdLevelPositives,
    required List<Treatment>? treatmentsReceived,
    required List<String>? antibiotics,
    required List<Prophylaxis>? prophylaxis,
    required String? anotherVaccineAgainstCovid,
    required List<Aftermath>? aftermath,
    required List<String>? othersAftermath,
  }) = _DischargeOfPositiveCasesOfCovid19Entity;
}
