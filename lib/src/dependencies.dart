import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:egresocovid19/src/dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:oauth_dio/oauth_dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@InjectableInit(preferRelativeImports: false)
Future<void> configureDependencies() async => $initGetIt(GetIt.I);

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => Dio()
    ..interceptors.add(PrettyDioLogger(
      responseBody: false,
      compact: false,
      logPrint: (e) => log(e.toString()),
    ));

  @lazySingleton
  OAuth oauth(
    @Named('baseUrl') String baseUrl,
    Dio dio,
    OAuthStorage storage,
  ) {
    return OAuth(
      tokenUrl: '${baseUrl}auth/token',
      clientId: '',
      clientSecret: '',
      dio: dio,
      storage: storage,
    );
  }

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

  @Named('oauth')
  @preResolve
  Future<Box<String>> get oauthBox => Hive.openBox('oauth');
}
