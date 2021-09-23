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
  Future<List<PatientGetModel>> getPatients(@Path() String query);

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

  @GET('/autocomplete/polyclinics/{query}')
  Future<List<String>> getPolyclinics(@Path() String query);

  @GET('/autocomplete/surgeries/{query}')
  Future<List<String>> getSurgeries(@Path() String query);

  @GET('/autocomplete/popular_councils/{query}')
  Future<List<String>> getPopularCouncils(@Path() String query);

  @GET('/autocomplete/neighborhoods/{query}')
  Future<List<String>> getNeighborhoods(@Path() String query);

  @GET('/autocomplete/default_pathologicals')
  Future<List<String>> getDefaultPathologicals();

  @GET('/autocomplete/antibiotics/{query}')
  Future<List<String>> getAntibiotics(@Path() String query);

  @GET('/autocomplete/another_vaccines_against_covid/{query}')
  Future<List<String>> getAnotherVaccinesAgainstCovid(@Path() String query);

  @GET('/autocomplete/others_aftermaths/{query}')
  Future<List<String>> getOthersAftermaths(@Path() String query);

  @GET('/autocomplete/symptoms/{query}')
  Future<List<String>> getSymptoms(@Path() String query);

  @GET('/autocomplete/default_symptoms')
  Future<List<String>> getDefaultSymptoms();
}
