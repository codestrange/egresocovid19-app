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

class PatientBasicEditPage extends StatelessWidget {
  const PatientBasicEditPage({
    Key? key,
    required this.patientId,
  }) : super(key: key);

  final String patientId;

  static BeamPage getPage(BuildContext context, String patientId) {
    return BeamPage(
      key: ValueKey('patient-basic-edit-$patientId'),
      title: getTitle(context, Messages.of(context)!.patientEditBasicPageTitle),
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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          title: Text(
            Messages.of(context)!.patientEditBasicAppBarTitle,
            style: Theme.of(context).textTheme.headline6,
          ),
          iconTheme: Theme.of(context).iconTheme,
        ),
        body: BlocConsumer<IPatientBasicEditBloc, PatientBasicEditState>(
          bloc: context.read(),
          listener: (context, state) => state.maybeMap(
            failure: (error) => context.currentBeamLocation.update(),
            orElse: () => null,
          ),
          builder: (context, state) => state.maybeMap(
            patientEdit: (state) => BlocProvider<IPatientBasicEditFormBloc>(
              create: (context) => GetIt.I<IPatientBasicEditFormBloc>(
                param1: state.patientEditFetchData,
              ),
              child: const _PatientBasicForm(),
            ),
            failure: (state) => _ReloadBasicEditPage(
              errorText: Messages.of(context)!.patientEditBasicError,
              onPressed: () => context.currentBeamLocation.update(),
            ),
            orElse: () => const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PatientBasicForm extends StatelessWidget {
  const _PatientBasicForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<IPatientBasicEditFormBloc, void, ErrorEntity>(
      bloc: context.read(),
      onSuccess: (_) => context.beamBack(),
      onError: (error) => ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(error.message))),
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: _PatientEditForm(),
        ),
      ),
    );
  }
}

class _ReloadBasicEditPage extends StatelessWidget {
  const _ReloadBasicEditPage({
    Key? key,
    required this.errorText,
    required this.onPressed,
  }) : super(key: key);

  final String errorText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Text(Messages.of(context)!.patientEditBasicErrorMessage),
          Text(errorText),
          const SizedBox(height: 16),
          MainButton(
            text: Messages.of(context)!.patientEditBasicErrorButtonText,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class _PatientEditForm extends StatelessWidget {
  const _PatientEditForm({
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
            SizedBox(width: 8),
            Flexible(child: _SexInput()),
            SizedBox(width: 8),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: const [
            Flexible(child: _SkinColorInput()),
            SizedBox(width: 8),
            Flexible(child: _BloodTypeInput()),
            SizedBox(width: 8),
          ],
        ),
        const Divider(height: 16),
        const Flexible(child: _ProvinceInput()),
        const SizedBox(height: 8),
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
        const _CancelButton(),
        const SizedBox(height: 16),
        SubmmitButton<IPatientBasicEditFormBloc>(
          label: Messages.of(context)!.patientEditBasicSubmmitButtonText,
        ),
      ],
    );
  }
}

class _CancelButton extends StatelessWidget {
  const _CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: () => context.beamBack(),
      color: Colors.red.withOpacity(0.2),
      text: 'Cancelar',
    );
  }
}

