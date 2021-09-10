import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class CheckingPage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('checking'),
      title: 'Checking',
      type: BeamPageType.fadeTransition,
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
