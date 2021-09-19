import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

abstract class IPatientRepository {
  Future<Either<ErrorEntity, void>> updateDischargeData(
    String patientId,
    DischargeOfPositiveCasesOfCovid19Entity dischargeData,
  ); //TODO: Change Right Type to Patient entity when created
}
