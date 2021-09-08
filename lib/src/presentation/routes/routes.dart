import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/routes/locations.dart';

class Routes {
  static final routerDelegate = BeamerDelegate(
    listener: _listener,
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        BaseLocation(),
        NotFoundLocation(),
      ],
    ),
    initialPath: '/',
  );

  static void _listener(BeamState state, BeamLocation<BeamState> location) {
    log('BeamTo: ${state.uri}');
  }

  static final routeInformationParser = BeamerParser();

  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
  );
}
