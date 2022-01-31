import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/routes/locations.dart';
import 'package:get_it/get_it.dart';

class Routes {
  static final routerDelegate = BeamerDelegate(
    guards: [
      BeamGuard(
        pathPatterns: ['/login', '/checking'],
        check: (_, __) => GetIt.I<IAuthService>().isLoggedIn,
        beamToNamed: (origin, target) => '/login',
        guardNonMatching: true,
      ),
      BeamGuard(
        pathPatterns: ['/login', '/checking'],
        check: (_, __) => !GetIt.I<IAuthService>().isLoggedIn,
        beamToNamed: (origin, target) => '/patients',
      ),
    ],
    routeListener: (routeInformation, delegate) {
      log('BeamTo: ${routeInformation.location}');
    },
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
        CheckingLocation(),
        AuthLocation(),
        NotFoundLocation(),
      ],
    ),
    initialPath: '/patients',
  );

  static final routeInformationParser = BeamerParser();

  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
    fallbackToBeamBack: false,
  );
}
