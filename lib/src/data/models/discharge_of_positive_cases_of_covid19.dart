import 'package:egresocovid19/src/data/models/models.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discharge_of_positive_cases_of_covid19.g.dart';

@JsonSerializable(explicitToJson: true)
class DischargeOfPositiveCasesOfCovid19Model {
  DischargeOfPositiveCasesOfCovid19Model({
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

  factory DischargeOfPositiveCasesOfCovid19Model.fromJson(
          Map<String, dynamic> json) =>
      _$DischargeOfPositiveCasesOfCovid19ModelFromJson(json);

  @JsonKey(name: 'detection_date')
  DateTime? detectionDate;
  List<String>? symptoms;
  @JsonKey(name: 'duration_of_symptoms')
  int? durationOfSymptoms;
  @JsonKey(name: 'diagnosis_way')
  DiagnosisWay? diagnosisWay;
  @JsonKey(name: 'test_used_in_diagnosis')
  TestDiagnosis? testUsedInDiagnosis;
  @JsonKey(name: 'days_from_symptoms_to_diagnosis')
  int? daysFromSymptomsToDiagnosis;
  @JsonKey(name: 'number_pcr_performed')
  int? numberPcrPerformed;
  @JsonKey(name: 'time_from_diagnosis_to_negative_or_discharge')
  int? timeFromDiagnosisToNegativeOrDischarge;
  @JsonKey(name: 'form_of_contagion')
  Contagion? formOfContagion;
  @JsonKey(name: 'was_he_part_of_an_event')
  bool? wasHePartOfAnEvent;
  @JsonKey(name: 'did_he_work_in_the_attention_to_positive_cases')
  bool? didHeWorkInTheAttentionToPositiveCases;
  @JsonKey(name: 'hospitalization_time')
  String? hospitalizationTime;
  List<IncomeModel>? incomes;
  @JsonKey(name: 'contacts_first_level')
  int? contactsFirstLevel;
  @JsonKey(name: 'contacts_first_level_positives')
  int? contactsFirstLevelPositives;
  @JsonKey(name: 'contacts_second_level')
  int? contactsSecondLevel;
  @JsonKey(name: 'contacts_second_level_positives')
  int? contactsSecondLevelPositives;
  @JsonKey(name: 'contacts_third_level')
  int? contactsThirdLevel;
  @JsonKey(name: 'contacts_third_level_positives')
  int? contactsThirdLevelPositives;
  @JsonKey(name: 'treatments_received')
  List<Treatment>? treatmentsReceived;
  List<String>? antibiotics;
  List<Prophylaxis>? prophylaxis;
  @JsonKey(name: 'another_vaccine_against_covid')
  String? anotherVaccineAgainstCovid;
  List<Aftermath>? aftermath;
  @JsonKey(name: 'others_aftermath')
  List<String>? othersAftermath;

  Map<String, dynamic> toJson() =>
      _$DischargeOfPositiveCasesOfCovid19ModelToJson(this);
}
