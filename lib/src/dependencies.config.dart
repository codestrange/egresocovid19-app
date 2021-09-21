// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:egresocovid19/src/data/data_sources/client_api.dart' as _i28;
import 'package:egresocovid19/src/data/repositories/auth_repository.dart'
    as _i35;
import 'package:egresocovid19/src/data/repositories/autocomplete_repository.dart'
    as _i29;
import 'package:egresocovid19/src/data/repositories/locale_repository.dart'
    as _i12;
import 'package:egresocovid19/src/data/repositories/patient_repository.dart'
    as _i31;
import 'package:egresocovid19/src/data/repositories/province_repository.dart'
    as _i33;
import 'package:egresocovid19/src/data/repositories/theme_repository.dart'
    as _i21;
import 'package:egresocovid19/src/data/utils/hive_oauth_storage.dart' as _i24;
import 'package:egresocovid19/src/dependencies.dart' as _i37;
import 'package:egresocovid19/src/domain/repositories/repositories.dart'
    as _i11;
import 'package:egresocovid19/src/domain/services/auth_service.dart' as _i36;
import 'package:egresocovid19/src/domain/services/autocomplete_service.dart'
    as _i30;
import 'package:egresocovid19/src/domain/services/locale_service.dart' as _i13;
import 'package:egresocovid19/src/domain/services/patient_service.dart' as _i32;
import 'package:egresocovid19/src/domain/services/province_service.dart'
    as _i34;
import 'package:egresocovid19/src/domain/services/services.dart' as _i8;
import 'package:egresocovid19/src/domain/services/theme_service.dart' as _i22;
import 'package:egresocovid19/src/presentation/blocs/auth/auth_bloc.dart'
    as _i7;
import 'package:egresocovid19/src/presentation/blocs/home/home_bloc.dart'
    as _i9;
import 'package:egresocovid19/src/presentation/blocs/locale/locale_bloc.dart'
    as _i10;
import 'package:egresocovid19/src/presentation/blocs/login/login_bloc.dart'
    as _i14;
import 'package:egresocovid19/src/presentation/blocs/pathological_hist/pathologicalhistory_bloc.dart'
    as _i25;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_autocomplete_bloc.dart'
    as _i26;
import 'package:egresocovid19/src/presentation/blocs/pathology/pathology_bloc.dart'
    as _i27;
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit/patient_basic_edit_bloc.dart'
    as _i15;
import 'package:egresocovid19/src/presentation/blocs/patient_create/patient_create_bloc.dart'
    as _i16;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit/patient_egreso_edit_bloc.dart'
    as _i17;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egreso_edit_form_bloc.dart'
    as _i18;
import 'package:egresocovid19/src/presentation/blocs/patient_view/patient_view_bloc.dart'
    as _i19;
import 'package:egresocovid19/src/presentation/blocs/theme/theme_bloc.dart'
    as _i20;
import 'package:egresocovid19/src/presentation/utils/app_bloc_observer.dart'
    as _i4;
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:oauth_dio/oauth_dio.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.AppBlocObserver());
  await gh.factoryAsync<_i5.Box<int>>(() => registerModule.themeBox,
      instanceName: 'theme', preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(() => registerModule.localeBox,
      instanceName: 'locale', preResolve: true);
  await gh.factoryAsync<_i5.Box<String>>(() => registerModule.oauthBox,
      instanceName: 'oauth', preResolve: true);
  gh.lazySingleton<_i6.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i7.IAuthBloc>(
      () => _i7.AuthBloc(authService: get<_i8.IAuthService>()));
  gh.factory<_i9.IHomeBloc>(() => _i9.HomeBloc());
  gh.factory<_i10.ILocaleBloc>(
      () => _i10.LocaleBloc(get<_i8.ILocaleService>()));
  gh.factory<_i11.ILocaleRepository>(() =>
      _i12.LocaleRepository(get<_i5.Box<String>>(instanceName: 'locale')));
  gh.factory<_i13.ILocaleService>(
      () => _i13.LocaleService(get<_i11.ILocaleRepository>()));
  gh.factory<_i14.ILoginBloc>(
      () => _i14.LoginBloc(authService: get<_i8.IAuthService>()));
  gh.factory<_i15.IPatientBasicEditBloc>(() => _i15.PatientBasicEditBloc());
  gh.factory<_i16.IPatientCreateBloc>(() => _i16.PatientCreateBloc());
  gh.factory<_i17.IPatientEgresoEditBloc>(
      () => _i17.PatientEgresoEditBloc(get<_i8.IPatientService>()));
  gh.factory<_i18.IPatientEgresoEditFormBloc>(
      () => _i18.PatientEgresoEditFormBloc());
  gh.factory<_i19.IPatientViewBloc>(() => _i19.PatientViewBloc());
  gh.factory<_i20.IThemeBloc>(() => _i20.ThemeBloc(get<_i8.IThemeService>()));
  gh.factory<_i11.IThemeRepository>(
      () => _i21.ThemeRepository(get<_i5.Box<int>>(instanceName: 'theme')));
  gh.factory<_i22.IThemeService>(
      () => _i22.ThemeService(get<_i11.IThemeRepository>()));
  gh.lazySingleton<_i23.OAuthStorage>(
      () => _i24.HiveOauthStorage(get<_i5.Box<String>>(instanceName: 'oauth')));
  gh.factory<_i25.PathologicalhistoryBloc>(
      () => _i25.PathologicalhistoryBloc());
  gh.factory<_i26.PathologyAutocompleteBloc>(
      () => _i26.PathologyAutocompleteBloc(get<String>()));
  gh.factory<_i27.PathologyBloc>(() => _i27.PathologyBloc());
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i28.ClientApi>(() => _i28.ClientApi(get<_i6.Dio>(),
      baseUrl: get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i11.IAutoCompleteRepository>(
      () => _i29.AutoCompleteRepository(get<_i28.ClientApi>()));
  gh.factory<_i30.IAutoCompleteService>(
      () => _i30.AutoCompleteService(get<_i11.IAutoCompleteRepository>()));
  gh.lazySingleton<_i11.IPatientRepository>(
      () => _i31.PatientRepository(get<_i28.ClientApi>()));
  gh.factory<_i32.IPatientService>(
      () => _i32.PatientService(get<_i11.IPatientRepository>()));
  gh.lazySingleton<_i11.IProvinceRepository>(
      () => _i33.ProvinceRepository(get<_i28.ClientApi>()));
  gh.factory<_i34.IProvinceService>(
      () => _i34.ProvinceService(get<_i11.IProvinceRepository>()));
  gh.lazySingleton<_i23.OAuth>(() => registerModule.oauth(
      get<String>(instanceName: 'baseUrl'),
      get<_i6.Dio>(),
      get<_i23.OAuthStorage>()));
  gh.lazySingleton<_i11.IAuthRepository>(
      () => _i35.AuthRepository(get<_i23.OAuth>()));
  gh.lazySingleton<_i36.IAuthService>(
      () => _i36.AuthService(authRepository: get<_i11.IAuthRepository>()));
  return get;
}

class _$RegisterModule extends _i37.RegisterModule {}
