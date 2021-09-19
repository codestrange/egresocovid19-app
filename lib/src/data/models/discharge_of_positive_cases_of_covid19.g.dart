// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discharge_of_positive_cases_of_covid19.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DischargeOfPositiveCasesOfCovid19Model
    _$DischargeOfPositiveCasesOfCovid19ModelFromJson(
        Map<String, dynamic> json) {
  return DischargeOfPositiveCasesOfCovid19Model(
    detectionDate: json['detection_date'] == null
        ? null
        : DateTime.parse(json['detection_date'] as String),
    symptoms:
        (json['symptoms'] as List<dynamic>?)?.map((e) => e as String).toList(),
    durationOfSymptoms: json['duration_of_symptoms'] as int?,
    diagnosisWay:
        _$enumDecodeNullable(_$DiagnosisWayEnumMap, json['diagnosis_way']),
    testUsedInDiagnosis: _$enumDecodeNullable(
        _$TestDiagnosisEnumMap, json['test_used_in_diagnosis']),
    daysFromSymptomsToDiagnosis:
        json['days_from_symptoms_to_diagnosis'] as int?,
    numberPcrPerformed: json['number_pcr_performed'] as int?,
    timeFromDiagnosisToNegativeOrDischarge:
        json['time_from_diagnosis_to_negative_or_discharge'] as int?,
    formOfContagion:
        _$enumDecodeNullable(_$ContagionEnumMap, json['form_of_contagion']),
    wasHePartOfAnEvent: json['was_he_part_of_an_event'] as bool?,
    didHeWorkInTheAttentionToPositiveCases:
        json['did_he_work_in_the_attention_to_positive_cases'] as bool?,
    hospitalizationTime: json['hospitalization_time'] as String?,
    contactsFirstLevel: json['contacts_first_level'] as int?,
    contactsFirstLevelPositives: json['contacts_first_level_positives'] as int?,
    contactsSecondLevel: json['contacts_second_level'] as int?,
    contactsSecondLevelPositives:
        json['contacts_second_level_positives'] as int?,
    contactsThirdLevel: json['contacts_third_level'] as int?,
    contactsThirdLevelPositives: json['contacts_third_level_positives'] as int?,
    treatmentsReceived: (json['treatments_received'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$TreatmentEnumMap, e))
        .toList(),
    antibiotics: (json['antibiotics'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    prophylaxis: (json['prophylaxis'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$ProphylaxisEnumMap, e))
        .toList(),
    anotherVaccineAgainstCovid:
        json['another_vaccine_against_covid'] as String?,
    aftermath: (json['aftermath'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$AftermathEnumMap, e))
        .toList(),
    othersAftermath: (json['others_aftermath'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  )..incomes = (json['incomes'] as List<dynamic>?)
      ?.map((e) => IncomeModel.fromJson(e as Map<String, dynamic>))
      .toList();
}

Map<String, dynamic> _$DischargeOfPositiveCasesOfCovid19ModelToJson(
        DischargeOfPositiveCasesOfCovid19Model instance) =>
    <String, dynamic>{
      'detection_date': instance.detectionDate?.toIso8601String(),
      'symptoms': instance.symptoms,
      'duration_of_symptoms': instance.durationOfSymptoms,
      'diagnosis_way': _$DiagnosisWayEnumMap[instance.diagnosisWay],
      'test_used_in_diagnosis':
          _$TestDiagnosisEnumMap[instance.testUsedInDiagnosis],
      'days_from_symptoms_to_diagnosis': instance.daysFromSymptomsToDiagnosis,
      'number_pcr_performed': instance.numberPcrPerformed,
      'time_from_diagnosis_to_negative_or_discharge':
          instance.timeFromDiagnosisToNegativeOrDischarge,
      'form_of_contagion': _$ContagionEnumMap[instance.formOfContagion],
      'was_he_part_of_an_event': instance.wasHePartOfAnEvent,
      'did_he_work_in_the_attention_to_positive_cases':
          instance.didHeWorkInTheAttentionToPositiveCases,
      'hospitalization_time': instance.hospitalizationTime,
      'incomes': instance.incomes?.map((e) => e.toJson()).toList(),
      'contacts_first_level': instance.contactsFirstLevel,
      'contacts_first_level_positives': instance.contactsFirstLevelPositives,
      'contacts_second_level': instance.contactsSecondLevel,
      'contacts_second_level_positives': instance.contactsSecondLevelPositives,
      'contacts_third_level': instance.contactsThirdLevel,
      'contacts_third_level_positives': instance.contactsThirdLevelPositives,
      'treatments_received': instance.treatmentsReceived
          ?.map((e) => _$TreatmentEnumMap[e])
          .toList(),
      'antibiotics': instance.antibiotics,
      'prophylaxis':
          instance.prophylaxis?.map((e) => _$ProphylaxisEnumMap[e]).toList(),
      'another_vaccine_against_covid': instance.anotherVaccineAgainstCovid,
      'aftermath':
          instance.aftermath?.map((e) => _$AftermathEnumMap[e]).toList(),
      'others_aftermath': instance.othersAftermath,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$DiagnosisWayEnumMap = {
  DiagnosisWay.GuardCorps: 'GuardCorps',
  DiagnosisWay.FocusControl: 'FocusControl',
};

const _$TestDiagnosisEnumMap = {
  TestDiagnosis.AntigenTest: 'AntigenTest',
  TestDiagnosis.Biosensor: 'Biosensor',
  TestDiagnosis.PCR: 'PCR',
  TestDiagnosis.IgMIgGAntibodyTest: 'IgMIgGAntibodyTest',
};

const _$ContagionEnumMap = {
  Contagion.Traveler: 'Traveler',
  Contagion.Contact: 'Contact',
  Contagion.Inderterminate: 'Inderterminate',
};

const _$TreatmentEnumMap = {
  Treatment.Herferon: 'Herferon',
  Treatment.InterferonGeneric: 'InterferonGeneric',
  Treatment.Jusvinza: 'Jusvinza',
  Treatment.Heberferon: 'Heberferon',
  Treatment.FraxiparinLowMolecularWeightHeparins:
      'FraxiparinLowMolecularWeightHeparins',
  Treatment.Nasalferon: 'Nasalferon',
  Treatment.Prednisone: 'Prednisone',
  Treatment.Prevengovir: 'Prevengovir',
  Treatment.Betamethasone: 'Betamethasone',
  Treatment.Italizumab: 'Italizumab',
  Treatment.Antibiotics: 'Antibiotics',
};

const _$ProphylaxisEnumMap = {
  Prophylaxis.Prevengovir: 'Prevengovir',
  Prophylaxis.Vimang: 'Vimang',
  Prophylaxis.Moringa: 'Moringa',
  Prophylaxis.BiomodulinT: 'BiomodulinT',
  Prophylaxis.VitaminC: 'VitaminC',
  Prophylaxis.Polivit: 'Polivit',
  Prophylaxis.Turmeric: 'Turmeric',
  Prophylaxis.Soverana2AndPlus: 'Soverana2AndPlus',
  Prophylaxis.Honey: 'Honey',
  Prophylaxis.VitaminA: 'VitaminA',
  Prophylaxis.Ginger: 'Ginger',
  Prophylaxis.SoveranaPlus: 'SoveranaPlus',
  Prophylaxis.Abdala: 'Abdala',
  Prophylaxis.Covid19Previously: 'Covid19Previously',
  Prophylaxis.AnotherVaccineAgainstCovid: 'AnotherVaccineAgainstCovid',
};

const _$AftermathEnumMap = {
  Aftermath.Fatigue: 'Fatigue',
  Aftermath.Headache: 'Headache',
  Aftermath.Alopecia: 'Alopecia',
  Aftermath.RespiratorySymptoms: 'RespiratorySymptoms',
  Aftermath.MuscleBoneNeuropathicPain: 'MuscleBoneNeuropathicPain',
  Aftermath.PsychologicalPsychiatricDisorders:
      'PsychologicalPsychiatricDisorders',
  Aftermath.SexualDisorders: 'SexualDisorders',
  Aftermath.SleepDisorder: 'SleepDisorder',
  Aftermath.PersistenceOfLossOfSmell: 'PersistenceOfLossOfSmell',
  Aftermath.PersistenceOfLossOfAppetite: 'PersistenceOfLossOfAppetite',
  Aftermath.GastrointestinalSymptoms: 'GastrointestinalSymptoms',
  Aftermath.Dizziness: 'Dizziness',
  Aftermath.DesiresToVomit: 'DesiresToVomit',
  Aftermath.Others: 'Others',
};
