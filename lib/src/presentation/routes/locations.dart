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

class CheckingLocation extends BeamLocation {
  @override
  List<String> get pathPatterns => ['/checking'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return [
      CheckingPage.getPage(context),
    ];
  }
}

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/',
        '/patients',
        '/patients/new',
        '/patients/:$PATIENT_ID/view',
        '/patients/:$PATIENT_ID/basic-edit',
        '/patients/:$PATIENT_ID/egreso-edit',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      HomePage.getPage(context),
      if (state.contains(0, 'patients')) ...[
        if (state.contains(1, 'new')) PatienCreatePage.getPage(context),
        if (state.contains(2, 'view'))
          PatienDetailViewPage.getPage(context, state.patientId),
        if (state.contains(2, 'basic-edit'))
          PatienDetailBasicEditPage.getPage(context, state.patientId),
        if (state.contains(2, 'egreso-edit'))
          PatienDetailEgresoEditPage.getPage(context, state.patientId),
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
