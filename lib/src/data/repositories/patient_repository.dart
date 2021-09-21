import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/data/data_sources/client_api.dart';
import 'package:egresocovid19/src/data/extensions/extensions.dart';
import 'package:egresocovid19/src/data/utils/catch_method.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/entities/error_entity.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPatientRepository)
class PatientRepository implements IPatientRepository {
  const PatientRepository(
    this.clientApi,
  );

  final ClientApi clientApi;

  @override
  Future<Either<ErrorEntity, List<PatientGetEntity>>> getPatients({
    required String query,
  }) async {
    try {
      final response = await clientApi.getPatients(query);
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, PatientGetDetailEntity>> getPatient({
    required String patientId,
  }) async {
    try {
      final response = await clientApi.getPatient(patientId);
      return Right(response.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, PatientGetEntity>> postPatient({
    required PatientPostEntity patient,
  }) async {
    try {
      final response = await clientApi.postPatient(patient.toModel());
      return Right(response.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, PatientGetDetailEntity>> putPatient({
    required PatientPutEntity patient,
  }) async {
    try {
      final response = await clientApi.putPatient(
        patient.id,
        patient.toModel(),
      );
      return Right(response.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, PatientGetDetailEntity>> putPatientEgreso({
    required String patientId,
    required DischargeDataEntity discharge,
  }) async {
    try {
      final response = await clientApi.putPatientEgreso(
        patientId,
        discharge.toModel(),
      );
      return Right(response.toEntity());
    } catch (e) {
      return catchMethod(e);
    }
  }
}
