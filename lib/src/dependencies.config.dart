// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i8;
import 'package:egresocovid19/src/data/data_sources/client_api.dart' as _i34;
import 'package:egresocovid19/src/data/repositories/auth_repository.dart'
    as _i42;
import 'package:egresocovid19/src/data/repositories/autocomplete_repository.dart'
    as _i35;
import 'package:egresocovid19/src/data/repositories/locale_repository.dart'
    as _i12;
import 'package:egresocovid19/src/data/repositories/patient_repository.dart'
    as _i37;
import 'package:egresocovid19/src/data/repositories/province_repository.dart'
    as _i39;
import 'package:egresocovid19/src/data/repositories/theme_repository.dart'
    as _i22;
import 'package:egresocovid19/src/data/utils/hive_oauth_storage.dart' as _i27;
import 'package:egresocovid19/src/dependencies.dart' as _i46;
import 'package:egresocovid19/src/domain/entities/entities.dart' as _i19;
import 'package:egresocovid19/src/domain/repositories/repositories.dart'
    as _i11;
import 'package:egresocovid19/src/domain/services/auth_service.dart' as _i43;
import 'package:egresocovid19/src/domain/services/autocomplete_service.dart'
    as _i36;
import 'package:egresocovid19/src/domain/services/locale_service.dart' as _i13;
import 'package:egresocovid19/src/domain/services/patient_service.dart' as _i38;
import 'package:egresocovid19/src/domain/services/province_service.dart'
    as _i40;
import 'package:egresocovid19/src/domain/services/services.dart' as _i4;
import 'package:egresocovid19/src/domain/services/theme_service.dart' as _i23;
import 'package:egresocovid19/src/presentation/blocs/auth/auth_bloc.dart'
    as _i9;
import 'package:egresocovid19/src/presentation/blocs/home/home_bloc.dart'
    as _i44;
import 'package:egresocovid19/src/presentation/blocs/income/income_bloc.dart'
    as _i24;
import 'package:egresocovid19/src/presentation/blocs/locale/locale_bloc.dart'
    as _i10;
import 'package:egresocovid19/src/presentation/blocs/login/login_bloc.dart'
    as _i14;
import 'package:egresocovid19/src/presentation/blocs/municipality/municipality_bloc.dart'
    as _i41;
import 'package:egresocovid19/src/presentation/blocs/neighborhood/neighborhood_autocomplete_bloc.dart'
    as _i25;
import 'package:egresocovid19/src/presentation/blocs/pathological_hist/pathologicalhistory_bloc.dart'
    as _i28;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_autocomplete_bloc.dart'
    as _i29;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_bloc.dart'
    as _i30;
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit/patient_basic_edit_bloc.dart'
    as _i45;
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit_form/patient_basic_edit_formbloc.dart'
    as _i15;
import 'package:egresocovid19/src/presentation/blocs/patient_create/patient_create_bloc.dart'
    as _i16;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit/patient_egreso_edit_bloc.dart'
    as _i17;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egres_edit_form_autocomplete_bloc.dart'
    as _i3;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egreso_edit_form_bloc.dart'
    as _i18;
import 'package:egresocovid19/src/presentation/blocs/patient_view/patient_view_bloc.dart'
    as _i20;
import 'package:egresocovid19/src/presentation/blocs/polyclinic/polyclinic_autocomplete_bloc.dart'
    as _i31;
import 'package:egresocovid19/src/presentation/blocs/popularcouncil/popularcouncil_autocomplete_bloc.dart'
    as _i32;
import 'package:egresocovid19/src/presentation/blocs/surgery/surgery_autocomplete_bloc.dart'
    as _i33;
import 'package:egresocovid19/src/presentation/blocs/theme/theme_bloc.dart'
    as _i21;
import 'package:egresocovid19/src/presentation/utils/app_bloc_observer.dart'
    as _i6;
