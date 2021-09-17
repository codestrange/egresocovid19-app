import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class PatienDetailBasicEditPage extends StatelessWidget {
  const PatienDetailBasicEditPage({
    Key? key,
    required this.patiendId,
  }) : super(key: key);

  final String patiendId;

  static BeamPage getPage(BuildContext context, String patiendId) {
    return BeamPage(
      key: ValueKey('patient-basic-edit-$patiendId'),
      title: getTitle(context, 'Editar'),
      child: PatienDetailBasicEditPage(patiendId: patiendId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
