// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:egresocovid19/src/data/data_sources/client_api.dart' as _i24;
import 'package:egresocovid19/src/data/repositories/auth_repository.dart'
    as _i26;
import 'package:egresocovid19/src/data/repositories/locale_repository.dart'
    as _i12;
import 'package:egresocovid19/src/data/repositories/patient_repository.dart'
    as _i25;
import 'package:egresocovid19/src/data/repositories/theme_repository.dart'
    as _i20;
import 'package:egresocovid19/src/data/utils/hive_oauth_storage.dart' as _i23;
import 'package:egresocovid19/src/dependencies.dart' as _i28;
import 'package:egresocovid19/src/domain/repositories/repositories.dart'
    as _i11;
import 'package:egresocovid19/src/domain/services/auth_service.dart' as _i27;
import 'package:egresocovid19/src/domain/services/locale_service.dart' as _i13;
import 'package:egresocovid19/src/domain/services/services.dart' as _i8;
import 'package:egresocovid19/src/domain/services/theme_service.dart' as _i21;
import 'package:egresocovid19/src/presentation/blocs/auth/auth_bloc.dart'
    as _i7;
import 'package:egresocovid19/src/presentation/blocs/home/home_bloc.dart'
    as _i9;
import 'package:egresocovid19/src/presentation/blocs/locale/locale_bloc.dart'
    as _i10;
import 'package:egresocovid19/src/presentation/blocs/login/login_bloc.dart'
    as _i14;
import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit/patient_basic_edit_bloc.dart'
    as _i15;
import 'package:egresocovid19/src/presentation/blocs/patient_create/patient_create_bloc.dart'
    as _i16;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit/patient_egreso_edit_bloc.dart'
    as _i17;
import 'package:egresocovid19/src/presentation/blocs/patient_view/patient_view_bloc.dart'
    as _i18;
import 'package:egresocovid19/src/presentation/blocs/theme/theme_bloc.dart'
    as _i19;
import 'package:egresocovid19/src/presentation/utils/app_bloc_observer.dart'
    as _i4;
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:oauth_dio/oauth_dio.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i17.IPatientEgresoEditBloc>(() => _i17.PatientEgresoEditBloc());
  gh.factory<_i18.IPatientViewBloc>(() => _i18.PatientViewBloc());
  gh.factory<_i19.IThemeBloc>(() => _i19.ThemeBloc(get<_i8.IThemeService>()));
  gh.factory<_i11.IThemeRepository>(
      () => _i20.ThemeRepository(get<_i5.Box<int>>(instanceName: 'theme')));
  gh.factory<_i21.IThemeService>(
      () => _i21.ThemeService(get<_i11.IThemeRepository>()));
  gh.lazySingleton<_i22.OAuthStorage>(
      () => _i23.HiveOauthStorage(get<_i5.Box<String>>(instanceName: 'oauth')));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i24.ClientApi>(() => _i24.ClientApi(get<_i6.Dio>(),
      baseUrl: get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i11.IPatientRepository>(
      () => _i25.PatientRepository(get<_i24.ClientApi>()));
  gh.lazySingleton<_i22.OAuth>(() => registerModule.oauth(
      get<String>(instanceName: 'baseUrl'),
      get<_i6.Dio>(),
      get<_i22.OAuthStorage>()));
  gh.lazySingleton<_i11.IAuthRepository>(
      () => _i26.AuthRepository(get<_i22.OAuth>()));
  gh.lazySingleton<_i27.IAuthService>(
      () => _i27.AuthService(authRepository: get<_i11.IAuthRepository>()));
  return get;
}

class _$RegisterModule extends _i28.RegisterModule {}
