import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class ILocaleService {
  Either<ErrorEntity, String> getLocale();
  Future<Either<ErrorEntity, Unit>> setLocale(String locale);
}

@Injectable(as: ILocaleService)
class LocaleService implements ILocaleService {
  LocaleService(this.localeRepository);

  final ILocaleRepository localeRepository;

  @override
  Either<ErrorEntity, String> getLocale() {
    return localeRepository.getLocale();
  }

  @override
  Future<Either<ErrorEntity, Unit>> setLocale(String locale) {
    return localeRepository.setLocale(locale);
  }
}
