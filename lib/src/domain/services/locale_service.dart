import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class ILocaleService {
  Either<String, ErrorEntity> getLocale();
  Future<Either<void, ErrorEntity>> setLocale(String locale);
}

@Injectable(as: ILocaleService)
class LocaleService implements ILocaleService {
  LocaleService(this.localeRepository);

  final ILocaleRepository localeRepository;

  @override
  Either<String, ErrorEntity> getLocale() {
    return localeRepository.getLocale();
  }

  @override
  Future<Either<void, ErrorEntity>> setLocale(String locale) {
    return localeRepository.setLocale(locale);
  }
}
