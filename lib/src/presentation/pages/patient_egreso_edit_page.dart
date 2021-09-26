import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/diagnosis_way_enum.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egreso_edit_form_bloc.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
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
      title: getTitle(
        context,
        Messages.of(context)!.patientEditEgresoPageTitle,
      ),
      child: PatientEgresoEditPage(patientId: patientId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IPatientEgresoEditBloc>(
      create: (_) => GetIt.I()..add(PatientEgresoEditEvent.fetch(patientId)),
      child: _PatientEgresoEditPageInternal(
        patientId: patientId,
      ),
    );
  }
}

class _PatientEgresoEditPageInternal extends StatelessWidget {
  const _PatientEgresoEditPageInternal({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Messages.of(context)!.patientEditEgresoAppBarTitle,
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
        centerTitle: true,
      ),
      body: BlocConsumer<IPatientEgresoEditBloc, PatientEgresoEditState>(
        listener: (context, state) => state.when(
          initial: () => null,
          fetchInProgress: () => null,
          fetchFailure: (errorMessage) => null,
          fetchSuccess: (actualDischargeData) => null,
          updateInProgress: (newDischargeData) => null,
          updateFailure: (errorMessage, _) {
            final message =
                Messages.of(context)!.patientEditEgresoErrorSaveMessage;
            return ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red.shade900,
                content: Text(message),
              ),
            );
          },
          updateSuccess: (newDischargeData) {
            final message =
                Messages.of(context)!.patientEditEgresoSuccessMessage;
            return ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green.shade900,
                content: Text(message),
              ),
            );
          },
        ),
        builder: (context, state) => state.when(
          initial: () => buildLoading(context),
          fetchInProgress: () => buildLoading(context),
          fetchFailure: (errorMessage) => buildError(
            context,
            errorMessage,
          ),
          fetchSuccess: (actualDischargeData) =>
              buildEditBody(context, actualDischargeData),
          updateInProgress: (newDischargeData) => buildEditBody(
            context,
            newDischargeData,
            loading: true,
          ),
          updateFailure: (_, newDischargeData) => buildEditBody(
            context,
            newDischargeData,
          ),
          updateSuccess: (newDischargeData) => buildEditBody(
            context,
            newDischargeData,
          ),
        ),
      ),
    );
  }

  Widget buildLoading(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }

  Widget buildError(BuildContext context, String errorMessage) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Messages.of(context)!.patientEditEgresoErrorFetchMessage,
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () => context.read<IPatientEgresoEditBloc>().add(
                  PatientEgresoEditEvent.fetch(
                    patientId,
                  ),
                ),
            child: Text(
              Messages.of(context)!.patientEditEgresoRetry,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEditBody(
    BuildContext context,
    DischargeDataEntity actualDischargeData, {
    bool loading = false,
  }) {
    return SingleChildScrollView(
      child: BlocProvider<IPatientEgresoEditFormBloc>(
        create: (context) => GetIt.I.get(
          param1: actualDischargeData,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: _PatientEgresoEditForm(
            patientId: patientId,
          ),
        ),
      ),
    );
  }
}

class _PatientEgresoEditForm extends StatelessWidget {
  const _PatientEgresoEditForm({
    Key? key,
    required this.patientId,
  }) : super(
          key: key,
        );

