import 'dart:async';

import 'package:dio/dio.dart';
import 'package:egresocovid19/src/core/dependencies/dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async => $initGetIt(GetIt.I);

@module
abstract class RegisterModule {
  Dio get dio => Dio()..interceptors.add(PrettyDioLogger());

  @Named('baseUrl')
  String get baseUrl {
    const defaultApiUrl = 'https://egresocovid19.herokuapp.com/api/v1/';
    return const String.fromEnvironment('ApiUrl', defaultValue: defaultApiUrl);
  }

  @Named('theme')
  @preResolve
  Future<Box<int>> get themeBox => Hive.openBox('theme');

  @Named('locale')
  @preResolve
  Future<Box<String>> get localeBox => Hive.openBox('locale');
}
