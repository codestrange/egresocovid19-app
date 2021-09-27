import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class ILocaleRepository {
  Either<ErrorEntity, String> getLocale();
  Future<Either<ErrorEntity, Unit>> setLocale(String locale);
}
