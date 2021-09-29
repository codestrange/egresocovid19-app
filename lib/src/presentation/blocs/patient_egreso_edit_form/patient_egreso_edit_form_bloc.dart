import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:injectable/injectable.dart';
import 'package:lyform_validators/lyform_validators.dart';

export 'patient_egreso_edit_form_bloc_texts.dart';

abstract class IPatientEgresoEditFormBloc
    extends FormBloc<DischargeDataEntity, ErrorEntity> {
  InputBloc<DateTime?> get detectionDate;
  InputBloc<List<String>?> get symptoms;
  InputBloc<int?> get durationOfSymptoms;
  InputBloc<DiagnosisWay?> get diagnosisWay;
  InputBloc<TestDiagnosis?> get testUsedInDiagnosis;
  InputBloc<int?> get daysFromSymptomsToDiagnosis;
  InputBloc<int?> get numberPcrPerformed;
  InputBloc<int?> get timeFromDiagnosisToNegativeOrDischarge;
  InputBloc<Contagion?> get formOfContagion;
  InputBloc<bool?> get wasHePartOfAnEvent;
  InputBloc<bool?> get didHeWorkInTheAttentionToPositiveCases;
  InputBloc<String?> get hospitalizationTime;
  InputBloc<List<IncomeEntity>?> get incomes;
  InputBloc<int?> get contactsFirstLevel;
  InputBloc<int?> get contactsFirstLevelPositives;
  InputBloc<int?> get contactsSecondLevel;
  InputBloc<int?> get contactsSecondLevelPositives;
  InputBloc<int?> get contactsThirdLevel;
  InputBloc<int?> get contactsThirdLevelPositives;
  InputBloc<List<Treatment>?> get treatmentsReceived;
  InputBloc<List<String>?> get antibiotics;
  InputBloc<List<Prophylaxis>?> get prophylaxis;
  InputBloc<String?> get anotherVaccineAgainstCovid;
  InputBloc<List<Aftermath>?> get aftermath;
  InputBloc<List<String>?> get othersAftermath;

  @override
  List<InputBloc> get inputs => [
        detectionDate,
        symptoms,
        durationOfSymptoms,
        diagnosisWay,
        testUsedInDiagnosis,
        daysFromSymptomsToDiagnosis,
        numberPcrPerformed,
        timeFromDiagnosisToNegativeOrDischarge,
        formOfContagion,
        wasHePartOfAnEvent,
        didHeWorkInTheAttentionToPositiveCases,
        hospitalizationTime,
        incomes,
        contactsFirstLevel,
        contactsFirstLevelPositives,
        contactsSecondLevel,
        contactsSecondLevelPositives,
        contactsThirdLevel,
        contactsThirdLevelPositives,
        treatmentsReceived,
        antibiotics,
        prophylaxis,
        anotherVaccineAgainstCovid,
        aftermath,
        othersAftermath,
      ];
}

@Injectable(as: IPatientEgresoEditFormBloc)
class PatientEgresoEditFormBloc extends IPatientEgresoEditFormBloc {
  PatientEgresoEditFormBloc(
    @factoryParam DischargeDataEntity? initialDischargeData,
    @factoryParam PatientEgresoEditFormBlocTexts? texts,
  )   : assert(initialDischargeData != null),
        assert(texts != null),
        initialDischargeData = initialDischargeData!,
        texts = texts!;

  final DischargeDataEntity initialDischargeData;
  final PatientEgresoEditFormBlocTexts texts;

