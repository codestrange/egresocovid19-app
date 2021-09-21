import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:injectable/injectable.dart';

abstract class IPatientEgresoEditFormBloc extends FormBloc<void, ErrorEntity> {
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
  @override
  // TODO: implement aftermath
  InputBloc<List<Aftermath>?> get aftermath => throw UnimplementedError();

  @override
  // TODO: implement anotherVaccineAgainstCovid
  InputBloc<String?> get anotherVaccineAgainstCovid =>
      throw UnimplementedError();

  @override
  // TODO: implement antibiotics
  InputBloc<List<String>?> get antibiotics => throw UnimplementedError();

  @override
  // TODO: implement contactsFirstLevel
  InputBloc<int?> get contactsFirstLevel => throw UnimplementedError();

  @override
  // TODO: implement contactsFirstLevelPositives
  InputBloc<int?> get contactsFirstLevelPositives => throw UnimplementedError();

  @override
  // TODO: implement contactsSecondLevel
  InputBloc<int?> get contactsSecondLevel => throw UnimplementedError();

  @override
  // TODO: implement contactsSecondLevelPositives
  InputBloc<int?> get contactsSecondLevelPositives =>
      throw UnimplementedError();

  @override
  // TODO: implement contactsThirdLevel
  InputBloc<int?> get contactsThirdLevel => throw UnimplementedError();

  @override
  // TODO: implement contactsThirdLevelPositives
  InputBloc<int?> get contactsThirdLevelPositives => throw UnimplementedError();

  @override
  // TODO: implement daysFromSymptomsToDiagnosis
  InputBloc<int?> get daysFromSymptomsToDiagnosis => throw UnimplementedError();

  @override
  // TODO: implement detectionDate
  InputBloc<DateTime?> get detectionDate => throw UnimplementedError();

  @override
  // TODO: implement diagnosisWay
  InputBloc<DiagnosisWay?> get diagnosisWay => throw UnimplementedError();

  @override
  // TODO: implement didHeWorkInTheAttentionToPositiveCases
  InputBloc<bool?> get didHeWorkInTheAttentionToPositiveCases =>
      throw UnimplementedError();

  @override
  // TODO: implement durationOfSymptoms
  InputBloc<int?> get durationOfSymptoms => throw UnimplementedError();

  @override
  // TODO: implement formOfContagion
  InputBloc<Contagion?> get formOfContagion => throw UnimplementedError();

  @override
  // TODO: implement hospitalizationTime
  InputBloc<String?> get hospitalizationTime => throw UnimplementedError();

  @override
  // TODO: implement incomes
  InputBloc<List<IncomeEntity>?> get incomes => throw UnimplementedError();

  @override
  // TODO: implement numberPcrPerformed
  InputBloc<int?> get numberPcrPerformed => throw UnimplementedError();

  @override
  Future<FormBlocState<void, ErrorEntity>> onSubmmit() {
    // TODO: implement onSubmmit
    throw UnimplementedError();
  }

  @override
  // TODO: implement othersAftermath
  InputBloc<List<String>?> get othersAftermath => throw UnimplementedError();

  @override
  // TODO: implement prophylaxis
  InputBloc<List<Prophylaxis>?> get prophylaxis => throw UnimplementedError();

  @override
  // TODO: implement symptoms
  InputBloc<List<String>?> get symptoms => throw UnimplementedError();

  @override
  // TODO: implement testUsedInDiagnosis
  InputBloc<TestDiagnosis?> get testUsedInDiagnosis =>
      throw UnimplementedError();

  @override
  // TODO: implement timeFromDiagnosisToNegativeOrDischarge
  InputBloc<int?> get timeFromDiagnosisToNegativeOrDischarge =>
      throw UnimplementedError();

  @override
  // TODO: implement treatmentsReceived
  InputBloc<List<Treatment>?> get treatmentsReceived =>
      throw UnimplementedError();

  @override
  // TODO: implement wasHePartOfAnEvent
  InputBloc<bool?> get wasHePartOfAnEvent => throw UnimplementedError();
}
