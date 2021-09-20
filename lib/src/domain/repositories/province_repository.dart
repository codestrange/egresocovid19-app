import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

abstract class IProvinceRepository {
  Future<Either<ErrorEntity, List<ProvinceEntity>>> getProvinces();
}
