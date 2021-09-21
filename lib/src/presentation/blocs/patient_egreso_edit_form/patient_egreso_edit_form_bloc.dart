import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:injectable/injectable.dart';

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
    @factoryParam this.initialDischargeData,
  );

  final DischargeDataEntity? initialDischargeData;

  @override
  InputBloc<List<Aftermath>?> get aftermath => InputBloc(
        pureValue: initialDischargeData?.aftermath,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<String?> get anotherVaccineAgainstCovid => InputBloc(
        pureValue: initialDischargeData?.anotherVaccineAgainstCovid,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<List<String>?> get antibiotics => InputBloc(
        pureValue: initialDischargeData?.antibiotics,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get contactsFirstLevel => InputBloc(
        pureValue: initialDischargeData?.contactsFirstLevel,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get contactsFirstLevelPositives => InputBloc(
        pureValue: initialDischargeData?.contactsFirstLevelPositives,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get contactsSecondLevel => InputBloc(
        pureValue: initialDischargeData?.contactsSecondLevel,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get contactsSecondLevelPositives => InputBloc(
        pureValue: initialDischargeData?.contactsSecondLevelPositives,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get contactsThirdLevel => InputBloc(
        pureValue: initialDischargeData?.contactsThirdLevel,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get contactsThirdLevelPositives => InputBloc(
        pureValue: initialDischargeData?.contactsThirdLevelPositives,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get daysFromSymptomsToDiagnosis => InputBloc(
        pureValue: initialDischargeData?.daysFromSymptomsToDiagnosis,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<DateTime?> get detectionDate => InputBloc(
        pureValue: initialDischargeData?.detectionDate,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<DiagnosisWay?> get diagnosisWay => InputBloc(
        pureValue: initialDischargeData?.diagnosisWay,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<bool?> get didHeWorkInTheAttentionToPositiveCases => InputBloc(
        pureValue: initialDischargeData?.didHeWorkInTheAttentionToPositiveCases,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get durationOfSymptoms => InputBloc(
        pureValue: initialDischargeData?.durationOfSymptoms,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<Contagion?> get formOfContagion => InputBloc(
        pureValue: initialDischargeData?.formOfContagion,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<String?> get hospitalizationTime => InputBloc(
        pureValue: initialDischargeData?.hospitalizationTime,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<List<IncomeEntity>?> get incomes => InputBloc(
        pureValue: initialDischargeData?.incomes,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get numberPcrPerformed => InputBloc(
        pureValue: initialDischargeData?.numberPcrPerformed,
        validators: [],
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
  InputBloc<List<String>?> get othersAftermath => InputBloc(
        pureValue: initialDischargeData?.othersAftermath,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<List<Prophylaxis>?> get prophylaxis => InputBloc(
        pureValue: initialDischargeData?.prophylaxis,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<List<String>?> get symptoms => InputBloc(
        pureValue: initialDischargeData?.symptoms,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<TestDiagnosis?> get testUsedInDiagnosis => InputBloc(
        pureValue: initialDischargeData?.testUsedInDiagnosis,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<int?> get timeFromDiagnosisToNegativeOrDischarge => InputBloc(
        pureValue: initialDischargeData?.timeFromDiagnosisToNegativeOrDischarge,
        validators: [
          IntValidator.nonNegative,
        ],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<List<Treatment>?> get treatmentsReceived => InputBloc(
        pureValue: initialDischargeData?.treatmentsReceived,
        validators: [],
        validationType: ValidationType.explicit,
      );

  @override
  InputBloc<bool?> get wasHePartOfAnEvent => InputBloc(
        pureValue: initialDischargeData?.wasHePartOfAnEvent,
        validators: [],
        validationType: ValidationType.explicit,
      );
}
