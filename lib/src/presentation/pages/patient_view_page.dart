import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PatientViewPage extends StatelessWidget {
  const PatientViewPage({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  static BeamPage getPage(BuildContext context, String patientId) {
    return BeamPage(
      key: const ValueKey('patient-view'),
      title: getTitle(context, 'Detalles'),
      child: PatientViewPage(patientId: patientId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IPatientViewBloc>(
      create: (_) => GetIt.I()..add(PatientViewEvent.fetch(patientId)),
      child: const _PatientViewPageInternal(),
    );
  }
}

class _PatientViewPageInternal extends StatelessWidget {
  const _PatientViewPageInternal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
