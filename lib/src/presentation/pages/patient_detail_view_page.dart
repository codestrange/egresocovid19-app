import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class PatienDetailViewPage extends StatelessWidget {
  const PatienDetailViewPage({
    Key? key,
    required this.patiendId,
  }) : super(key: key);

  final String patiendId;

  static BeamPage getPage(BuildContext context, String patiendId) {
    return BeamPage(
      key: const ValueKey('patient-detail'),
      title: getTitle(context, 'Detalles'),
      child: PatienDetailViewPage(patiendId: patiendId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