  final String patientId;

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<IPatientEgresoEditFormBloc, DischargeDataEntity,
        ErrorEntity>(
      onSuccess: (data) => context.read<IPatientEgresoEditBloc>().add(
            PatientEgresoEditEvent.update(
              patientId,
              data,
            ),
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Section(
            sectionTitle: Messages.of(context)!.patientEditEgresoSymptons,
            children: [
              Flexible(
                child: _SymptomsField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _DurationOfSymptomsField(),
              ),
            ],
          ),
          Section(
            sectionTitle: Messages.of(context)!.patientEditEgresoDiagnosis,
            children: [
              Flexible(
                child: _DetectionDateField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _DiagnosisWayField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _TestUsedInDiagnosisField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _DaysFromSymptomsToDiagnosisField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _NumberPcrPerformedField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _TimeFromDiagnosisToNegativeOrDischargeField(),
              ),
            ],
          ),
          Section(
            sectionTitle:
                Messages.of(context)!.patientEditEgresoFormOfContagion,
            children: [
              Flexible(
                child: _FormOfContagionField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _WasHePartOfAnEventField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _DidHeWorkInTheAttentionToPositiveCasesField(),
              ),
            ],
          ),
          Section(
            sectionTitle:
                Messages.of(context)!.patientEditEgresoHospitalizationTime,
            sectionDescription:
                Messages.of(context)!.patientEditEgresoHospitalizationTimeDesc,
            children: [
              Flexible(
                child: _HospitalizationTimeField(),
              ),
            ],
          ),
          Section(
            sectionTitle: Messages.of(context)!.patientEditEgresoIncomes,
            children: [
              Flexible(
                child: _IncomesField(),
              ),
            ],
          ),
          Section(
            sectionTitle: Messages.of(context)!.patientEditEgresoContacts,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 35,
                    child: Text(
                      Messages.of(context)!.patientEditEgresoRing,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    flex: 65,
                    child: Text(
                      Messages.of(context)!.patientEditEgresoRingPositives,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 35,
                    child: _ContactsFirstLevelField(),
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                    flex: 65,
                    child: _ContactsFirstLevelPositivesField(),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Flexible(
                    flex: 35,
                    child: _ContactsSecondLevelField(),
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                    flex: 65,
                    child: _ContactsSecondLevelPositivesField(),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Flexible(
                    flex: 35,
                    child: _ContactsThirdLevelField(),
                  ),
                  const SizedBox(width: 5),
                  Flexible(
                    flex: 65,
                    child: _ContactsThirdLevelPositivesField(),
                  ),
                ],
              ),
            ],
          ),
          Section(
            sectionTitle:
                Messages.of(context)!.patientEditEgresoTreatmentsReceived,
            children: [
              Flexible(
                child: _TreatmentsReceivedField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _AntibioticsField(),
              ),
            ],
          ),
          Section(
            sectionTitle: Messages.of(context)!.patientEditEgresoProphylaxis,
            children: [
              Flexible(
                child: _ProphylaxisField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _AnotherVaccineAgainstCovidField(),
              ),
            ],
          ),
          Section(
            sectionTitle: Messages.of(context)!.patientEditEgresoAftermath,
            children: [
              const SizedBox(height: 15),
              Flexible(
                child: _AftermathField(),
              ),
              const SizedBox(height: 15),
              Flexible(
                child: _OthersAftermathField(),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SubmmitButton<IPatientEgresoEditFormBloc>(
            label: Messages.of(context)!.patientEditEgresoEdit,
          ),
        ],
      ),
    );
  }
}

class Section extends StatelessWidget {
  const Section({
    Key? key,
    required this.sectionTitle,
    this.sectionDescription,
    required this.children,
  }) : super(key: key);
  final String sectionTitle;
  final String? sectionDescription;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          sectionTitle,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Row(
          children: const [
            Expanded(
              child: Divider(),
            ),
          ],
        ),
        if (sectionDescription != null) ...[
          const SizedBox(
            height: 5,
          ),
          Text(
            sectionDescription!,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
        const SizedBox(
          height: 8,
        ),
        ...children,
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _OthersAftermathField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<List<String>?>(
      bloc: form.othersAftermath,
      builder: (context, state) => StringListInputWidget(
        autoCompleteBloc: GetIt.I.get<OtherAftermathAutoCompleteBloc>(),
        stringList: state.value ?? [],
        labelText: Messages.of(context)!.patientEditEgresoOtherAftermath,
        addString: (value) {
          var newList = [value];
          if (state.value != null) {
            newList = state.value! + newList;
          }
          form.othersAftermath.dirty(newList);
        },
        removeString: (value) {
          var newList = <String>[];
          if (state.value != null) {
            state.value!.remove(value);
            newList = state.value!;
          }
          form.othersAftermath.dirty(newList);
        },
        clearList: () => form.othersAftermath.pure([]),
        errorText: state.error,
      ),
    );
  }
}

class _AftermathField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<List<Aftermath>?>(
      bloc: form.aftermath,
      builder: (context, state) => MultiSelectDropDown<Aftermath>(
        labelText: Messages.of(context)!.patientEditEgresoAftermath,
        items: Aftermath.values,
        onSelect: (values) => form.aftermath.dirty(values),
        onRemove: (value) {
          var newList = <Aftermath>[];
          if (state.value != null) {
            state.value!.remove(value);
            newList = state.value!;
          }
          form.aftermath.dirty(newList);
        },
        itemToString: (item) => item.visualName(context),
        initialValues: state.value,
      ),
    );
  }
}

