import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/diagnosis_way_enum.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/blocs/patient_egreso_edit_form/patient_egreso_edit_form_bloc.dart';
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
      title: getTitle(context, 'Editar'),
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
          'Información de Egreso',
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: BlocConsumer<IPatientEgresoEditBloc, PatientEgresoEditState>(
        listener: (context, state) => state.when(
          initial: () => null,
          fetchInProgress: () => null,
          fetchFailure: (errorMessage) => null,
          fetchSuccess: (actualDischargeData) => null,
          updateInProgress: (newDischargeData) => null,
          updateFailure: (errorMessage, _) =>
              ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Ocurrio un error al guardar los datos. Error: $errorMessage',
              ),
            ),
          ),
          updateSuccess: (newDischargeData) =>
              ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Datos guardados satisfactoriamente.'),
            ),
          ),
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
          Text('Ha ocurrido un error al cargar los datos: $errorMessage'),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () => context.read<IPatientEgresoEditBloc>().add(
                  PatientEgresoEditEvent.fetch(
                    patientId,
                  ),
                ),
            child: const Text('Reintentar'),
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
          Flexible(
            child: _DetectionDateField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _SymptomsField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _DurationOfSymptomsField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _DiagnosisWayField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _TestUsedInDiagnosisField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _DaysFromSymptomsToDiagnosisField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _NumberPcrPerformedField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _TimeFromDiagnosisToNegativeOrDischargeField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _FormOfContagionField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _WasHePartOfAnEventField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _DidHeWorkInTheAttentionToPositiveCasesField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _HospitalizationTimeField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _IncomesField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _ContactsFirstLevelField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _ContactsFirstLevelPositivesField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _ContactsSecondLevelField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _ContactsSecondLevelPositivesField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _ContactsThirdLevelField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _ContactsThirdLevelPositivesField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _TreatmentsReceivedField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _AntibioticsField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _ProphylaxisField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _AnotherVaccineAgainstCovidField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _AftermathField(),
          ),
          const SizedBox(height: 10),
          Flexible(
            child: _OthersAftermathField(),
          ),
          const SizedBox(
            height: 10,
          ),
          const SubmmitButton<IPatientEgresoEditFormBloc>('Editar'),
        ],
      ),
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
        stringList: state.value ?? [],
        labelText: 'Otras Secuelas',
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
        labelText: 'Secuelas',
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
        itemToString: (item) => item.visualName(),
      ),
    );
  }
}

class _AnotherVaccineAgainstCovidField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientEgresoEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.anotherVaccineAgainstCovid,
      builder: (context, state) => TextInputWidget(
        labelText: 'Otras vacunas usadas contra la Covid19',
        errorText: state.error,
        controller: TextEditing.fromValue(state.value ?? ''),
        onChanged: (value) => form.anotherVaccineAgainstCovid.dirty(
          value.trim(),
        ),
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
        labelText: 'Realizó profilaxis con',
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
        itemToString: (item) => item.visualName(),
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
        stringList: state.value ?? [],
        labelText: 'Antibióticos',
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
        labelText: 'Tratamientos',
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
        itemToString: (item) => item.visualName(),
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
        labelText: 'Cantidad de contactos a tercer nivel positivos',
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
        labelText: 'Cantidad de contactos a tercer nivel',
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
        labelText: 'Cantidad de contactos a segundo nivel positivos',
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
        labelText: 'Cantidad de contactos a segundo nivel',
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
        labelText: 'Cantidad de contactos a primer nivel positivos',
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
        labelText: 'Cantidad de contactos a primer nivel',
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
        headerText: 'Detalles de Ingreso',
        errorText: state.error,
        incomes: state.value ?? [],
        addIncomeEntity: (value) {
          if (state.value == null ||
              state.value!.any((e) => e.income == value.income)) return;
          final newIncomes = state.value! + [value];
          form.incomes.dirty(newIncomes);
        },
        removeIncomeEntity: (value) {
          if (state.value == null ||
              !state.value!.any((e) => e.income == value)) return;
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
        labelText: 'Tiempo de Hospitalización (Forma Compacta)',
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
        labelText: '¿Trabajó en la atención de casos positivos?',
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
        labelText: '¿Fué parte de un evento de transmición?',
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
    return InputBlocBuilder(
      bloc: form.formOfContagion,
      builder: (context, state) => ContagionInputWidget(
        labelText: 'Forma de Contagio',
        errorText: state.error,
        onChanged: (value) => form.formOfContagion.dirty(value),
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
      builder: (context, state) => TextInputWidget(
        labelText: 'Tiempo tardado en negativizar o en recibir'
            ' el alta clínica a partir del diagnóstico (días)',
        keyboardType: TextInputType.number,
        errorText: state.error,
        controller: TextEditing.fromValue(
          state.value == null ? '' : state.value.toString(),
        ),
        onChanged: (value) => form.timeFromDiagnosisToNegativeOrDischarge.dirty(
          int.tryParse(
            value.trim(),
          ),
        ),
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
        labelText: 'Número de Tests/Pcr realizados',
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
        labelText: 'Cantidad de días con síntomas hasta el diagnostico',
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
    return InputBlocBuilder(
      bloc: form.testUsedInDiagnosis,
      builder: (context, state) => TestDiagnosisInputWidget(
        labelText: 'Test usado en el Diagnóstico',
        errorText: state.error,
        onChanged: (value) => form.testUsedInDiagnosis.dirty(value),
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
        labelText: 'Forma de diagnóstico',
        errorText: state.error,
        onChanged: (value) => form.diagnosisWay.dirty(value),
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
        labelText: 'Duración de los Síntomas (días)',
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
        stringList: state.value ?? [],
        labelText: 'Síntomas',
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
        hintText: 'Fecha de detección',
        initialDate: state.value,
        errorText: state.error,
        onChanged: (value) => form.detectionDate.dirty(value),
      ),
    );
  }
}
