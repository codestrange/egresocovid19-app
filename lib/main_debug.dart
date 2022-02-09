import 'dart:async';

import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/dependencies.dart';
import 'package:egresocovid19/src/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Beamer.setPathUrlStrategy();
  await Hive.initFlutter();
  await configureDependencies();
  BlocOverrides.runZoned(
    () => runApp(App()),
    blocObserver: GetIt.I(),
  );
}
