// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discharge_of_positive_cases_of_covid19.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DischargeOfPositiveCasesOfCovid19Model
    _$DischargeOfPositiveCasesOfCovid19ModelFromJson(
        Map<String, dynamic> json) {
  return DischargeOfPositiveCasesOfCovid19Model(
    detectionDate: json['detectionDate'] == null
        ? null
        : DateTime.parse(json['detectionDate'] as String),
    symptoms:
        (json['symptoms'] as List<dynamic>?)?.map((e) => e as String).toList(),
    durationOfSymptoms: json['durationOfSymptoms'] as int?,
    diagnosisWay:
        _$enumDecodeNullable(_$DiagnosisWayEnumMap, json['diagnosisWay']),
    testUsedInDiagnosis: _$enumDecodeNullable(
        _$TestDiagnosisEnumMap, json['testUsedInDiagnosis']),
    daysFromSymptomsToDiagnosis: json['daysFromSymptomsToDiagnosis'] as int?,
    numberPcrPerformed: json['numberPcrPerformed'] as int?,
    timeFromDiagnosisToNegativeOrDischarge:
        json['timeFromDiagnosisToNegativeOrDischarge'] as int?,
    formOfContagion:
        _$enumDecodeNullable(_$ContagionEnumMap, json['formOfContagion']),
    wasHePartOfAnEvent: json['wasHePartOfAnEvent'] as bool?,
    didHeWorkInTheAttentionToPositiveCases:
        json['didHeWorkInTheAttentionToPositiveCases'] as bool?,
    hospitalizationTime: json['hospitalizationTime'] as String?,
    incomes: (json['incomes'] as List<dynamic>?)
        ?.map((e) => IncomeModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    contactsFirstLevel: json['contactsFirstLevel'] as int?,
    contactsFirstLevelPositives: json['contactsFirstLevelPositives'] as int?,
    contactsSecondLevel: json['contactsSecondLevel'] as int?,
    contactsSecondLevelPositives: json['contactsSecondLevelPositives'] as int?,
    contactsThirdLevel: json['contactsThirdLevel'] as int?,
    contactsThirdLevelPositives: json['contactsThirdLevelPositives'] as int?,
    treatmentsReceived: (json['treatmentsReceived'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$TreatmentEnumMap, e))
        .toList(),
    antibiotics: (json['antibiotics'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    prophylaxis: (json['prophylaxis'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$ProphylaxisEnumMap, e))
        .toList(),
    anotherVaccineAgainstCovid: json['anotherVaccineAgainstCovid'] as String?,
    aftermath: (json['aftermath'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$AftermathEnumMap, e))
        .toList(),
    othersAftermath: (json['othersAftermath'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$DischargeOfPositiveCasesOfCovid19ModelToJson(
        DischargeOfPositiveCasesOfCovid19Model instance) =>
    <String, dynamic>{
      'detectionDate': instance.detectionDate?.toIso8601String(),
      'symptoms': instance.symptoms,
      'durationOfSymptoms': instance.durationOfSymptoms,
      'diagnosisWay': _$DiagnosisWayEnumMap[instance.diagnosisWay],
      'testUsedInDiagnosis':
          _$TestDiagnosisEnumMap[instance.testUsedInDiagnosis],
      'daysFromSymptomsToDiagnosis': instance.daysFromSymptomsToDiagnosis,
      'numberPcrPerformed': instance.numberPcrPerformed,
      'timeFromDiagnosisToNegativeOrDischarge':
          instance.timeFromDiagnosisToNegativeOrDischarge,
      'formOfContagion': _$ContagionEnumMap[instance.formOfContagion],
      'wasHePartOfAnEvent': instance.wasHePartOfAnEvent,
      'didHeWorkInTheAttentionToPositiveCases':
          instance.didHeWorkInTheAttentionToPositiveCases,
      'hospitalizationTime': instance.hospitalizationTime,
      'incomes': instance.incomes?.map((e) => e.toJson()).toList(),
      'contactsFirstLevel': instance.contactsFirstLevel,
      'contactsFirstLevelPositives': instance.contactsFirstLevelPositives,
      'contactsSecondLevel': instance.contactsSecondLevel,
      'contactsSecondLevelPositives': instance.contactsSecondLevelPositives,
      'contactsThirdLevel': instance.contactsThirdLevel,
      'contactsThirdLevelPositives': instance.contactsThirdLevelPositives,
      'treatmentsReceived': instance.treatmentsReceived
          ?.map((e) => _$TreatmentEnumMap[e])
          .toList(),
      'antibiotics': instance.antibiotics,
      'prophylaxis':
          instance.prophylaxis?.map((e) => _$ProphylaxisEnumMap[e]).toList(),
      'anotherVaccineAgainstCovid': instance.anotherVaccineAgainstCovid,
      'aftermath':
          instance.aftermath?.map((e) => _$AftermathEnumMap[e]).toList(),
      'othersAftermath': instance.othersAftermath,
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
