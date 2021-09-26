// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discharge_data_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DischargeDataGetModel _$DischargeDataGetModelFromJson(
        Map<String, dynamic> json) =>
    DischargeDataGetModel(
      detectionDate: json['detectionDate'] == null
          ? null
          : DateTime.parse(json['detectionDate'] as String),
      symptoms: (json['symptoms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
      contactsSecondLevelPositives:
          json['contactsSecondLevelPositives'] as int?,
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

Map<String, dynamic> _$DischargeDataGetModelToJson(
        DischargeDataGetModel instance) =>
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
  DiagnosisWay.GuardCorps: 0,
  DiagnosisWay.FocusControl: 1,
};

const _$TestDiagnosisEnumMap = {
  TestDiagnosis.AntigenTest: 0,
  TestDiagnosis.Biosensor: 1,
  TestDiagnosis.PCR: 2,
  TestDiagnosis.IgMIgGAntibodyTest: 3,
};

const _$ContagionEnumMap = {
  Contagion.Traveler: 0,
  Contagion.Contact: 1,
  Contagion.Inderterminate: 2,
};

const _$TreatmentEnumMap = {
  Treatment.Herferon: 0,
  Treatment.InterferonGeneric: 1,
  Treatment.Jusvinza: 2,
  Treatment.Heberferon: 3,
  Treatment.FraxiparinLowMolecularWeightHeparins: 4,
  Treatment.Nasalferon: 5,
  Treatment.Prednisone: 6,
  Treatment.Prevengovir: 7,
  Treatment.Betamethasone: 8,
  Treatment.Italizumab: 9,
};

const _$ProphylaxisEnumMap = {
  Prophylaxis.Prevengovir: 0,
  Prophylaxis.Vimang: 1,
  Prophylaxis.Moringa: 2,
  Prophylaxis.BiomodulinT: 3,
  Prophylaxis.VitaminC: 4,
  Prophylaxis.Polivit: 5,
  Prophylaxis.Turmeric: 6,
  Prophylaxis.Soverana2AndPlus: 7,
  Prophylaxis.Honey: 8,
  Prophylaxis.VitaminA: 9,
  Prophylaxis.Ginger: 10,
  Prophylaxis.SoveranaPlus: 11,
  Prophylaxis.Abdala: 12,
  Prophylaxis.Covid19Previously: 13,
};

const _$AftermathEnumMap = {
  Aftermath.Fatigue: 0,
  Aftermath.Headache: 1,
  Aftermath.Alopecia: 2,
  Aftermath.RespiratorySymptoms: 3,
  Aftermath.MuscleBoneNeuropathicPain: 4,
  Aftermath.PsychologicalPsychiatricDisorders: 5,
  Aftermath.SexualDisorders: 6,
  Aftermath.SleepDisorder: 7,
  Aftermath.PersistenceOfLossOfSmell: 8,
  Aftermath.PersistenceOfLossOfAppetite: 9,
  Aftermath.GastrointestinalSymptoms: 10,
  Aftermath.Dizziness: 11,
  Aftermath.DesiresToVomit: 12,
  Aftermath.Others: 13,
};
