import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class CheckingPage extends StatelessWidget {
  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('checking'),
      title: getTitle(
        context,
        Messages.of(context)!.checkingPageTitle,
      ),
      child: CheckingPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
