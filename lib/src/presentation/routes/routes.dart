import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/routes/locations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Routes {
  static final routerDelegate = BeamerDelegate(
    guards: [
      BeamGuard(
        pathPatterns: ['/login', '/checking'],
        check: (context, location) => GetIt.I<IAuthService>().isLoggedIn,
        beamToNamed: '/login',
        guardNonMatching: true,
      ),
      BeamGuard(
        pathPatterns: ['/login', '/checking'],
        check: (context, location) => !GetIt.I<IAuthService>().isLoggedIn,
        beamToNamed: '/',
      ),
    ],
    routeListener: _listener,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
        CheckingLocation(),
        AuthLocation(),
        NotFoundLocation(),
      ],
    ),
  );

  static void _listener(
    RouteInformation routeInformation,
    BeamLocation<RouteInformationSerializable> location,
  ) {
    log('BeamTo: ${routeInformation.location}');
  }

  static final routeInformationParser = BeamerParser();

  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
    fallbackToBeamBack: false,
  );
}