class _AnotherVaccineAgainstCovidField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    final autocomplete = GetIt.I.get<AnotherVaccinesAutoCompleteBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.anotherVaccineAgainstCovid,
      builder: (context, state) => AutoCompleteInputWidget(
        suggestionsStream: autocomplete.suggestionsStream,
        labelText: Messages.of(context)!.patientEditEgresoAnotherVaccines,
        errorText: state.error,
        initialInput: state.value ?? '',
        onChanged: (value) {
          autocomplete.changed(value);
          form.anotherVaccineAgainstCovid.dirty(
            value.trim(),
          );
        },
        onSelected: (value) {
          form.anotherVaccineAgainstCovid.dirty(
            (value as String).trim(),
          );
        },
      ),
    );
  }
}

class _ProphylaxisField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<List<Prophylaxis>?>(
      bloc: form.prophylaxis,
      builder: (context, state) => MultiSelectDropDown<Prophylaxis>(
        labelText: Messages.of(context)!.patientEditEgresoProphylaxisWith,
        items: Prophylaxis.values,
        onSelect: (values) => form.prophylaxis.dirty(values),
        onRemove: (value) {
          var newList = <Prophylaxis>[];
          if (state.value != null) {
            state.value!.remove(value);
            newList = state.value!;
          }
          form.prophylaxis.dirty(newList);
        },
        itemToString: (item) => item.visualName(context),
        initialValues: state.value,
      ),
    );
  }
}

class _AntibioticsField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<List<String>?>(
      bloc: form.antibiotics,
      builder: (context, state) => StringListInputWidget(
        autoCompleteBloc: GetIt.I.get<AntibioticsAutoCompleteBloc>(),
        stringList: state.value ?? [],
        labelText: Messages.of(context)!.patientEditEgresoAntibiotics,
        addString: (value) {
          var newList = [value];
          if (state.value != null) {
            newList = state.value! + newList;
          }
          form.antibiotics.dirty(newList);
        },
        removeString: (value) {
          var newList = <String>[];
          if (state.value != null) {
            state.value!.remove(value);
            newList = state.value!;
          }
          form.antibiotics.dirty(newList);
        },
        clearList: () => form.antibiotics.pure([]),
        errorText: state.error,
      ),
    );
  }
}

class _TreatmentsReceivedField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<List<Treatment>?>(
      bloc: form.treatmentsReceived,
      builder: (context, state) => MultiSelectDropDown<Treatment>(
        labelText: Messages.of(context)!.patientEditEgresoTreatments,
        items: Treatment.values,
        onSelect: (values) => form.treatmentsReceived.dirty(values),
        onRemove: (value) {
          var newList = <Treatment>[];
          if (state.value != null) {
            state.value!.remove(value);
            newList = state.value!;
          }
          form.treatmentsReceived.dirty(newList);
        },
        itemToString: (item) => item.visualName(context),
        initialValues: state.value,
      ),
    );
  }
}

class _ContactsThirdLevelPositivesField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.contactsThirdLevelPositives,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoCount,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.contactsThirdLevelPositives.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _ContactsThirdLevelField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.contactsThirdLevel,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoThirdLevel,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.contactsThirdLevel.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _ContactsSecondLevelPositivesField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.contactsSecondLevelPositives,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoCount,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.contactsSecondLevelPositives.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _ContactsSecondLevelField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.contactsSecondLevel,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoSecondLevel,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.contactsSecondLevel.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _ContactsFirstLevelPositivesField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.contactsFirstLevelPositives,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoCount,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.contactsFirstLevelPositives.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _ContactsFirstLevelField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.contactsFirstLevel,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoFirstLevel,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.contactsFirstLevel.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _IncomesField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<List<IncomeEntity>?>(
      bloc: form.incomes,
      builder: (context, state) => IncomesInputWidget(
        headerText: Messages.of(context)!.patientEditEgresoIncomesDetails,
        errorText: state.error,
        incomes: state.value ?? [],
        addIncomeEntity: (value) {
          var newIncomes = <IncomeEntity>[];
          if (state.value == null) {
            newIncomes = [value];
          } else {
            newIncomes = state.value! + [value];
          }
          form.incomes.dirty(newIncomes);
        },
        removeIncomeEntity: (value) {
          if (state.value == null) return;
          final newIncomes = <IncomeEntity>[];
          state.value!.removeWhere((e) => e.income == value);
          newIncomes.addAll(state.value!);
          form.incomes.dirty(newIncomes);
        },
        clearIncomes: () => form.incomes.pure([]),
      ),
    );
  }
}