class _FirstNameInput extends StatelessWidget {
  const _FirstNameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.firstName,
      builder: (context, state) => TextInputWidget(
        controller:
            state.value != null ? TextEditing.fromValue(state.value!) : null,
        labelText: Messages.of(context)!.patientEditBasicNameInputLabelText,
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
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.lastName,
      builder: (context, state) => TextInputWidget(
        controller:
            state.value != null ? TextEditing.fromValue(state.value!) : null,
        labelText: Messages.of(context)!.patientEditBasicLastNameInputLabelText,
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
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.ci,
      builder: (context, state) => TextInputWidget(
        controller:
            state.value != null ? TextEditing.fromValue(state.value!) : null,
        labelText: Messages.of(context)!.patientEditBasicIDInputLabelText,
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
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.age,
      builder: (context, state) => TextInputWidget(
        controller:
            state.value != null ? TextEditing.fromValue(state.value!) : null,
        labelText: Messages.of(context)!.patientEditBasicAgeInputLabelText,
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
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<Sex?>(
      bloc: form.sex,
      builder: (context, state) => SexInputWidget(
        labelText: Messages.of(context)!.patientEditBasicSexInputLabelText,
        errorText: state.error,
        onChanged: (value) => form.sex.dirty(value),
        initialValue: form.sex.state.value,
      ),
    );
  }
}

class _SkinColorInput extends StatelessWidget {
  const _SkinColorInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<SkinColor?>(
      bloc: form.skinColor,
      builder: (context, state) => SkinColorInputWidget(
        labelText:
            Messages.of(context)!.patientEditBasicSkinColorInputLabelText,
        errorText: state.error,
        onChanged: (value) => form.skinColor.dirty(value),
        initialValue: form.skinColor.state.value,
      ),
    );
  }
}

class _BloodTypeInput extends StatelessWidget {
  const _BloodTypeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<BloodType?>(
      bloc: form.bloodType,
      builder: (context, state) => BloodTypeInputWidget(
        labelText:
            Messages.of(context)!.patientEditBasicBloodTypeInputLabelText,
        errorText: state.error,
        onChanged: (value) => form.bloodType.dirty(value),
        initialValue: form.bloodType.state.value,
      ),
    );
  }
}

class _ProvinceInput extends StatelessWidget {
  const _ProvinceInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    final bloc = GetIt.I<MunicipalityBloc>();

    return BlocBuilder<MunicipalityBloc, MunicipalityState>(
      bloc: bloc..add(const MunicipalityEvent.provincesRequested()),
      builder: (context, _state) {
        return InputBlocBuilder<ProvinceEntity?>(
          bloc: form.province,
          builder: (context, state) => ProvinceSelector(
            provinces: _state.provinces ?? [],
            onProvinceSelected: (ProvinceEntity prv) {
              if (form.municipality.state.value != null) {
                form.municipality.dirty(null);
              }
              form.province.dirty(prv);
            },
            provinceLabel:
                Messages.of(context)!.patientEditBasicProvinceInputLabelText,
            selectedProvince: state.value,
            errorText: state.error,
          ),
        );
      },
    );
  }
}

class _MunicipalityInput extends StatelessWidget {
  const _MunicipalityInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();

    return InputBlocBuilder<MunicipalityEntity?>(
      bloc: form.municipality,
      builder: (context, state) => MunicipalitySelector(
        municipalities: form.province.state.value?.municipalities ?? [],
        onMunicipalitySelected: (MunicipalityEntity mun) {
          form.municipality.dirty(mun);
        },
        municipalityLabel:
            Messages.of(context)!.patientEditBasicMunicipalityInputLabelText,
        selectedMunicipality: state.value,
        errorText: state.error,
      ),
    );
  }
}

class _AddressInput extends StatelessWidget {
  const _AddressInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.address,
      builder: (context, state) => TextInputWidget(
        controller:
            state.value != null ? TextEditing.fromValue(state.value!) : null,
        labelText: Messages.of(context)!.patientEditBasicAddressInputLabelText,
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
    final form = context.read<IPatientBasicEditFormBloc>();
    final autocompleter = GetIt.I<PolyclinicAutoCompleteBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.polyclinic,
      builder: (context, state) => PolyclinicInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText:
            Messages.of(context)!.patientEditBasicPolyclinicInputLabelText,
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value);
          form.polyclinic.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.polyclinic.dirty(value.trim());
        },
        initialValue: form.polyclinic.isPure ? state.value ?? '' : null,
      ),
    );
  }
}

class _SurgeryInput extends StatelessWidget {
  const _SurgeryInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    final autocompleter = GetIt.I<SurgeryAutoCompleteBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.surgery,
      builder: (context, state) => SurgeryInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText: Messages.of(context)!.patientEditBasicSurgeryInputLabelText,
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value);
          form.surgery.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.surgery.dirty(value.trim());
        },
        initialValue: form.surgery.isPure ? state.value ?? '' : null,
      ),
    );
  }
}

