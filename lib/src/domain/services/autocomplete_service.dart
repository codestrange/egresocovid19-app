import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class IAutoCompleteService {
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

@Injectable(as: IAutoCompleteService)
class AutoCompleteService implements IAutoCompleteService {
  const AutoCompleteService(this.autoCompleteRepository);

  final IAutoCompleteRepository autoCompleteRepository;

  @override
  Future<Either<ErrorEntity, List<String>>> getAnotherVaccinesAgainstCovid(
    String query,
  ) {
    return autoCompleteRepository.getAnotherVaccinesAgainstCovid(query);
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getAntibiotics(String query) {
    return autoCompleteRepository.getAntibiotics(query);
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getDefaultPathologicals() {
    return autoCompleteRepository.getDefaultPathologicals();
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getDefaultSymptoms() {
    return autoCompleteRepository.getDefaultSymptoms();
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getNeighborhoods(String query) {
    return autoCompleteRepository.getNeighborhoods(query);
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getOthersAftermaths(String query) {
    return autoCompleteRepository.getOthersAftermaths(query);
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getPolyclinics(String query) {
    return autoCompleteRepository.getPolyclinics(query);
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getPopularCouncils(String query) {
    return autoCompleteRepository.getPopularCouncils(query);
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getSurgeries(String query) {
    return autoCompleteRepository.getSurgeries(query);
  }

  @override
  Future<Either<ErrorEntity, List<String>>> getSymptoms(String query) {
    return autoCompleteRepository.getSymptoms(query);
  }
}
