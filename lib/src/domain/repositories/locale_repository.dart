import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

abstract class ILocaleRepository {
  Either<String, ErrorEntity> getLocale();
  Future<Either<void, ErrorEntity>> setLocale(String locale);
}
