import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class PatienDetailEgresoEditPage extends StatelessWidget {
  const PatienDetailEgresoEditPage({
    Key? key,
    required this.patiendId,
  }) : super(key: key);

  final String patiendId;

  static BeamPage getPage(BuildContext context, String patiendId) {
    return BeamPage(
      key: ValueKey('patient-egreso-edit-$patiendId'),
      title: getTitle(context, 'Editar'),
      child: PatienDetailEgresoEditPage(patiendId: patiendId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