class _HospitalizationTimeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.hospitalizationTime,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoCompactForm,
        errorText: state.error,
        controller: TextEditing.fromValue(state.value ?? ''),
        onChanged: (value) => form.hospitalizationTime.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _DidHeWorkInTheAttentionToPositiveCasesField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<bool?>(
      bloc: form.didHeWorkInTheAttentionToPositiveCases,
      builder: (context, state) => BoolInputWidget(
        labelText: Messages.of(context)!
            .patientEditEgresoDidHeWorkInTheAttentionToPositiveCases,
        initialValue: state.value,
        onChanged: (value) =>
            form.didHeWorkInTheAttentionToPositiveCases.dirty(value),
      ),
    );
  }
}

class _WasHePartOfAnEventField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<bool?>(
      bloc: form.didHeWorkInTheAttentionToPositiveCases,
      builder: (context, state) => BoolInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoWasHePartOfAnEvent,
        initialValue: state.value,
        onChanged: (value) =>
            form.didHeWorkInTheAttentionToPositiveCases.dirty(value),
      ),
    );
  }
}

class _FormOfContagionField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<Contagion?>(
      bloc: form.formOfContagion,
      builder: (context, state) => ContagionInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoFormOfContagion,
        errorText: state.error,
        onChanged: (value) => form.formOfContagion.dirty(value),
        value: state.value,
      ),
    );
  }
}

class _TimeFromDiagnosisToNegativeOrDischargeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.timeFromDiagnosisToNegativeOrDischarge,
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Messages.of(context)!
                .patientEditEgresoTimeFromDiagnosisToNegativeOrDischarge,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: 4,
          ),
          TextInputWidget(
            labelText: Messages.of(context)!.patientEditEgresoDaysCount,
            keyboardType: TextInputType.number,
            errorText: state.error,
            controller: TextEditing.fromValue(
              state.value == null ? '' : state.value.toString(),
            ),
            onChanged: (value) =>
                form.timeFromDiagnosisToNegativeOrDischarge.dirty(
              int.tryParse(
                value.trim(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NumberPcrPerformedField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.numberPcrPerformed,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoNumberPcrPerformed,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.numberPcrPerformed.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _DaysFromSymptomsToDiagnosisField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.daysFromSymptomsToDiagnosis,
      builder: (context, state) => TextInputWidget(
        labelText:
            Messages.of(context)!.patientEditEgresoDaysFromSymptomsToDiagnosis,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.daysFromSymptomsToDiagnosis.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _TestUsedInDiagnosisField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<TestDiagnosis?>(
      bloc: form.testUsedInDiagnosis,
      builder: (context, state) => TestDiagnosisInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoTestUsedInDiagnosis,
        errorText: state.error,
        onChanged: (value) => form.testUsedInDiagnosis.dirty(value),
        value: state.value,
      ),
    );
  }
}

class _DiagnosisWayField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<DiagnosisWay?>(
      bloc: form.diagnosisWay,
      builder: (context, state) => DiagnosisWayInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoDiagnosisWay,
        errorText: state.error,
        onChanged: (value) => form.diagnosisWay.dirty(value),
        value: state.value,
      ),
    );
  }
}

class _DurationOfSymptomsField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<int?>(
      bloc: form.durationOfSymptoms,
      builder: (context, state) => TextInputWidget(
        labelText: Messages.of(context)!.patientEditEgresoDurationOfSymptoms,
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.durationOfSymptoms.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
      ),
    );
  }
}

class _SymptomsField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<List<String>?>(
      bloc: form.symptoms,
      builder: (context, state) => StringListInputWidget(
        autoCompleteBloc: GetIt.I.get<SymptompsAutoCompleteBloc>(),
        stringList: state.value ?? [],
        labelText: Messages.of(context)!.patientEditEgresoSymptomp,
        addString: (value) {
          var newList = [value];
          if (state.value != null) {
            newList = state.value! + newList;
          }
          form.symptoms.dirty(newList);
        },
        removeString: (value) {
          var newList = <String>[];
          if (state.value != null) {
            state.value!.remove(value);
            newList = state.value!;
          }
          form.symptoms.dirty(newList);
        },
        clearList: () => form.symptoms.pure([]),
        errorText: state.error,
      ),
    );
  }
}

class _DetectionDateField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<DateTime?>(
      bloc: form.detectionDate,
      builder: (context, state) => DateTimeInputWidget(
        hintText: Messages.of(context)!.patientEditEgresoDetectionDate,
        initialDate: state.value,
        errorText: state.error,
        onChanged: (value) => form.detectionDate.dirty(value),
      ),
    );
  }
}
