import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class IPatientRepository {
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
