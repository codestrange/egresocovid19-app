import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'client_api.g.dart';

@RestApi()
@lazySingleton
abstract class ClientApi {
  @factoryMethod
  factory ClientApi(Dio dio, {@Named('baseUrl') String baseUrl}) = _ClientApi;
}
