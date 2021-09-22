import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:injectable/injectable.dart';

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
  InputBloc<String?> get municipalityCode;
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
        municipalityCode,
        polyclinic,
        surgery,
        popularCouncil,
        neighborhood,
        blockNumber,
        personalPathologicalHistory,
        familyPathologicalHistory
      ];

  void updateInputsWithEntity(PatientGetEntity entity);
}

@Injectable(as: IPatientBasicEditFormBloc)
class PatientBasicEditFormBloc extends IPatientBasicEditFormBloc {
  PatientBasicEditFormBloc({
    required this.patientService,
  }) : super();

  @override
  InputBloc<String> id = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
    ],
  );

  @override
  InputBloc<String?> address = InputBloc<String>(
    pureValue: '',
  );

  @override
  InputBloc<String?> age = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.number,
    ],
  );

  @override
  InputBloc<String?> blockNumber = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.integer,
    ],
  );

  @override
  InputBloc<BloodType?> bloodType = InputBloc<BloodType?>(
    pureValue: null,
  );

  @override
  InputBloc<String?> ci = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.integer,
      StringValidator.lengthGreaterThan(11),
      StringValidator.lengthLowerThan(11)
    ],
  );

  @override
  InputBloc<List<PathologicalEntity>> familyPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: [],
  );

  @override
  InputBloc<String?> municipalityCode = InputBloc<String>(
    pureValue: '',
  );

  @override
  InputBloc<String?> neighborhood = InputBloc<String>(
    pureValue: '',
  );

  @override
  InputBloc<List<PathologicalEntity>> personalPathologicalHistory =
      InputBloc<List<PathologicalEntity>>(
    pureValue: [],
  );

  @override
  InputBloc<String?> polyclinic = InputBloc<String>(
    pureValue: '',
  );

  @override
  InputBloc<String?> popularCouncil = InputBloc<String>(
    pureValue: '',
  );

  @override
  InputBloc<Sex?> sex = InputBloc(
    pureValue: null,
  );

  @override
  InputBloc<SkinColor?> skinColor = InputBloc(
    pureValue: null,
  );

  @override
  InputBloc<String?> surgery = InputBloc<String>(
    pureValue: '',
  );

  @override
  InputBloc<String?> firstName = InputBloc<String>(
    pureValue: '',
  );

  @override
  InputBloc<String?> lastName = InputBloc<String>(
    pureValue: '',
  );

  final IPatientService patientService;

  @override
  void updateInputsWithEntity(PatientGetEntity entity) {
    id.pure(entity.id);
    firstName.pure(entity.firstname);
    lastName.pure(entity.lastname);
    ci.pure(entity.ci);
    // municipalityCode.pure(entity.);
    neighborhood.pure(entity.neighborhood);
    polyclinic.pure(entity.polyclinic);
    popularCouncil.pure(entity.popularCouncil);
    surgery.pure(entity.surgery);
    age.pure(entity.age.toString());
    blockNumber.pure(entity.blockNumber.toString());
    bloodType.pure(entity.bloodType);
    sex.pure(entity.sex);
    skinColor.pure(entity.skinColor);
    change();
  }

  @override
  Future<FormBlocState<Unit, ErrorEntity>> onSubmmit() async {
    final response = await patientService.putPatient(
      patient: PatientPutEntity(
        id: id.state.value,
        firstname: firstName.state.value,
        lastname: lastName.state.value,
        ci: ci.state.value,
        municipalityCode: municipalityCode.state.value,
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
