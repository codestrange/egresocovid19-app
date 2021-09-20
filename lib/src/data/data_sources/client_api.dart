import 'package:dio/dio.dart';
import 'package:egresocovid19/src/data/models/models.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'client_api.g.dart';

@RestApi()
@lazySingleton
abstract class ClientApi {
  @factoryMethod
  factory ClientApi(Dio dio, {@Named('baseUrl') String baseUrl}) = _ClientApi;

  @GET('/patients/search/{query}')
  Future<List<PatientGetModel>> getPatients(@Path('query') String query);

  @GET('/patients/{patientId}')
  Future<PatientGetDetailModel> getPatient(
    @Path() String patientId,
  );

  @PUT('/patients/{patientId}/egreso')
  Future<void> putPatientEgreso(
    @Path() String patientId,
    @Body() DischargeOfPositiveCasesOfCovid19Model dischargeModel,
  );
}
