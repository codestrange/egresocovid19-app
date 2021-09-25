import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
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
      title: getTitle(context, 'Detalles'), // TODO
      child: PatientViewPage(patientId: patientId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IPatientViewBloc>(
      create: (_) => GetIt.I()..add(PatientViewEvent.fetch(patientId)),
      child: _PatientViewPageInternal(patientId: patientId),
    );
  }
}

class _PatientViewPageInternal extends StatelessWidget {
  const _PatientViewPageInternal({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          'Detalles del Paciente', // TODO
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      body: BlocBuilder<IPatientViewBloc, PatientViewState>(
        builder: (context, state) {
          return state.when(
            fetchInProgress: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            fetchSuccess: (patient) {
              return Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          dense: true,
                          title: Text(
                            '${patient.firstname} ${patient.lastname}',
                          ),
                          subtitle: const Text(
                            'Nombre(s) y Apellido(s)', // TODO
                          ),
                        ),
                        ListTile(
                          dense: true,
                          title: Text(patient.ci),
                          subtitle: const Text('Carnet de identidad'), // TODO
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                dense: true,
                                title: Text(
                                  patient.sex.visualName(context),
                                ), // TODO
                                subtitle: const Text('Sexo'), // TODO
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                dense: true,
                                title: Text(patient.age.toString()),
                                subtitle: const Text('Edad'), // TODO
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                dense: true,
                                title: Text(
                                  patient.skinColor.visualName(context),
                                ), // TODO
                                subtitle: const Text('Color de Piel'), // TODO
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                dense: true,
                                title: Text(
                                  patient.bloodType?.visualName(context) ??
                                      'Desconocido', // TODO
                                ),
                                subtitle: const Text('Tipo de Sangre'), // TODO
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ListTile(
                                dense: true,
                                title: Text(patient.province),
                                subtitle: const Text('Provincia'), // TODO
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                dense: true,
                                title: Text(patient.municipality),
                                subtitle: const Text('Municipio'), // TODO
                              ),
                            ),
                          ],
                        ),
                        ListTile(
                          dense: true,
                          title: Text(patient.address),
                          subtitle: const Text('Dirección'), // TODO
                        ),
                        ListTile(
                          dense: true,
                          title: Text(patient.polyclinic),
                          subtitle: const Text('Policlinico'), // TODO
                        ),
                        ListTile(
                          dense: true,
                          title: Text(patient.surgery),
                          subtitle: const Text('Consultorio'), // TODO
                        ),
                        ListTile(
                          dense: true,
                          title: Text(patient.popularCouncil),
                          subtitle: const Text('Consejo Popular'), // TODO
                        ),
                        ListTile(
                          dense: true,
                          title: Text(patient.neighborhood),
                          subtitle: const Text('Barrio'), // TODO
                        ),
                        ListTile(
                          dense: true,
                          title: Text(patient.blockNumber.toString()),
                          subtitle: const Text('No. Manzana'), // TODO
                        ),
                        const Divider(),
                        const Center(
                          child: Text('Patologías Personales'), // TODO
                        ),
                        ...[
                          for (final patologial
                              in patient.personalPathologicalHistory)
                            ListTile(
                              dense: true,
                              title:
                                  Text('Patología: ${patologial.name}'), // TODO
                              subtitle: Text(
                                'Tratamientos: ${patologial.treatments}',
                              ), // TODO
                            ),
                        ],
                        if (patient.personalPathologicalHistory.isEmpty)
                          const ListTile(
                            dense: true,
                            title: Text('Sin patologias personales'), // TODO
                          ),
                        const Divider(),
                        const Center(
                          child: Text('Patologías Familiares'), // TODO
                        ),
                        ...[
                          for (final patologial
                              in patient.familyPathologicalHistory)
                            ListTile(
                              dense: true,
                              title:
                                  Text('Patología: ${patologial.name}'), // TODO
                              subtitle: Text(
                                'Tratamientos: ${patologial.treatments}',
                              ), // TODO
                            ),
                        ],
                        if (patient.familyPathologicalHistory.isEmpty)
                          const ListTile(
                            dense: true,
                            title: Text('Sin patologias familiares'), // TODO
                          ),
                        const Divider(),
                        const Center(
                          child: Text('Información de Egreso'), // TODO
                        ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .detectionDate !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .detectionDate!
                                  .toString(),
                            ),
                            subtitle: const Text('Fecha de detección'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                    .symptoms !=
                                null &&
                            patient.dischargeOfPositiveCasesOfCovid19.symptoms!
                                .isNotEmpty)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient
                                  .dischargeOfPositiveCasesOfCovid19.symptoms!
                                  .reduce((a, b) => '$a, $b'),
                            ),
                            subtitle: const Text('Sintomas'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .durationOfSymptoms !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .durationOfSymptoms!
                                  .toString(),
                            ),
                            subtitle: const Text(
                              'Duración de los sintomas desde el 1ro',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .diagnosisWay !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .diagnosisWay!
                                  .visualName(context),
                            ), // TODO
                            subtitle:
                                const Text('Forma de diagnóstico'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .testUsedInDiagnosis !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .testUsedInDiagnosis!
                                  .visualName(context),
                            ), // TODO
                            subtitle: const Text(
                              'Test usado en el diagnóstico',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .daysFromSymptomsToDiagnosis !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .daysFromSymptomsToDiagnosis!
                                  .toString(),
                            ),
                            subtitle: const Text(
                              'Cantidad de días entre el inicio de los síntomas y el diagnóstico',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .numberPcrPerformed !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .numberPcrPerformed!
                                  .toString(),
                            ),
                            subtitle: const Text(
                              'Número de Test/PCR realizados',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .timeFromDiagnosisToNegativeOrDischarge !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .timeFromDiagnosisToNegativeOrDischarge!
                                  .toString(),
                            ),
                            subtitle: const Text(
                              'Tiempo tardado en negativizar o en recibir el alta clínica a partir del diagnóstico',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .formOfContagion !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .formOfContagion!
                                  .visualName(context),
                            ),
                            subtitle: const Text('Forma de contagio'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .wasHePartOfAnEvent !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .wasHePartOfAnEvent!
                                  .yesOrNo(context),
                            ),
                            subtitle: const Text(
                              '¿Formó parte de un Evento?',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .didHeWorkInTheAttentionToPositiveCases !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .didHeWorkInTheAttentionToPositiveCases!
                                  .yesOrNo(context),
                            ),
                            subtitle: const Text(
                              '¿Trabajaba en la atención a casos positivos?',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .hospitalizationTime !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .hospitalizationTime!,
                            ),
                            subtitle:
                                const Text('Tiempo de hospitalización'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19.incomes !=
                                null &&
                            patient.dischargeOfPositiveCasesOfCovid19.incomes!
                                .isNotEmpty)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19.incomes!
                                  .map(
                                    (a) =>
                                        '${a.income.visualName(context)}: ${a.days}',
                                  )
                                  .reduce((a, b) => '$a, $b'),
                            ),
                            subtitle: const Text('Ingresos'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .contactsFirstLevel !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .contactsFirstLevel!
                                  .toString(),
                            ),
                            subtitle:
                                const Text('Contactos de 1er anillo'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .contactsFirstLevelPositives !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .contactsFirstLevelPositives!
                                  .toString(),
                            ),
                            subtitle: const Text(
                              'Contactos de 1er anillo positivos',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .contactsSecondLevel !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .contactsSecondLevel!
                                  .toString(),
                            ),
                            subtitle:
                                const Text('Contactos de 2do anillo'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .contactsSecondLevelPositives !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .contactsSecondLevelPositives!
                                  .toString(),
                            ),
                            subtitle: const Text(
                              'Contactos de 2do anillo positivos',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .contactsThirdLevel !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .contactsThirdLevel!
                                  .toString(),
                            ),
                            subtitle:
                                const Text('Contactos de 3er anillo'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .contactsThirdLevelPositives !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .contactsThirdLevelPositives!
                                  .toString(),
                            ),
                            subtitle: const Text(
                              'Contactos de 3er anillo positivos',
                            ), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                    .treatmentsReceived !=
                                null &&
                            patient.dischargeOfPositiveCasesOfCovid19
                                .treatmentsReceived!.isNotEmpty)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .treatmentsReceived!
                                  .map((e) => e.visualName(context))
                                  .reduce((a, b) => '$a, $b'),
                            ),
                            subtitle:
                                const Text('Tratamiento recibido'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                    .antibiotics !=
                                null &&
                            patient.dischargeOfPositiveCasesOfCovid19
                                .antibiotics!.isNotEmpty)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .antibiotics!
                                  .reduce((a, b) => '$a, $b'),
                            ),
                            subtitle: const Text('Antibióticos'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                    .prophylaxis !=
                                null &&
                            patient.dischargeOfPositiveCasesOfCovid19
                                .prophylaxis!.isNotEmpty)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .prophylaxis!
                                  .map((e) => e.visualName(context))
                                  .reduce((a, b) => '$a, $b'),
                            ),
                            subtitle:
                                const Text('Realizó profilaxis con'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                .anotherVaccineAgainstCovid !=
                            null)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .anotherVaccineAgainstCovid!,
                            ),
                            subtitle:
                                const Text('Otra vacuna anti COVID-19'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                    .aftermath !=
                                null &&
                            patient.dischargeOfPositiveCasesOfCovid19.aftermath!
                                .isNotEmpty)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient
                                  .dischargeOfPositiveCasesOfCovid19.aftermath!
                                  .map((e) => e.visualName(context))
                                  .reduce((a, b) => '$a, $b'),
                            ),
                            subtitle: const Text('Secuelas'), // TODO
                          ),
                        if (patient.dischargeOfPositiveCasesOfCovid19
                                    .othersAftermath !=
                                null &&
                            patient.dischargeOfPositiveCasesOfCovid19
                                .othersAftermath!.isNotEmpty)
                          ListTile(
                            dense: true,
                            title: Text(
                              patient.dischargeOfPositiveCasesOfCovid19
                                  .othersAftermath!
                                  .reduce((a, b) => '$a, $b'),
                            ),
                            subtitle: const Text('Otras secuelas'), // TODO
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: MainButton(
                            text: 'Editar Info de Base',
                            onPressed: () {
                              context.beamToNamed(
                                '/patients/${patient.id}/edit',
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: MainButton(
                            text: 'Editar Info de Egreso',
                            onPressed: () {
                              context.beamToNamed(
                                '/patients/${patient.id}/editegreso',
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            fetchFailure: (_) {
              return Center(
                child: Column(
                  children: [
                    const Text(
                      'Ha ocurrido un error durante la '
                      'obtención de la información del paciente.', // TODO
                    ),
                    MainButton(
                      text: 'Reintentar',
                      onPressed: () {
                        context
                            .read<IPatientViewBloc>()
                            .add(PatientViewEvent.fetch(patientId));
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
