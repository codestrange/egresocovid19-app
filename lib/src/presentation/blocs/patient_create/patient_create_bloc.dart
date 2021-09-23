import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:injectable/injectable.dart';

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
  PatientCreateBloc({
    required this.patientService,
  }) : super();

  @override
  InputBloc<String> address = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
    ],
  );

  @override
  InputBloc<String> age = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
      StringValidator.number,
    ],
  );

  @override
  InputBloc<String> blockNumber = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
      StringValidator.integer,
    ],
  );

  @override
  InputBloc<BloodType?> bloodType = InputBloc<BloodType?>(
    pureValue: null,
  );

  @override
  InputBloc<String> ci = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
      StringValidator.integer,
      StringValidator.lengthGreaterThan(10),
      StringValidator.lengthLowerThan(12)
    ],
  );

  @override
  InputBloc<List<PathologicalEntity>> familyPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: [],
  );

  @override
  InputBloc<ProvinceEntity?> province = InputBloc<ProvinceEntity?>(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [
      Validator.required,
    ],
  );

  @override
  InputBloc<MunicipalityEntity?> municipality = InputBloc<MunicipalityEntity?>(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [
      Validator.required,
    ],
  );

  @override
  InputBloc<String> neighborhood = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
    ],
  );

  @override
  InputBloc<List<PathologicalEntity>> personalPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: [],
  );

  @override
  InputBloc<String> polyclinic = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
    ],
  );

  @override
  InputBloc<String> popularCouncil = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
    ],
  );

  @override
  InputBloc<Sex?> sex = InputBloc(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [Validator.required],
  );

  @override
  InputBloc<SkinColor?> skinColor = InputBloc(
    pureValue: null,
    validationType: ValidationType.explicit,
    validators: [Validator.required],
  );

  @override
  InputBloc<String> surgery = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
    ],
  );

  @override
  InputBloc<String> firstName = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
    ],
  );

  @override
  InputBloc<String> lastName = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
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
