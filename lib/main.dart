import 'dart:async';
import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/core/app.dart';
import 'package:egresocovid19/src/core/dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Beamer.setPathUrlStrategy();
      // await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      await Hive.initFlutter();
      await configureDependencies();
      Bloc.observer = GetIt.I();
      runApp(App());
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
