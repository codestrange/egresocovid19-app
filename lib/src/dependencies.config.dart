// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************


import 'package:egresocovid19/src/domain/repositories/repositories.dart'
    as _i11;
import 'package:egresocovid19/src/domain/services/auth_service.dart' as _i39;
import 'package:egresocovid19/src/domain/services/autocomplete_service.dart'

import 'package:egresocovid19/src/domain/services/theme_service.dart' as _i21;
import 'package:egresocovid19/src/presentation/blocs/auth/auth_bloc.dart'
    as _i7;
import 'package:egresocovid19/src/presentation/blocs/home/home_bloc.dart'

import 'package:egresocovid19/src/presentation/blocs/locale/locale_bloc.dart'
    as _i10;
import 'package:egresocovid19/src/presentation/blocs/login/login_bloc.dart'
    as _i14;
import 'package:egresocovid19/src/presentation/blocs/neighborhood/neighborhood_autocomplete_bloc.dart'

import 'package:egresocovid19/src/presentation/blocs/patient_basic_edit/patient_basic_edit_bloc.dart'
    as _i15;
import 'package:egresocovid19/src/presentation/blocs/patient_create/patient_create_bloc.dart'
    as _i16;
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit/patient_egreso_edit_bloc.dart'
    as _i17;
import 'package:egresocovid19/src/presentation/blocs/patient_view/patient_view_bloc.dart'
    as _i18;
import 'package:egresocovid19/src/presentation/blocs/polyclinic/polyclinic_autocomplete_bloc.dart'

import 'package:egresocovid19/src/presentation/blocs/theme/theme_bloc.dart'
    as _i19;
import 'package:egresocovid19/src/presentation/utils/app_bloc_observer.dart'
    as _i4;
import 'package:flutter_bloc/flutter_bloc.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:oauth_dio/oauth_dio.dart'


// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BlocObserver>(() => _i4.AppBlocObserver());

  return get;
}

class _$RegisterModule extends _i40.RegisterModule {}
