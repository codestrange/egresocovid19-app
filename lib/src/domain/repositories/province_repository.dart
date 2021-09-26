import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class IProvinceRepository {
  Future<Either<ErrorEntity, List<ProvinceEntity>>> getProvinces();
}
