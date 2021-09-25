import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class IPatientService {
  Future<Either<ErrorEntity, List<PatientGetEntity>>> getPatients({
    required String query,
  });

  Future<Either<ErrorEntity, PatientGetDetailEntity>> getPatient({
    required String patientId,
  });

  Future<Either<ErrorEntity, PatientGetEntity>> postPatient({
    required PatientPostEntity patient,
  });

  Future<Either<ErrorEntity, PatientGetDetailEntity>> putPatient({
    required PatientPutEntity patient,
  });

  Future<Either<ErrorEntity, PatientGetDetailEntity>> putPatientEgreso({
    required String patientId,
    required DischargeDataEntity discharge,
  });
}

@Injectable(as: IPatientService)
class PatientService implements IPatientService {
  const PatientService(this.patientRepository);

  final IPatientRepository patientRepository;

  @override
  Future<Either<ErrorEntity, List<PatientGetEntity>>> getPatients({
    required String query,
  }) {
    return patientRepository.getPatients(query: query);
  }

  @override
  Future<Either<ErrorEntity, PatientGetDetailEntity>> getPatient({
    required String patientId,
  }) {
    return patientRepository.getPatient(patientId: patientId);
  }

  @override
  Future<Either<ErrorEntity, PatientGetEntity>> postPatient({
    required PatientPostEntity patient,
  }) {
    return patientRepository.postPatient(patient: patient);
  }

  @override
  Future<Either<ErrorEntity, PatientGetDetailEntity>> putPatient({
    required PatientPutEntity patient,
  }) {
    return patientRepository.putPatient(patient: patient);
  }

  @override
  Future<Either<ErrorEntity, PatientGetDetailEntity>> putPatientEgreso({
    required String patientId,
    required DischargeDataEntity discharge,
  }) {
    return patientRepository.putPatientEgreso(
      patientId: patientId,
      discharge: discharge,
    );
  }
}