import 'package:flutter_bloc/flutter_bloc.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:oauth_dio/oauth_dio.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i15.IPatientBasicEditFormBloc>(() =>
      _i15.PatientBasicEditFormBloc(
          patientService: get<_i4.IPatientService>()));
  gh.factory<_i16.IPatientCreateBloc>(
      () => _i16.PatientCreateBloc(patientService: get<_i4.IPatientService>()));
  gh.factory<_i17.IPatientEgresoEditBloc>(
      () => _i17.PatientEgresoEditBloc(get<_i4.IPatientService>()));
  gh.factoryParam<_i18.IPatientEgresoEditFormBloc, _i19.DischargeDataEntity?,
          dynamic>(
      (initialDischargeData, _) =>
          _i18.PatientEgresoEditFormBloc(initialDischargeData));
  gh.factory<_i20.IPatientViewBloc>(() => _i20.PatientViewBloc());
  gh.factory<_i21.IThemeBloc>(() => _i21.ThemeBloc(get<_i4.IThemeService>()));
  gh.factory<_i11.IThemeRepository>(
      () => _i22.ThemeRepository(get<_i7.Box<int>>(instanceName: 'theme')));
  gh.factory<_i23.IThemeService>(
      () => _i23.ThemeService(get<_i11.IThemeRepository>()));
  gh.factory<_i24.IncomeBloc>(() => _i24.IncomeBloc());
  gh.factory<_i25.NeighborhoodAutoCompleteBloc>(
      () => _i25.NeighborhoodAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.lazySingleton<_i26.OAuthStorage>(
      () => _i27.HiveOauthStorage(get<_i7.Box<String>>(instanceName: 'oauth')));
  gh.factory<_i3.OtherAftermathAutoCompleteBloc>(() =>
      _i3.OtherAftermathAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i28.PathologicalhistoryBloc>(
      () => _i28.PathologicalhistoryBloc());
  gh.factory<_i29.PathologyAutoCompleteBloc>(
      () => _i29.PathologyAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i30.PathologyBloc>(() => _i30.PathologyBloc());
  gh.factory<_i31.PolyclinicAutoCompleteBloc>(
      () => _i31.PolyclinicAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i32.PopularCouncilAutoCompleteBloc>(() =>
      _i32.PopularCouncilAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i33.SurgeryAutoCompleteBloc>(
      () => _i33.SurgeryAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.factory<_i3.SymptompsAutoCompleteBloc>(
      () => _i3.SymptompsAutoCompleteBloc(get<_i4.IAutoCompleteService>()));
  gh.lazySingleton<_i34.ClientApi>(() => _i34.ClientApi(get<_i8.Dio>(),
      baseUrl: get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i11.IAutoCompleteRepository>(
      () => _i35.AutoCompleteRepository(get<_i34.ClientApi>()));
  gh.factory<_i36.IAutoCompleteService>(
      () => _i36.AutoCompleteService(get<_i11.IAutoCompleteRepository>()));
  gh.lazySingleton<_i11.IPatientRepository>(
      () => _i37.PatientRepository(get<_i34.ClientApi>()));
  gh.factory<_i38.IPatientService>(
      () => _i38.PatientService(get<_i11.IPatientRepository>()));
  gh.lazySingleton<_i11.IProvinceRepository>(
      () => _i39.ProvinceRepository(get<_i34.ClientApi>()));
  gh.factory<_i40.IProvinceService>(
      () => _i40.ProvinceService(get<_i11.IProvinceRepository>()));
  gh.factory<_i41.MunicipalityBloc>(() =>
      _i41.MunicipalityBloc(provinceService: get<_i40.IProvinceService>()));
  gh.lazySingleton<_i26.OAuth>(() => registerModule.oauth(
      get<String>(instanceName: 'baseUrl'),
      get<_i8.Dio>(),
      get<_i26.OAuthStorage>()));
  gh.lazySingleton<_i11.IAuthRepository>(
      () => _i42.AuthRepository(get<_i26.OAuth>()));
  gh.lazySingleton<_i43.IAuthService>(
      () => _i43.AuthService(authRepository: get<_i11.IAuthRepository>()));
  gh.factory<_i44.IHomeBloc>(() => _i44.HomeBloc(get<_i38.IPatientService>()));
  gh.factory<_i45.IPatientBasicEditBloc>(() =>
      _i45.PatientBasicEditBloc(patientService: get<_i38.IPatientService>()));
  return get;
}

class _$RegisterModule extends _i46.RegisterModule {}
