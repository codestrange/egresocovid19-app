import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/enums/enums.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: Text(
            Messages.of(context)!
                .appName, //TODO: PUT 'ADD PATIENT' CORRESPONDING TEXT
            style: Theme.of(context).textTheme.headline6,
          ),
          iconTheme: Theme.of(context).iconTheme,
        ),
        body: FormBlocListener<IPatientCreateBloc, void, ErrorEntity>(
          bloc: context.read(),
          onSuccess: (_) => context.beamToNamed('/'),
          onError: (error) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(error.message))),
          child: const SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.all(10.0),
            child: _PatientCreateForm(),
          )),
        ),
      ),
    );
  }
}

class _PatientCreateForm extends StatelessWidget {
  const _PatientCreateForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        const Flexible(child: _FirstNameInput()),
        const SizedBox(height: 8),
        const Flexible(child: _LastNameInput()),
        const SizedBox(height: 8),
        const Flexible(child: _IdentityNumberInput()),
        const SizedBox(height: 8),
        Row(
          children: const [
            Flexible(child: _AgeInput()),
            SizedBox(width: 10),
            Flexible(child: _SexInput()),
            SizedBox(width: 10),
          ],
        ),
        const SizedBox(height: 8),
        const Flexible(child: _SkinColorInput()),
        const SizedBox(height: 8),
        const Flexible(child: _BloodTypeInput()),
        const Divider(height: 16),
        const Flexible(child: _MunicipalityInput()),
        const SizedBox(height: 8),
        const Flexible(child: _AddressInput()),
        const SizedBox(height: 8),
        const Flexible(child: _PolyclinicInput()),
        const SizedBox(height: 8),
        const Flexible(child: _SurgeryInput()),
        const SizedBox(height: 8),
        const Flexible(child: _PopularCouncilInput()),
        const SizedBox(height: 8),
        const Flexible(child: _NeighborhoodInput()),
        const SizedBox(height: 8),
        const Flexible(child: _BlockNumberInput()),
        const Divider(height: 16),
        const Flexible(child: _PersonalPathologicalHistoryInput()),
        const SizedBox(height: 12),
        const Flexible(child: _FamilyPathologicalHistoryInput()),
        const SizedBox(height: 16),
        const SubmmitButton<IPatientCreateBloc>('Añadir Paciente'),
      ],
    );
  }
}

