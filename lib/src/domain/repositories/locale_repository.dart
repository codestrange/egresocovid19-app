import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';

abstract class ILocaleRepository {
  Either<ErrorEntity, String> getLocale();
  Future<Either<ErrorEntity, Unit>> setLocale(String locale);
}
