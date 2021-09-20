import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/data/data_sources/client_api.dart';
import 'package:egresocovid19/src/data/extensions/extensions.dart';
import 'package:egresocovid19/src/data/utils/catch_method.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/entities/error_entity.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPatientRepository)
class PatientRepository extends IPatientRepository {
  PatientRepository(
    this.clientApi,
  );

  ClientApi clientApi;

  @override
  Future<Either<ErrorEntity, void>> updateDischargeData({
    required String patientId,
    required DischargeOfPositiveCasesOfCovid19Entity dischargeData,
  }) {
    return clientApi
        .putPatientEgreso(
          patientId,
          dischargeData.toModel(),
        )
        .then((_) => Right(() {}()), onError: catchMethod);
  }
}
