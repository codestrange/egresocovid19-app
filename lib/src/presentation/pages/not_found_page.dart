import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('notfound'),
      title: 'Not Found',
      type: BeamPageType.fadeTransition,
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
              context.beamToNamed('/');
            },
            child: const Text('Not found, go to home.'),
          ),
        ),
      ),
    );
  }
}
