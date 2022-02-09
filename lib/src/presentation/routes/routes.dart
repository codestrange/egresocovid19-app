import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/routes/listenable.dart';
import 'package:egresocovid19/src/presentation/routes/locations.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Routes {
  Routes(this.listenable);

  final RoutesListenable listenable;

  static const privatePathPatterns = ['/login'];

  late final routerDelegate = BeamerDelegate(
    guards: [
      BeamGuard(
        pathPatterns: privatePathPatterns,
        check: (_, __) => GetIt.I<IAuthBloc>()
            .state
            .maybeWhen(unauthenticated: () => false, orElse: () => true),
        beamToNamed: (origin, target) => '/login',
        guardNonMatching: true,
      ),
      BeamGuard(
        pathPatterns: privatePathPatterns,
        check: (_, __) => !GetIt.I<IAuthBloc>()
            .state
            .maybeWhen(unauthenticated: () => false, orElse: () => true),
        beamToNamed: (origin, target) => '/patients',
      ),
    ],
    routeListener: (routeInformation, delegate) {
      log('BeamTo: ${routeInformation.location}');
    },
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        AuthLocation(),
        HomeLocation(),
        NotFoundLocation(),
      ],
    ),
    initialPath: '/patients',
    updateListenable: listenable,
  );

  final routeInformationParser = BeamerParser();

  late final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
    fallbackToBeamBack: false,
  );
}
