import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discharge_data_put_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DischargeDataPutModel {
  const DischargeDataPutModel({
    required this.detectionDate,
    required this.symptoms,
    required this.durationOfSymptoms,
    required this.diagnosisWay,
    required this.testUsedInDiagnosis,
    required this.daysFromSymptomsToDiagnosis,
    required this.numberPcrPerformed,
    required this.timeFromDiagnosisToNegativeOrDischarge,
    required this.formOfContagion,
    required this.wasHePartOfAnEvent,
    required this.didHeWorkInTheAttentionToPositiveCases,
    required this.hospitalizationTime,
    required this.incomes,
    required this.contactsFirstLevel,
    required this.contactsFirstLevelPositives,
    required this.contactsSecondLevel,
    required this.contactsSecondLevelPositives,
    required this.contactsThirdLevel,
    required this.contactsThirdLevelPositives,
    required this.treatmentsReceived,
    required this.antibiotics,
    required this.prophylaxis,
    required this.anotherVaccineAgainstCovid,
    required this.aftermath,
    required this.othersAftermath,
  });

  final DateTime? detectionDate;
  final List<String>? symptoms;
  final int? durationOfSymptoms;
  final DiagnosisWay? diagnosisWay;
  final TestDiagnosis? testUsedInDiagnosis;
  final int? daysFromSymptomsToDiagnosis;
  final int? numberPcrPerformed;
  final int? timeFromDiagnosisToNegativeOrDischarge;
  final Contagion? formOfContagion;
  final bool? wasHePartOfAnEvent;
  final bool? didHeWorkInTheAttentionToPositiveCases;
  final String? hospitalizationTime;
  final List<IncomeModel>? incomes;
  final int? contactsFirstLevel;
  final int? contactsFirstLevelPositives;
  final int? contactsSecondLevel;
  final int? contactsSecondLevelPositives;
  final int? contactsThirdLevel;
  final int? contactsThirdLevelPositives;
  final List<Treatment>? treatmentsReceived;
  final List<String>? antibiotics;
  final List<Prophylaxis>? prophylaxis;
  final String? anotherVaccineAgainstCovid;
  final List<Aftermath>? aftermath;
  final List<String>? othersAftermath;

  static DischargeDataPutModel fromJson(Map<String, dynamic> json) =>
      _$DischargeDataPutModelFromJson(json);

  Map<String, dynamic> toJson() => _$DischargeDataPutModelToJson(this);
}
