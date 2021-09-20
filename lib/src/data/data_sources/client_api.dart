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

  @POST('/patients')
  Future<PatientGetModel> postPatient(
    @Body() PatientPostModel patient,
  );

  @PUT('/patients/{patientId}')
  Future<PatientGetDetailModel> putPatient(
    @Path() String patientId,
    @Body() PatientPutModel patient,
  );

  @PUT('/patients/{patientId}/egreso')
  Future<PatientGetDetailModel> putPatientEgreso(
    @Path() String patientId,
    @Body() DischargeOfPositiveCasesOfCovid19Model discharge,
  );

  @GET('/provinces')
  Future<List<ProvinceModel>> getProvinces();
}
