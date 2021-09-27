import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:lyform_validators/lyform_validators.dart';

export 'patient_create_bloc_texts.dart';

abstract class IPatientCreateBloc extends FormBloc<Unit, ErrorEntity> {
  InputBloc<String> get firstName;
  InputBloc<String> get lastName;
  InputBloc<String> get ci;
  InputBloc<String> get age;
  InputBloc<Sex?> get sex;
  InputBloc<SkinColor?> get skinColor;
  InputBloc<BloodType?> get bloodType;
  InputBloc<String> get address;
  InputBloc<ProvinceEntity?> get province;
  InputBloc<MunicipalityEntity?> get municipality;
  InputBloc<String> get polyclinic;
  InputBloc<String> get surgery;
  InputBloc<String> get popularCouncil;
  InputBloc<String> get neighborhood;
  InputBloc<String> get blockNumber;
  InputBloc<List<PathologicalEntity>> get personalPathologicalHistory;
  InputBloc<List<PathologicalEntity>> get familyPathologicalHistory;

  @override
  List<InputBloc> get inputs => [
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

@Injectable(as: IPatientCreateBloc)
class PatientCreateBloc extends IPatientCreateBloc {
  PatientCreateBloc(
    this.patientService,
    @factoryParam PatientCreateBlocTexts? texts,
  )   : assert(texts != null),
        texts = texts!,
        super();

  final PatientCreateBlocTexts texts;

  @override
  late final address = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  @override
  late final age = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
      StringValidator.isNumeric(
        errorMessage: texts.validatorNumber,
      ),
    ],
  );

  @override
  late final blockNumber = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
      StringValidator.isInt(
        errorMessage: texts.validatorInteger,
      ),
    ],
  );

  @override
  InputBloc<BloodType?> bloodType = InputBloc<BloodType?>(
    pureValue: null,
  );

  @override
  late final ci = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
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
  InputBloc<List<PathologicalEntity>> familyPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: [],
  );

  @override
  late final province = InputBloc<ProvinceEntity?>(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [
      Validator.required(errorMessage: texts.validatorRequired),
    ],
  );

  @override
  late final municipality = InputBloc<MunicipalityEntity?>(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [
      Validator.required(errorMessage: texts.validatorRequired),
    ],
  );

  @override
  late final neighborhood = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  @override
  InputBloc<List<PathologicalEntity>> personalPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: [],
  );

  @override
  late final polyclinic = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  @override
  late final popularCouncil = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  @override
  late final sex = InputBloc<Sex?>(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [
      Validator.required(errorMessage: texts.validatorRequired),
    ],
  );

  @override
  late final skinColor = InputBloc<SkinColor?>(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [
      Validator.required(errorMessage: texts.validatorRequired),
    ],
  );

  @override
  late final surgery = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  @override
  late final firstName = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  @override
  late final lastName = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required(
        errorMessage: texts.validatorRequired,
      ),
    ],
  );

  final IPatientService patientService;

  @override
  Future<FormBlocState<Unit, ErrorEntity>> onSubmmit() async {
    final response = await patientService.postPatient(
      patient: PatientPostEntity(
        firstname: firstName.state.value,
        lastname: lastName.state.value,
        ci: ci.state.value,
        municipalityCode: municipality.state.value!.code,
        sex: sex.state.value!,
        age: int.parse(age.state.value),
        skinColor: skinColor.state.value!,
        bloodType: bloodType.state.value,
        address: address.state.value,
        polyclinic: polyclinic.state.value,
        surgery: surgery.state.value,
        popularCouncil: popularCouncil.state.value,
        neighborhood: neighborhood.state.value,
        blockNumber: int.parse(blockNumber.state.value),
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
