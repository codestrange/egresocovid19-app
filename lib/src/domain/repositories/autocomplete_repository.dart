import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAutoCompleteRepository {
  Future<Either<ErrorEntity, List<String>>> getPolyclinics(String query);

  Future<Either<ErrorEntity, List<String>>> getSurgeries(String query);

  Future<Either<ErrorEntity, List<String>>> getPopularCouncils(String query);

  Future<Either<ErrorEntity, List<String>>> getNeighborhoods(String query);

  Future<Either<ErrorEntity, List<String>>> getDefaultPathologicals();

  Future<Either<ErrorEntity, List<String>>> getAntibiotics(String query);

  Future<Either<ErrorEntity, List<String>>> getAnotherVaccinesAgainstCovid(
    String query,
  );

  Future<Either<ErrorEntity, List<String>>> getOthersAftermaths(String query);

  Future<Either<ErrorEntity, List<String>>> getSymptoms(String query);

  Future<Either<ErrorEntity, List<String>>> getDefaultSymptoms();
}