class _PopularCouncilInput extends StatelessWidget {
  const _PopularCouncilInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    final autocompleter = GetIt.I<PopularCouncilAutoCompleteBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.popularCouncil,
      builder: (context, state) => PopularCouncilInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText:
            Messages.of(context)!.patientEditBasicPopularCouncilInputLabelText,
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value.trim());
          form.popularCouncil.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.popularCouncil.dirty(value.trim());
        },
        initialValue: form.popularCouncil.isPure ? state.value ?? '' : null,
      ),
    );
  }
}

class _NeighborhoodInput extends StatelessWidget {
  const _NeighborhoodInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    final autocompleter = GetIt.I<NeighborhoodAutoCompleteBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.neighborhood,
      builder: (context, state) => NeighborhoodInputWidget(
        suggestionsStream: autocompleter.suggestionsStream,
        labelText:
            Messages.of(context)!.patientEditBasicNeighborhoodInputLabelText,
        errorText: state.error,
        onChanged: (value) {
          autocompleter.changed(value);
          form.neighborhood.dirty(value.trim());
        },
        onSelected: (value) {
          autocompleter.changed((value as String).trim());
          form.neighborhood.dirty(value.trim());
        },
        initialValue: form.neighborhood.isPure ? state.value ?? '' : null,
      ),
    );
  }
}

class _BlockNumberInput extends StatelessWidget {
  const _BlockNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    return InputBlocBuilder<String?>(
      bloc: form.blockNumber,
      builder: (context, state) => TextInputWidget(
        controller:
            state.value != null ? TextEditing.fromValue(state.value!) : null,
        labelText: Messages.of(context)!.patientEditBasicBlockInputLabelText,
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
    final form = context.read<IPatientBasicEditFormBloc>();
    final bloc = GetIt.I<PathologicalhistoryBloc>(
      param1: form.personalPathologicalHistory.state.value,
    )..stream.listen((state) {
        form.personalPathologicalHistory.dirty(state.pathologicalHistory);
      });
    return InputBlocBuilder<List<PathologicalEntity>>(
      bloc: form.personalPathologicalHistory,
      builder: (context, state) =>
          BlocBuilder<PathologicalhistoryBloc, PathologicalHistoryState>(
        bloc: bloc,
        builder: (context, _state) {
          return PathologicalHistoryInputWidget(
            headerText: Messages.of(context)!
                .patientEditBasicPathologicalHistoryInputLabelText,
            errorText: state.error,
            pathologicalHist: _state.pathologicalHistory,
            addPathologicalEntity: (ph) =>
                bloc.add(PathologicalHistoryEvent.added(ph)),
            removePathologicalEntity: (ph) =>
                bloc.add(PathologicalHistoryEvent.removed(ph)),
            clearPathologicalHist: () =>
                bloc.add(const PathologicalHistoryEvent.cleared()),
          );
        },
      ),
    );
  }
}

class _FamilyPathologicalHistoryInput extends StatelessWidget {
  const _FamilyPathologicalHistoryInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<IPatientBasicEditFormBloc>();
    final bloc = GetIt.I<PathologicalhistoryBloc>(
      param1: form.familyPathologicalHistory.state.value,
    )..stream.listen((state) {
        form.familyPathologicalHistory.dirty(state.pathologicalHistory);
      });
    return InputBlocBuilder<List<PathologicalEntity>>(
      bloc: form.personalPathologicalHistory,
      builder: (context, state) =>
          BlocBuilder<PathologicalhistoryBloc, PathologicalHistoryState>(
        bloc: bloc,
        builder: (context, _state) {
          return PathologicalHistoryInputWidget(
            headerText: Messages.of(context)!
                .patientEditBasicFamilyPathologicalHistoryInputLabelText,
            errorText: state.error,
            pathologicalHist: _state.pathologicalHistory,
            addPathologicalEntity: (ph) =>
                bloc.add(PathologicalHistoryEvent.added(ph)),
            removePathologicalEntity: (ph) =>
                bloc.add(PathologicalHistoryEvent.removed(ph)),
            clearPathologicalHist: () =>
                bloc.add(const PathologicalHistoryEvent.cleared()),
          );
        },
      ),
    );
  }
}
