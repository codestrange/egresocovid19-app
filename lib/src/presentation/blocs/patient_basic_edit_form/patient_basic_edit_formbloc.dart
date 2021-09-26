import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit_form/patient_basic_edit_formbloc_texts.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:injectable/injectable.dart';
import 'package:lyform_validators/lyform_validators.dart';

export 'patient_basic_edit_formbloc_texts.dart';

abstract class IPatientBasicEditFormBloc extends FormBloc<Unit, ErrorEntity> {
  InputBloc<String> get id;
  InputBloc<String?> get firstName;
  InputBloc<String?> get lastName;
  InputBloc<String?> get ci;
  InputBloc<String?> get age;
  InputBloc<Sex?> get sex;
  InputBloc<SkinColor?> get skinColor;
  InputBloc<BloodType?> get bloodType;
  InputBloc<String?> get address;
  InputBloc<ProvinceEntity?> get province;
  InputBloc<MunicipalityEntity?> get municipality;
  InputBloc<String?> get polyclinic;
  InputBloc<String?> get surgery;
  InputBloc<String?> get popularCouncil;
  InputBloc<String?> get neighborhood;
  InputBloc<String?> get blockNumber;
  InputBloc<List<PathologicalEntity>> get personalPathologicalHistory;
  InputBloc<List<PathologicalEntity>> get familyPathologicalHistory;

  @override
  List<InputBloc> get inputs => [
        id,
        firstName,
        lastName,
        ci,
        age,
        sex,
        skinColor,
        bloodType,
        address,
        province,
        municipality,
        polyclinic,
        surgery,
        popularCouncil,
        neighborhood,
        blockNumber,
        personalPathologicalHistory,
        familyPathologicalHistory
      ];
}

@Injectable(as: IPatientBasicEditFormBloc)
class PatientBasicEditFormBloc extends IPatientBasicEditFormBloc {
  PatientBasicEditFormBloc({
    required this.patientService,
    @factoryParam PatientEditFetchData? patientEditFetchData,
    @factoryParam PatientBasicEditFormBlocTexts? texts,
  })  : assert(patientEditFetchData != null),
        assert(texts != null),
        patientFetchData = patientEditFetchData!,
        texts = texts!,
        super();

  final PatientEditFetchData patientFetchData;
  final PatientBasicEditFormBlocTexts texts;

  PatientGetDetailEntity get patientEntity =>
      patientFetchData.patientGetDetailEntity;

  @override
  late final InputBloc<String> id = InputBloc<String>(
    pureValue: patientEntity.id,
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  @override
  late final InputBloc<String?> address = InputBloc<String?>(
    pureValue: patientEntity.address,
  );

  @override
  late final InputBloc<String?> age = InputBloc<String?>(
    pureValue: patientEntity.age.toString(),
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.isNumeric(
        errorMessage: texts.validatorNumber,
      ),
    ],
  );

  @override
  late final InputBloc<String?> blockNumber = InputBloc<String?>(
    pureValue: patientEntity.blockNumber.toString(),
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.isInt(
        errorMessage: texts.validatorInteger,
      ),
    ],
  );

  @override
  late final InputBloc<BloodType?> bloodType = InputBloc<BloodType?>(
    pureValue: patientEntity.bloodType,
  );

  @override
  late final InputBloc<String?> ci = InputBloc<String?>(
    pureValue: patientEntity.ci,
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.isInt(
        errorMessage: texts.validatorInteger,
      ),
      StringValidator.lengthGreaterThan(
        len: 10,
        errorMessage: texts.validatorLength,
      ),
      StringValidator.lengthLowerThan(
        len: 12,
        errorMessage: texts.validatorLength,
      ),
    ],
  );

  @override
  late final InputBloc<List<PathologicalEntity>> familyPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: patientEntity.familyPathologicalHistory,
  );

  @override
  late final InputBloc<ProvinceEntity?> province = InputBloc<ProvinceEntity?>(
    pureValue: patientFetchData.province,
  );

  @override
  late final InputBloc<MunicipalityEntity?> municipality =
      InputBloc<MunicipalityEntity?>(
    pureValue: patientFetchData.municipality,
  );

  @override
  late final InputBloc<String?> neighborhood = InputBloc<String?>(
    pureValue: patientEntity.neighborhood,
  );

  @override
  late final InputBloc<List<PathologicalEntity>> personalPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: patientEntity.personalPathologicalHistory,
  );

  @override
  late final InputBloc<String?> polyclinic = InputBloc<String?>(
    pureValue: patientEntity.polyclinic,
  );

  @override
  late final InputBloc<String?> popularCouncil = InputBloc<String?>(
    pureValue: patientEntity.popularCouncil,
  );

  @override
  late final InputBloc<Sex?> sex = InputBloc<Sex?>(
    pureValue: patientEntity.sex,
  );

  @override
  late final InputBloc<SkinColor?> skinColor = InputBloc<SkinColor?>(
    pureValue: patientEntity.skinColor,
  );

  @override
  late final InputBloc<String?> surgery = InputBloc<String?>(
    pureValue: patientEntity.surgery,
  );

  @override
  late final InputBloc<String?> firstName = InputBloc<String?>(
    pureValue: patientEntity.firstname,
  );

  @override
  late final InputBloc<String?> lastName = InputBloc<String?>(
    pureValue: patientEntity.lastname,
  );

  final IPatientService patientService;

  @override
  Future<FormBlocState<Unit, ErrorEntity>> onSubmmit() async {
    final response = await patientService.putPatient(
      patient: PatientPutEntity(
        id: id.state.value,
        firstname: firstName.state.value,
        lastname: lastName.state.value,
        ci: ci.state.value,
        municipalityCode: municipality.state.value?.code,
        sex: sex.state.value,
        age: age.state.value == null ? null : int.tryParse(age.state.value!),
        skinColor: skinColor.state.value,
        bloodType: bloodType.state.value,
        address: address.state.value,
        polyclinic: polyclinic.state.value,
        surgery: surgery.state.value,
        popularCouncil: popularCouncil.state.value,
        neighborhood: neighborhood.state.value,
        blockNumber: blockNumber.state.value == null
            ? null
            : int.tryParse(blockNumber.state.value!),
        personalPathologicalHistory: personalPathologicalHistory.state.value,
        familyPathologicalHistory: familyPathologicalHistory.state.value,
      ),
    );
    return response.fold(
      (error) => FormErrorState(error),
      (_) => const FormSuccessState(unit),
    );
  }
}
