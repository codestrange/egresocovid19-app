import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class CheckingPage extends StatelessWidget {
  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('checking'),
      title: getTitle(context, 'Comprobando'),
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