  @override
  late final InputBloc<List<Aftermath>?> aftermath = InputBloc(
    pureValue: initialDischargeData.aftermath,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<String?> anotherVaccineAgainstCovid = InputBloc(
    pureValue: initialDischargeData.anotherVaccineAgainstCovid,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<List<String>?> antibiotics = InputBloc(
    pureValue: initialDischargeData.antibiotics,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<int?> contactsFirstLevel = InputBloc(
    pureValue: initialDischargeData.contactsFirstLevel,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<int?> contactsFirstLevelPositives = InputBloc(
    pureValue: initialDischargeData.contactsFirstLevelPositives,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<int?> contactsSecondLevel = InputBloc(
    pureValue: initialDischargeData.contactsSecondLevel,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<int?> contactsSecondLevelPositives = InputBloc(
    pureValue: initialDischargeData.contactsSecondLevelPositives,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<int?> contactsThirdLevel = InputBloc(
    pureValue: initialDischargeData.contactsThirdLevel,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<int?> contactsThirdLevelPositives = InputBloc(
    pureValue: initialDischargeData.contactsThirdLevelPositives,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<int?> daysFromSymptomsToDiagnosis = InputBloc(
    pureValue: initialDischargeData.daysFromSymptomsToDiagnosis,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<DateTime?> detectionDate = InputBloc(
    pureValue: initialDischargeData.detectionDate,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<DiagnosisWay?> diagnosisWay = InputBloc(
    pureValue: initialDischargeData.diagnosisWay,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<bool?> didHeWorkInTheAttentionToPositiveCases =
      InputBloc(
    pureValue: initialDischargeData.didHeWorkInTheAttentionToPositiveCases,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<int?> durationOfSymptoms = InputBloc(
    pureValue: initialDischargeData.durationOfSymptoms,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<Contagion?> formOfContagion = InputBloc(
    pureValue: initialDischargeData.formOfContagion,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<String?> hospitalizationTime = InputBloc(
    pureValue: initialDischargeData.hospitalizationTime,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<List<IncomeEntity>?> incomes = InputBloc(
    pureValue: initialDischargeData.incomes,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<int?> numberPcrPerformed = InputBloc(
    pureValue: initialDischargeData.numberPcrPerformed,
    validationType: ValidationType.explicit,
  );

  @override
  Future<FormBlocState<DischargeDataEntity, ErrorEntity>> onSubmmit() async {
    return FormSuccessState(
      DischargeDataEntity(
        detectionDate: detectionDate.state.value,
        symptoms: symptoms.state.value,
        durationOfSymptoms: durationOfSymptoms.state.value,
        diagnosisWay: diagnosisWay.state.value,
        testUsedInDiagnosis: testUsedInDiagnosis.state.value,
        daysFromSymptomsToDiagnosis: daysFromSymptomsToDiagnosis.state.value,
        numberPcrPerformed: numberPcrPerformed.state.value,
        timeFromDiagnosisToNegativeOrDischarge:
            timeFromDiagnosisToNegativeOrDischarge.state.value,
        formOfContagion: formOfContagion.state.value,
        wasHePartOfAnEvent: wasHePartOfAnEvent.state.value,
        didHeWorkInTheAttentionToPositiveCases:
            didHeWorkInTheAttentionToPositiveCases.state.value,
        hospitalizationTime: hospitalizationTime.state.value,
        incomes: incomes.state.value,
        contactsFirstLevel: contactsFirstLevel.state.value,
        contactsFirstLevelPositives: contactsFirstLevelPositives.state.value,
        contactsSecondLevel: contactsSecondLevel.state.value,
        contactsSecondLevelPositives: contactsSecondLevelPositives.state.value,
        contactsThirdLevel: contactsThirdLevel.state.value,
        contactsThirdLevelPositives: contactsThirdLevelPositives.state.value,
        treatmentsReceived: treatmentsReceived.state.value,
        antibiotics: antibiotics.state.value,
        prophylaxis: prophylaxis.state.value,
        anotherVaccineAgainstCovid: anotherVaccineAgainstCovid.state.value,
        aftermath: aftermath.state.value,
        othersAftermath: othersAftermath.state.value,
      ),
    );
  }

  @override
  late final InputBloc<List<String>?> othersAftermath = InputBloc(
    pureValue: initialDischargeData.othersAftermath,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<List<Prophylaxis>?> prophylaxis = InputBloc(
    pureValue: initialDischargeData.prophylaxis,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<List<String>?> symptoms = InputBloc(
    pureValue: initialDischargeData.symptoms,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<TestDiagnosis?> testUsedInDiagnosis = InputBloc(
    pureValue: initialDischargeData.testUsedInDiagnosis,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<int?> timeFromDiagnosisToNegativeOrDischarge = InputBloc(
    pureValue: initialDischargeData.timeFromDiagnosisToNegativeOrDischarge,
    validationType: ValidationType.explicit,
    validator: IntNonNegative(texts.validatorIntegerNonNegative),
  );

  @override
  late final InputBloc<List<Treatment>?> treatmentsReceived = InputBloc(
    pureValue: initialDischargeData.treatmentsReceived,
    validationType: ValidationType.explicit,
  );

  @override
  late final InputBloc<bool?> wasHePartOfAnEvent = InputBloc(
    pureValue: initialDischargeData.wasHePartOfAnEvent,
    validationType: ValidationType.explicit,
  );
}
