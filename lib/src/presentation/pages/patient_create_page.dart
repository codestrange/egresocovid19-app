import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class PatientCreatePage extends StatelessWidget {
  const PatientCreatePage({
    Key? key,
  }) : super(key: key);

  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('patient-create'),
      title: getTitle(context, 'Nuevo'),
      child: const PatientCreatePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IPatientCreateBloc>(
      create: (_) => GetIt.I(),
      child: const _PatientCreatePageInternal(),
    );
  }
}

class _PatientCreatePageInternal extends StatelessWidget {
  const _PatientCreatePageInternal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
