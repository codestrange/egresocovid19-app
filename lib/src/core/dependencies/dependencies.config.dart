// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:egresocovid19/src/core/dependencies/dependencies.dart' as _i16;
import 'package:egresocovid19/src/core/utils/app_bloc_observer.dart' as _i4;
import 'package:egresocovid19/src/data/data_sources/client_api.dart' as _i15;
import 'package:egresocovid19/src/data/repositories/locale_repository.dart'
    as _i10;
import 'package:egresocovid19/src/data/repositories/theme_repository.dart'
    as _i13;
import 'package:egresocovid19/src/domain/repositories/repositories.dart' as _i9;
import 'package:egresocovid19/src/domain/services/locale_service.dart' as _i11;
import 'package:egresocovid19/src/domain/services/services.dart' as _i8;
import 'package:egresocovid19/src/domain/services/theme_service.dart' as _i14;
import 'package:egresocovid19/src/presentation/blocs/locale/locale_bloc.dart'
    as _i7;
import 'package:egresocovid19/src/presentation/blocs/theme/theme_bloc.dart'
    as _i12;
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.Dio>(() => registerModule.dio);
  gh.factory<_i7.ILocaleBloc>(() => _i7.LocaleBloc(get<_i8.ILocaleService>()));
  gh.factory<_i9.ILocaleRepository>(() =>
      _i10.LocaleRepository(get<_i5.Box<String>>(instanceName: 'locale')));
  gh.factory<_i11.ILocaleService>(
      () => _i11.LocaleService(get<_i9.ILocaleRepository>()));
  gh.factory<_i12.IThemeBloc>(() => _i12.ThemeBloc(get<_i8.IThemeService>()));
  gh.factory<_i9.IThemeRepository>(
      () => _i13.ThemeRepository(get<_i5.Box<int>>(instanceName: 'theme')));
  gh.factory<_i14.IThemeService>(
      () => _i14.ThemeService(get<_i9.IThemeRepository>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i15.ClientApi>(() => _i15.ClientApi(get<_i6.Dio>(),
      baseUrl: get<String>(instanceName: 'baseUrl')));
  return get;
}

class _$RegisterModule extends _i16.RegisterModule {}
