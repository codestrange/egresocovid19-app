import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('notfound'),
      title: getTitle(context, 'Página desconocida'),
      child: NotFoundPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () {
              context.beamToNamed('/patients');
            },
            child: const Text('Not found, go to home.'),
          ),
        ),
      ),
    );
  }
}
