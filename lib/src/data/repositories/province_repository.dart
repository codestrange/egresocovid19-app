import 'package:egresocovid19/src/data/data_sources/client_api.dart';
import 'package:egresocovid19/src/data/extensions/extensions.dart';
import 'package:egresocovid19/src/data/utils/utils.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProvinceRepository)
class ProvinceRepository implements IProvinceRepository {
  const ProvinceRepository(
    this.clientApi,
  );

  final ClientApi clientApi;

  @override
  Future<Either<ErrorEntity, List<ProvinceEntity>>> getProvinces() async {
    try {
      final response = await clientApi.getProvinces();
      return Right(response.map((e) => e.toEntity()).toList());
    } catch (e) {
      return catchMethod(e);
    }
  }
}
