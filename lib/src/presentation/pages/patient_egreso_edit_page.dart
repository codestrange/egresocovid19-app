import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PatientEgresoEditPage extends StatelessWidget {
  const PatientEgresoEditPage({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  static BeamPage getPage(BuildContext context, String patientId) {
    return BeamPage(
      key: ValueKey('patient-egreso-edit-$patientId'),
      title: getTitle(context, 'Editar'),
      child: PatientEgresoEditPage(patientId: patientId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IPatientEgresoEditBloc>(
      create: (_) => GetIt.I()..add(PatientEgresoEditEvent.fetch(patientId)),
      child: const _PatientEgresoEditPageInternal(),
    );
  }
}

class _PatientEgresoEditPageInternal extends StatelessWidget {
  const _PatientEgresoEditPageInternal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
