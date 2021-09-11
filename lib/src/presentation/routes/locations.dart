import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

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

class HomeLocation extends BeamLocation {
  @override
  List<String> get pathPatterns => ['/'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return [
      HomePage.getPage(context),
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
