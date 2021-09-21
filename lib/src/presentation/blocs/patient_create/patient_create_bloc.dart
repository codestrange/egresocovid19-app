import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:injectable/injectable.dart';

abstract class IPatientCreateBloc extends FormBloc<void, ErrorEntity> {
  InputBloc<String> get firstName;
  InputBloc<String> get lastName;
  InputBloc<String> get ci;
  InputBloc<String> get age;
  InputBloc<Sex?> get sex;
  InputBloc<SkinColor?> get skinColor;
  InputBloc<BloodType?> get bloodType;
  InputBloc<String> get address;
  InputBloc<String> get municipalityCode;
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
        municipalityCode,
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
  @override
  InputBloc<String> get address => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  InputBloc<String> get age => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
          StringValidator.number,
        ],
      );

  @override
  InputBloc<String> get blockNumber => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
          StringValidator.integer,
        ],
      );

  @override
  InputBloc<BloodType?> get bloodType => InputBloc<BloodType?>(
        pureValue: null,
      );

  @override
  InputBloc<String> get ci => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
          StringValidator.integer,
          StringValidator.lengthGreaterThan(11),
          StringValidator.lengthLowerThan(11)
        ],
      );

  @override
  InputBloc<List<PathologicalEntity>> get familyPathologicalHistory =>
      InputBloc<List<PathologicalEntity>>(
        pureValue: [],
      );

  @override
  InputBloc<String> get municipalityCode => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  InputBloc<String> get neighborhood => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  InputBloc<List<PathologicalEntity>> get personalPathologicalHistory =>
      InputBloc<List<PathologicalEntity>>(
        pureValue: [],
      );

  @override
  InputBloc<String> get polyclinic => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  InputBloc<String> get popularCouncil => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  InputBloc<Sex?> get sex => InputBloc(
        pureValue: null,
        validationType: ValidationType.explicit,
        validators: [Validator.required],
      );

  @override
  InputBloc<SkinColor?> get skinColor => InputBloc(
        pureValue: null,
        validationType: ValidationType.explicit,
        validators: [Validator.required],
      );

  @override
  InputBloc<String> get surgery => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  InputBloc<String> get firstName => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  InputBloc<String> get lastName => InputBloc<String>(
        pureValue: '',
        validationType: ValidationType.explicit,
        validators: [
          StringValidator.required,
        ],
      );

  @override
  Future<FormBlocState<void, ErrorEntity>> onSubmmit() {
    // TODO: implement onSubmmit
    throw UnimplementedError();
  }
}
