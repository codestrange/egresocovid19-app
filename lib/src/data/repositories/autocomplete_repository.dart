import 'package:egresocovid19/src/data/data_sources/client_api.dart';
import 'package:egresocovid19/src/data/utils/utils.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAutoCompleteRepository)
class AutoCompleteRepository implements IAutoCompleteRepository {
  const AutoCompleteRepository(
    this.clientApi,
  );

  final ClientApi clientApi;

  @override
  Future<Either<ErrorEntity, List<String>>> getAnotherVaccinesAgainstCovid(
    String query,
  ) async {
    try {
      final response = await clientApi.getAnotherVaccinesAgainstCovid(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getAntibiotics(
    String query,
  ) async {
    try {
      final response = await clientApi.getAntibiotics(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getDefaultPathologicals() async {
    try {
      final response = await clientApi.getDefaultPathologicals();
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getDefaultSymptoms() async {
    try {
      final response = await clientApi.getDefaultSymptoms();
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getNeighborhoods(
    String query,
  ) async {
    try {
      final response = await clientApi.getNeighborhoods(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getOthersAftermaths(
    String query,
  ) async {
    try {
      final response = await clientApi.getOthersAftermaths(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getPolyclinics(
    String query,
  ) async {
    try {
      final response = await clientApi.getPolyclinics(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getPopularCouncils(
    String query,
  ) async {
    try {
      final response = await clientApi.getPopularCouncils(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getSurgeries(
    String query,
  ) async {
    try {
      final response = await clientApi.getSurgeries(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getSymptoms(
    String query,
  ) async {
    try {
      final response = await clientApi.getSymptoms(query);
      return Right(response);
    } catch (e) {
      return catchMethod(e);
    }
  }
}
