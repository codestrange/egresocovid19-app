import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class PatienCreatePage extends StatelessWidget {
  const PatienCreatePage({
    Key? key,
  }) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('new-patient'),
      title: getTitle(context, 'Nuevo'),
      child: const PatienCreatePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
