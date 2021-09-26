import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

abstract class IProvinceService {
  Future<Either<ErrorEntity, List<ProvinceEntity>>> getProvinces();
}

@Injectable(as: IProvinceService)
class ProvinceService implements IProvinceService {
  const ProvinceService(this.provinceRepository);

  final IProvinceRepository provinceRepository;

  @override
  Future<Either<ErrorEntity, List<ProvinceEntity>>> getProvinces() {
    return provinceRepository.getProvinces();
  }
}
