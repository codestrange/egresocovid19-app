import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ILocaleRepository)
class LocaleRepository implements ILocaleRepository {
  const LocaleRepository(@Named('locale') this.box);

  final Box<String> box;

  @override
  Either<String, ErrorEntity> getLocale() {
    return box.containsKey('lang')
        ? Left(box.get('lang')!)
        : const Right(ErrorEntity(
            errorCode: '0',
            message: 'Language not found.',
          ));
  }

  @override
  Future<Either<void, ErrorEntity>> setLocale(String locale) async {
    await box.put('lang', locale);
    return const Left(null);
  }
}
