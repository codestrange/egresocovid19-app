import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
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
      title: getTitle(
        context,
        Messages.of(context)!.patientViewPageTitle,
      ),
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
          Messages.of(context)!.patientViewAppBarTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => context
                .read<IPatientViewBloc>()
                .add(PatientViewEvent.fetch(patientId)),
          ),
        ],
      ),
      body: _PatientViewBody(patientId: patientId),
    );
  }
}

class _PatientViewBody extends StatelessWidget {
  const _PatientViewBody({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IPatientViewBloc, PatientViewState>(
      builder: (context, state) {
        return state.when(
          fetchInProgress: () {
            return const _PatientViewBodyFetchInProgress();
          },
          fetchSuccess: (patient) {
            return _PatientViewBodyFetchSuccess(
              patient: patient,
            );
          },
          fetchFailure: (_) {
            return _PatientViewBodyFetchFailure(
              patientId: patientId,
            );
          },
        );
      },
    );
  }
}

class _PatientViewBodyFetchFailure extends StatelessWidget {
  const _PatientViewBodyFetchFailure({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            Messages.of(context)!.patientViewErrorMessage,
          ),
          MainButton(
            text: Messages.of(context)!.patientViewErrorRetry,
            onPressed: () {
              context
                  .read<IPatientViewBloc>()
                  .add(PatientViewEvent.fetch(patientId));
            },
          ),
        ],
      ),
    );
  }
}

class _PatientViewBodyFetchSuccess extends StatelessWidget {
  const _PatientViewBodyFetchSuccess({
    Key? key,
    required this.patient,
  }) : super(key: key);

  final PatientGetDetailEntity patient;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              _PatientViewBasicInfo(
                patient: patient,
              ),
              const Divider(),
              _PatientViewEgresoInfo(
                patient: patient,
              ),
            ],
          ),
        ),
        _PatientViewBodyFetchSucessBottom(
          patientId: patient.id,
        ),
      ],
    );
  }
}

class _PatientViewBodyFetchSucessBottom extends StatelessWidget {
  const _PatientViewBodyFetchSucessBottom({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: MainButton(
              text: 'Editar Info de Base',
              onPressed: () {
                context.beamToNamed(
                  '/patients/$patientId/edit',
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
                  '/patients/$patientId/editegreso',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _PatientViewEgresoInfo extends StatelessWidget {
  const _PatientViewEgresoInfo({
    Key? key,
    required this.patient,
  }) : super(key: key);

  final PatientGetDetailEntity patient;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            Messages.of(context)!.patientViewFieldEgresoTitle,
          ),
        ),
        if (patient.dischargeOfPositiveCasesOfCovid19.detectionDate != null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.detectionDate!
                  .toString(),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoDetectionDate,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.symptoms != null &&
            patient.dischargeOfPositiveCasesOfCovid19.symptoms!.isNotEmpty)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.symptoms!
                  .reduce((a, b) => '$a, $b'),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoSymptoms,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.durationOfSymptoms !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.durationOfSymptoms!
                  .toString(),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoDurationOfSymptoms,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.diagnosisWay != null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.diagnosisWay!
                  .visualName(context),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoDiagnosisWay,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.testUsedInDiagnosis !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.testUsedInDiagnosis!
                  .visualName(context),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoTestUsedInDiagnosis,
            ),
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
            subtitle: Text(
              Messages.of(context)!
                  .patientViewFieldEgresoDaysFromSymptomsToDiagnosis,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.numberPcrPerformed !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.numberPcrPerformed!
                  .toString(),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoNumberPcrPerformed,
            ),
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
            subtitle: Text(
              Messages.of(context)!
                  .patientViewFieldEgresoTimeFromDiagnosisToNegativeOrDischarge,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.formOfContagion != null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.formOfContagion!
                  .visualName(context),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoFormOfContagion,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.wasHePartOfAnEvent !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.wasHePartOfAnEvent!
                  .yesOrNo(context),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoWasHePartOfAnEvent,
            ),
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
            subtitle: Text(
              Messages.of(context)!
                  .patientViewFieldEgresoDidHeWorkInTheAttentionToPositiveCases,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.hospitalizationTime !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.hospitalizationTime!,
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoHospitalizationTime,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.incomes != null &&
            patient.dischargeOfPositiveCasesOfCovid19.incomes!.isNotEmpty)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.incomes!
                  .map(
                    (a) => '${a.income.visualName(context)}: ${a.days}',
                  )
                  .reduce((a, b) => '$a, $b'),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoIncomes,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.contactsFirstLevel !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.contactsFirstLevel!
                  .toString(),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoContactsFirstLevel,
            ),
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
            subtitle: Text(
              Messages.of(context)!
                  .patientViewFieldEgresoContactsFirstLevelPositives,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.contactsSecondLevel !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.contactsSecondLevel!
                  .toString(),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoContactsSecondLevel,
            ),
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
            subtitle: Text(
              Messages.of(context)!
                  .patientViewFieldEgresoContactsSecondLevelPositives,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.contactsThirdLevel !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.contactsThirdLevel!
                  .toString(),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoContactsThirdLevel,
            ),
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
            subtitle: Text(
              Messages.of(context)!
                  .patientViewFieldEgresoContactsThirdLevelPositives,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.treatmentsReceived !=
                null &&
            patient.dischargeOfPositiveCasesOfCovid19.treatmentsReceived!
                .isNotEmpty)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.treatmentsReceived!
                  .map((e) => e.visualName(context))
                  .reduce((a, b) => '$a, $b'),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoTreatmentsReceived,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.antibiotics != null &&
            patient.dischargeOfPositiveCasesOfCovid19.antibiotics!.isNotEmpty)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.antibiotics!
                  .reduce((a, b) => '$a, $b'),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoAntibiotics,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.prophylaxis != null &&
            patient.dischargeOfPositiveCasesOfCovid19.prophylaxis!.isNotEmpty)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.prophylaxis!
                  .map((e) => e.visualName(context))
                  .reduce((a, b) => '$a, $b'),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoProphylaxis,
            ),
          ),
        if (patient
                .dischargeOfPositiveCasesOfCovid19.anotherVaccineAgainstCovid !=
            null)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19
                  .anotherVaccineAgainstCovid!,
            ),
            subtitle: Text(
              Messages.of(context)!
                  .patientViewFieldEgresoAnotherVaccineAgainstCovid,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.aftermath != null &&
            patient.dischargeOfPositiveCasesOfCovid19.aftermath!.isNotEmpty)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.aftermath!
                  .map((e) => e.visualName(context))
                  .reduce((a, b) => '$a, $b'),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoAftermath,
            ),
          ),
        if (patient.dischargeOfPositiveCasesOfCovid19.othersAftermath != null &&
            patient
                .dischargeOfPositiveCasesOfCovid19.othersAftermath!.isNotEmpty)
          ListTile(
            dense: true,
            title: Text(
              patient.dischargeOfPositiveCasesOfCovid19.othersAftermath!
                  .reduce((a, b) => '$a, $b'),
            ),
            subtitle: Text(
              Messages.of(context)!.patientViewFieldEgresoOthersAftermath,
            ),
          ),
      ],
    );
  }
}

