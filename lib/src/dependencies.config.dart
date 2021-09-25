// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:egresocovid19/src/data/data_sources/client_api.dart' as _i35;
import 'package:egresocovid19/src/data/repositories/auth_repository.dart'
    as _i44;
import 'package:egresocovid19/src/data/repositories/autocomplete_repository.dart'
    as _i36;
import 'package:egresocovid19/src/data/repositories/locale_repository.dart'
    as _i12;
import 'package:egresocovid19/src/data/repositories/patient_repository.dart'
    as _i38;
import 'package:egresocovid19/src/data/repositories/province_repository.dart'
    as _i41;
import 'package:egresocovid19/src/data/repositories/theme_repository.dart'
    as _i23;
import 'package:egresocovid19/src/data/utils/hive_oauth_storage.dart' as _i28;
import 'package:egresocovid19/src/dependencies.dart' as _i47;
import 'package:egresocovid19/src/domain/entities/entities.dart' as _i21;
import 'package:egresocovid19/src/domain/repositories/repositories.dart'
    as _i11;
import 'package:egresocovid19/src/domain/services/auth_service.dart' as _i45;
import 'package:egresocovid19/src/domain/services/autocomplete_service.dart'
    as _i37;
import 'package:egresocovid19/src/domain/services/locale_service.dart' as _i13;
import 'package:egresocovid19/src/domain/services/patient_service.dart' as _i39;
import 'package:egresocovid19/src/domain/services/province_service.dart'
    as _i42;
import 'package:egresocovid19/src/domain/services/services.dart' as _i4;
import 'package:egresocovid19/src/domain/services/theme_service.dart' as _i24;
import 'package:egresocovid19/src/presentation/blocs/auth/auth_bloc.dart'
    as _i9;
import 'package:egresocovid19/src/presentation/blocs/blocs.dart' as _i17;
import 'package:egresocovid19/src/presentation/blocs/home/home_bloc.dart'
    as _i46;
import 'package:egresocovid19/src/presentation/blocs/income/income_bloc.dart'
    as _i25;
import 'package:egresocovid19/src/presentation/blocs/locale/locale_bloc.dart'
    as _i10;
import 'package:egresocovid19/src/presentation/blocs/login/login_bloc.dart'
    as _i14;
import 'package:egresocovid19/src/presentation/blocs/municipality/municipality_bloc.dart'
    as _i43;
import 'package:egresocovid19/src/presentation/blocs/neighborhood/neighborhood_autocomplete_bloc.dart'
    as _i26;
import 'package:egresocovid19/src/presentation/blocs/pathological_hist/pathologicalhistory_bloc.dart'
    as _i29;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_autocomplete_bloc.dart'
    as _i30;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_bloc.dart'
    as _i31;
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit/patient_basic_edit_bloc.dart'
    as _i15;
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit_form/patient_basic_edit_formbloc.dart'
    as _i16;
import 'package:egresocovid19/src/presentation/blocs/patient_create/patient_create_bloc.dart'
    as _i18;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit/patient_egreso_edit_bloc.dart'
    as _i19;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egres_edit_form_autocomplete_bloc.dart'
    as _i3;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egreso_edit_form_bloc.dart'
    as _i20;
import 'package:egresocovid19/src/presentation/blocs/patient_view/patient_view_bloc.dart'
    as _i40;
import 'package:egresocovid19/src/presentation/blocs/polyclinic/polyclinic_autocomplete_bloc.dart'
    as _i32;
import 'package:egresocovid19/src/presentation/blocs/popularcouncil/popularcouncil_autocomplete_bloc.dart'
    as _i33;
import 'package:egresocovid19/src/presentation/blocs/surgery/surgery_autocomplete_bloc.dart'
    as _i34;
import 'package:egresocovid19/src/presentation/blocs/theme/theme_bloc.dart'
    as _i22;
import 'package:egresocovid19/src/presentation/utils/app_bloc_observer.dart'
    as _i6;
