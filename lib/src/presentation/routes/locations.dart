import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

const String PATIENT_ID = 'patient_id';

extension _BeamStateParams on BeamState {
  String get patientId => pathParameters[PATIENT_ID] ?? '';

  bool contains(int index, String match) {
    if (uri.pathSegments.length <= index) return false;

    return uri.pathSegments[index] == match;
  }

  bool lenGreaterThan(int len) => uri.pathSegments.length > len;
}

class AuthLocation extends BeamLocation {
  @override
  List<String> get pathPatterns => ['/login'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return [
      LoginPage.getPage(context),
    ];
  }
}

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/',
        '/patients',
        '/patients/new',
        '/patients/:$PATIENT_ID',
        '/patients/:$PATIENT_ID/edit',
        '/patients/:$PATIENT_ID/editegreso',
      ];

  // @override
  // List<BeamGuard> get guards => [
  //       BeamGuard(
  //         pathPatterns: ['/'],
  //         check: (_, __) => false,
  //         beamToNamed: '/patients',
  //       ),
  //     ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      HomePage.getPage(context),
      if (state.contains(0, 'patients') && state.lenGreaterThan(1)) ...[
        if (state.contains(1, 'new'))
          PatientCreatePage.getPage(context)
        else
          PatientViewPage.getPage(context, state.patientId),
        if (state.contains(2, 'edit'))
          PatientBasicEditPage.getPage(context, state.patientId),
        if (state.contains(2, 'editegreso'))
          PatientEgresoEditPage.getPage(context, state.patientId)
      ]
    ];
  }
}

class NotFoundLocation extends BeamLocation {
  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return [
      NotFoundPage.getPage(context),
    ];
  }
}
