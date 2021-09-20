import 'package:dio/dio.dart';
import 'package:egresocovid19/src/data/models/discharge_of_positive_cases_of_covid19.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'client_api.g.dart';

@RestApi()
@lazySingleton
abstract class ClientApi {
  @factoryMethod
  factory ClientApi(Dio dio, {@Named('baseUrl') String baseUrl}) = _ClientApi;

  @PUT('/patients/{patientId}/egreso')
  Future<void> putDischargeData(
    @Path() String patientId,
    @Body() DischargeOfPositiveCasesOfCovid19Model dischargeModel,
  );
}
