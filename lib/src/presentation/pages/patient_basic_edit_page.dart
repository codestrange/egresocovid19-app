import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PatientBasicEditPage extends StatelessWidget {
  const PatientBasicEditPage({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  static BeamPage getPage(BuildContext context, String patientId) {
    return BeamPage(
      key: ValueKey('patient-basic-edit-$patientId'),
      title: getTitle(context, 'Editar'),
      child: PatientBasicEditPage(patientId: patientId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IPatientBasicEditBloc>(
      create: (_) => GetIt.I()..add(PatientBasicEditEvent.fetch(patientId)),
      child: const _PatientBasicEditPageInternal(),
    );
  }
}

class _PatientBasicEditPageInternal extends StatelessWidget {
  const _PatientBasicEditPageInternal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