class _PatientViewBasicInfo extends StatelessWidget {
  const _PatientViewBasicInfo({
    Key? key,
    required this.patient,
  }) : super(key: key);

  final PatientGetDetailEntity patient;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          title: Text(
            '${patient.firstname} ${patient.lastname}',
          ),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldFirstnameAndLastname,
          ),
        ),
        ListTile(
          dense: true,
          title: Text(patient.ci),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldCI,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                dense: true,
                title: Text(
                  patient.sex.visualName(context),
                ),
                subtitle: Text(
                  Messages.of(context)!.patientViewFieldSex,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                dense: true,
                title: Text(patient.age.toString()),
                subtitle: Text(
                  Messages.of(context)!.patientViewFieldAge,
                ),
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
                ),
                subtitle: Text(
                  Messages.of(context)!.patientViewFieldSkinColor,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                dense: true,
                title: Text(
                  patient.bloodType?.visualName(context) ??
                      Messages.of(context)!.patientViewFieldBloodTypeUnknow,
                ),
                subtitle: Text(
                  Messages.of(context)!.patientViewFieldBloodType,
                ),
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
                subtitle: Text(
                  Messages.of(context)!.patientViewFieldProvince,
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                dense: true,
                title: Text(patient.municipality),
                subtitle: Text(
                  Messages.of(context)!.patientViewFieldMunicipality,
                ),
              ),
            ),
          ],
        ),
        ListTile(
          dense: true,
          title: Text(patient.address),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldAddress,
          ),
        ),
        ListTile(
          dense: true,
          title: Text(patient.polyclinic ?? Messages.of(context)!.unknown),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldPolyclinic,
          ),
        ),
        ListTile(
          dense: true,
          title: Text(patient.surgery ?? Messages.of(context)!.unknown),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldSurgery,
          ),
        ),
        ListTile(
          dense: true,
          title: Text(patient.popularCouncil ?? Messages.of(context)!.unknown),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldPopularCouncil,
          ),
        ),
        ListTile(
          dense: true,
          title: Text(patient.neighborhood ?? Messages.of(context)!.unknown),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldNeighborhood,
          ),
        ),
        ListTile(
          dense: true,
          title: Text(
            patient.blockNumber?.toString() ??
                Messages.of(context)!.patientViewFieldBlockNumberUnknow,
          ),
          subtitle: Text(
            Messages.of(context)!.patientViewFieldBlockNumber,
          ),
        ),
        const Divider(),
        Center(
          child: Text(
            Messages.of(context)!.patientViewFieldPersonalPathologicalHistory,
          ),
        ),
        ...[
          for (final patologial in patient.personalPathologicalHistory)
            ListTile(
              dense: true,
              title: Text(
                '${Messages.of(context)!.patientViewFieldPathologicalTitle}: ${patologial.name}',
              ),
              subtitle: Text(
                '${Messages.of(context)!.patientViewFieldPathologicalSubtitle}: ${patologial.treatments}',
              ),
            ),
        ],
        if (patient.personalPathologicalHistory.isEmpty)
          ListTile(
            dense: true,
            title: Text(
              Messages.of(context)!
                  .patientViewFieldPersonalPathologicalHistoryEmpty,
            ),
          ),
        const Divider(),
        Center(
          child: Text(
            Messages.of(context)!.patientViewFieldFamilyPathologicalHistory,
          ),
        ),
        ...[
          for (final patologial in patient.familyPathologicalHistory)
            ListTile(
              dense: true,
              title: Text(
                '${Messages.of(context)!.patientViewFieldPathologicalTitle}: ${patologial.name}',
              ),
              subtitle: Text(
                '${Messages.of(context)!.patientViewFieldPathologicalSubtitle}: ${patologial.treatments}',
              ),
            ),
        ],
        if (patient.familyPathologicalHistory.isEmpty)
          ListTile(
            dense: true,
            title: Text(
              Messages.of(context)!
                  .patientViewFieldFamilyPathologicalHistoryEmpty,
            ),
          ),
      ],
    );
  }
}

class _PatientViewBodyFetchInProgress extends StatelessWidget {
  const _PatientViewBodyFetchInProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
