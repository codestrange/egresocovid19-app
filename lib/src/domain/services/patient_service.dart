import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class IPatientService {
  Future<Either<ErrorEntity, void>> updatePatientDischargeData({
    required String patientId,
    required DischargeOfPositiveCasesOfCovid19Entity dischargeData,
  });
}

@Injectable(as: IPatientService)
class PatientService extends IPatientService {
  PatientService(this.patientRepository);

  IPatientRepository patientRepository;

  @override
  Future<Either<ErrorEntity, void>> updatePatientDischargeData({
    required String patientId,
    required DischargeOfPositiveCasesOfCovid19Entity dischargeData,
  }) =>
      patientRepository.updateDischargeData(
        patientId: patientId,
        dischargeData: dischargeData,
      );
}