class _FirstNameInput extends StatelessWidget {
  const _FirstNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<String>(
      bloc: form.firstName,
      builder: (context, state) => TextInputWidget(
        controller: TextEditing.fromValue(state.value),
        labelText: 'Nombre(s)*',
        errorText: state.error,
        onChanged: (value) => form.firstName.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _LastNameInput extends StatelessWidget {
  const _LastNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<String>(
      bloc: form.lastName,
      builder: (context, state) => TextInputWidget(
        controller: TextEditing.fromValue(state.value),
        labelText: 'Apellido(s)*',
        errorText: state.error,
        onChanged: (value) => form.lastName.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _IdentityNumberInput extends StatelessWidget {
  const _IdentityNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<String>(
      bloc: form.ci,
      builder: (context, state) => TextInputWidget(
        controller: TextEditing.fromValue(state.value),
        labelText: 'CI*',
        errorText: state.error,
        onChanged: (value) => form.ci.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _AgeInput extends StatelessWidget {
  const _AgeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<String>(
      bloc: form.age,
      builder: (context, state) => TextInputWidget(
        controller: TextEditing.fromValue(state.value),
        labelText: 'Edad*',
        errorText: state.error,
        onChanged: (value) => form.age.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _SexInput extends StatelessWidget {
  const _SexInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<Sex?>(
      bloc: form.sex,
      builder: (context, state) => SexInputWidget(
        labelText: 'Sexo*',
        errorText: state.error,
        onChanged: (value) => form.sex.dirty(value),
      ),
    );
  }
}

class _SkinColorInput extends StatelessWidget {
  const _SkinColorInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<SkinColor?>(
      bloc: form.skinColor,
      builder: (context, state) => SkinColorInputWidget(
        labelText: 'Color de Piel*',
        errorText: state.error,
        onChanged: (value) => form.skinColor.dirty(value),
      ),
    );
  }
}

class _BloodTypeInput extends StatelessWidget {
  const _BloodTypeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<BloodType?>(
      bloc: form.bloodType,
      builder: (context, state) => BloodTypeInputWidget(
        labelText: 'Sangre',
        errorText: state.error,
        onChanged: (value) => form.bloodType.dirty(value),
      ),
    );
  }
}

class _MunicipalityInput extends StatelessWidget {
  const _MunicipalityInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<String>(
      bloc: form.municipalityCode,
      builder: (context, state) => MunicipalityInputWidget(
        provinceLabel: 'Provincia*',
        municipalityLabel: 'Municipio*',
        errorText: state.error,
        onChanged: (value) => form.municipalityCode.dirty(value),
      ),
    );
  }
}

class _AddressInput extends StatelessWidget {
  const _AddressInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<String>(
      bloc: form.address,
      builder: (context, state) => TextInputWidget(
        labelText: 'Dirección Particular*',
        errorText: state.error,
        onChanged: (value) => form.address.dirty(value.trim()),
      ),
    );
  }
}

class _PolyclinicInput extends StatelessWidget {
  const _PolyclinicInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    final autocompleter = GetIt.I<PolyclinicAutoCompleteBloc>();
    return InputBlocBuilder<String>(
      bloc: form.polyclinic,
      builder: (context, state) => PolyclinicInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText: 'Policlínico*',
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value);
          form.polyclinic.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.polyclinic.dirty(value.trim());
        },
      ),
    );
  }
}

class _SurgeryInput extends StatelessWidget {
  const _SurgeryInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    final autocompleter = GetIt.I<SurgeryAutoCompleteBloc>();
    return InputBlocBuilder<String>(
      bloc: form.surgery,
      builder: (context, state) => SurgeryInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText: 'Consultorio*',
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value);
          form.surgery.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.surgery.dirty(value.trim());
        },
      ),
    );
  }
}

class _PopularCouncilInput extends StatelessWidget {
  const _PopularCouncilInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    final autocompleter = GetIt.I<PopularCouncilAutoCompleteBloc>();
    return InputBlocBuilder<String>(
      bloc: form.popularCouncil,
      builder: (context, state) => PopularCouncilInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText: 'Consejo Popular*',
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value.trim());
          form.popularCouncil.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.popularCouncil.dirty(value.trim());
        },
      ),
    );
  }
}

class _NeighborhoodInput extends StatelessWidget {
  const _NeighborhoodInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    final autocompleter = GetIt.I<NeighborhoodAutoCompleteBloc>();
    return InputBlocBuilder<String>(
      bloc: form.neighborhood,
      builder: (context, state) => NeighborhoodInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText: 'Reparto*',
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value);
          form.neighborhood.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.neighborhood.dirty(value.trim());
        },
      ),
    );
  }
}

class _BlockNumberInput extends StatelessWidget {
  const _BlockNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<String>(
      bloc: form.blockNumber,
      builder: (context, state) => TextInputWidget(
        controller: TextEditing.fromValue(state.value),
        labelText: 'No. de Manzana*',
        errorText: state.error,
        onChanged: (value) => form.blockNumber.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _PersonalPathologicalHistoryInput extends StatelessWidget {
  const _PersonalPathologicalHistoryInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<List<PathologicalEntity>>(
      bloc: form.personalPathologicalHistory,
      builder: (context, state) => PathologicalHistoryInputWidget(
        headerText: 'Antecedentes Patológicos*',
        errorText: state.error,
        onChanged: (value) => form.personalPathologicalHistory.dirty(value),
      ),
    );
  }
}

class _FamilyPathologicalHistoryInput extends StatelessWidget {
  const _FamilyPathologicalHistoryInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientCreateBloc>();
    return InputBlocBuilder<List<PathologicalEntity>>(
      bloc: form.familyPathologicalHistory,
      builder: (context, state) => PathologicalHistoryInputWidget(
        headerText: 'Antecedentes Patológicos Familiares*',
        errorText: state.error,
        onChanged: (value) => form.familyPathologicalHistory.dirty(value),
      ),
    );
  }
}