import 'package:flutter_bloc/flutter_bloc.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:oauth_dio/oauth_dio.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AnotherVaccinesAutoCompleteBloc>(() =>
      _i3.AnotherVaccinesAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i3.AntibioticsAutoCompleteBloc>(
      () => _i3.AntibioticsAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.lazySingleton<_i5.BlocObserver>(() => _i6.AppBlocObserver());
  await gh.factoryAsync<_i7.Box<int>>(() => registerModule.themeBox,
      instanceName: 'theme', preResolve: true);
  await gh.factoryAsync<_i7.Box<String>>(() => registerModule.localeBox,
      instanceName: 'locale', preResolve: true);
  await gh.factoryAsync<_i7.Box<String>>(() => registerModule.oauthBox,
      instanceName: 'oauth', preResolve: true);
  gh.lazySingleton<_i8.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i9.IAuthBloc>(
      () => _i9.AuthBloc(authService: get<_i4.IAuthService>()));
  gh.factory<_i10.ILocaleBloc>(
      () => _i10.LocaleBloc(get<_i4.ILocaleService>()));
  gh.factory<_i11.ILocaleRepository>(() =>
      _i12.LocaleRepository(get<_i7.Box<String>>(instanceName: 'locale')));
  gh.factory<_i13.ILocaleService>(
      () => _i13.LocaleService(get<_i11.ILocaleRepository>()));
  gh.factory<_i14.ILoginBloc>(
      () => _i14.LoginBloc(authService: get<_i4.IAuthService>()));
  gh.factory<_i15.IPatientBasicEditBloc>(() => _i15.PatientBasicEditBloc(
      patientService: get<_i4.IPatientService>(),
      provinceService: get<_i4.IProvinceService>()));
  gh.factoryParam<_i16.IPatientBasicEditFormBloc, _i17.PatientEditFetchData?,
          dynamic>(
      (patientEditFetchData, _) => _i16.PatientBasicEditFormBloc(
          patientService: get<_i4.IPatientService>(),
          patientEditFetchData: patientEditFetchData));
  gh.factory<_i18.IPatientCreateBloc>(
      () => _i18.PatientCreateBloc(patientService: get<_i4.IPatientService>()));
  gh.factory<_i19.IPatientEgresoEditBloc>(
      () => _i19.PatientEgresoEditBloc(get<_i4.IPatientService>()));
  gh.factoryParam<_i20.IPatientEgresoEditFormBloc, _i21.DischargeDataEntity?,
          dynamic>(
      (initialDischargeData, _) =>
          _i20.PatientEgresoEditFormBloc(initialDischargeData));
  gh.factory<_i22.IThemeBloc>(() => _i22.ThemeBloc(get<_i4.IThemeService>()));
  gh.factory<_i11.IThemeRepository>(
      () => _i23.ThemeRepository(get<_i7.Box<int>>(instanceName: 'theme')));
  gh.factory<_i24.IThemeService>(
      () => _i24.ThemeService(get<_i11.IThemeRepository>()));
  gh.factory<_i25.IncomeBloc>(() => _i25.IncomeBloc());
  gh.factory<_i26.NeighborhoodAutoCompleteBloc>(
      () => _i26.NeighborhoodAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.lazySingleton<_i27.OAuthStorage>(
      () => _i28.HiveOauthStorage(get<_i7.Box<String>>(instanceName: 'oauth')));
  gh.factory<_i3.OtherAftermathAutoCompleteBloc>(() =>
      _i3.OtherAftermathAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i29.PathologicalhistoryBloc>(
      () => _i29.PathologicalhistoryBloc());
  gh.factory<_i30.PathologyAutoCompleteBloc>(
      () => _i30.PathologyAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i31.PathologyBloc>(() => _i31.PathologyBloc());
  gh.factory<_i32.PolyclinicAutoCompleteBloc>(
      () => _i32.PolyclinicAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i33.PopularCouncilAutoCompleteBloc>(() =>
      _i33.PopularCouncilAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i34.SurgeryAutoCompleteBloc>(
      () => _i34.SurgeryAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i3.SymptompsAutoCompleteBloc>(
      () => _i3.SymptompsAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.lazySingleton<_i35.ClientApi>(() => _i35.ClientApi(get<_i8.Dio>(),
      baseUrl: get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i11.IAutoCompleteRepository>(
      () => _i36.AutoCompleteRepository(get<_i35.ClientApi>()));
  gh.factory<_i37.IAutoCompleteService>(
      () => _i37.AutoCompleteService(get<_i11.IAutoCompleteRepository>()));
  gh.lazySingleton<_i11.IPatientRepository>(
      () => _i38.PatientRepository(get<_i35.ClientApi>()));
  gh.factory<_i39.IPatientService>(
      () => _i39.PatientService(get<_i11.IPatientRepository>()));
  gh.factory<_i40.IPatientViewBloc>(
      () => _i40.PatientViewBloc(get<_i39.IPatientService>()));
  gh.lazySingleton<_i11.IProvinceRepository>(
      () => _i41.ProvinceRepository(get<_i35.ClientApi>()));
  gh.factory<_i42.IProvinceService>(
      () => _i42.ProvinceService(get<_i11.IProvinceRepository>()));
  gh.factory<_i43.MunicipalityBloc>(() =>
      _i43.MunicipalityBloc(provinceService: get<_i42.IProvinceService>()));
  gh.lazySingleton<_i27.OAuth>(() => registerModule.oauth(
      get<String>(instanceName: 'baseUrl'),
      get<_i8.Dio>(),
      get<_i27.OAuthStorage>()));
  gh.lazySingleton<_i11.IAuthRepository>(
      () => _i44.AuthRepository(get<_i27.OAuth>()));
  gh.lazySingleton<_i45.IAuthService>(
      () => _i45.AuthService(authRepository: get<_i11.IAuthRepository>()));
  gh.factory<_i46.IHomeBloc>(() => _i46.HomeBloc(get<_i39.IPatientService>()));
  return get;
}

class _$RegisterModule extends _i47.RegisterModule {}
