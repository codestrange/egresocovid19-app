import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';

class PathologicalHistoryInputWidget extends StatefulWidget {
  const PathologicalHistoryInputWidget({
    Key? key,
    this.addPathologicalEntity,
    this.removePathologicalEntity,
    this.clearPathologicalHist,
    this.pathologicalHist = const [],
    required this.headerText,
    this.errorText,
  }) : super(key: key);

  final Function(PathologicalEntity)? addPathologicalEntity;
  final Function(String)? removePathologicalEntity;
  final Function()? clearPathologicalHist;

  //
  final List<PathologicalEntity> pathologicalHist;

  final String headerText;

  final String? errorText;
  //TODO: SHOW THIS ERROR TEXT SOME WHERE

  @override
  State<PathologicalHistoryInputWidget> createState() =>
      _PathologicalHistoryInputWidgetState();
}

class _PathologicalHistoryInputWidgetState
    extends State<PathologicalHistoryInputWidget> {
  @override
  Widget build(BuildContext context) {
    final autocompleter = GetIt.I<PathologyAutoCompleteBloc>();
    final pathologyInputBloc = GetIt.I<PathologyBloc>();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(widget.headerText),
        const SizedBox(
          height: 10,
        ),

        // new Pathology Input
        BlocBuilder<PathologyBloc, PathologyState>(
          bloc: pathologyInputBloc,
          builder: (context, state) {
            return PathologyNameInputWidget(
              initialInput: state.pathology == '' ? '' : null,
              suggestionsStream: autocompleter.suggestionsStream,
              onChanged: (input) {
                autocompleter.changed(input.trim());
                pathologyInputBloc
                    .add(PathologyEvent.pathologyNameChanged(input.trim()));
              },
              onSelected: (input) {
                autocompleter.selected(input as String);
                pathologyInputBloc
                    .add(PathologyEvent.pathologyNameChanged(input.trim()));
              },
            );
          },
        ),
        const SizedBox(
          height: 4,
        ),
        BlocBuilder<PathologyBloc, PathologyState>(
          bloc: pathologyInputBloc,
          builder: (context, state) {
            return _PathologyTreatmentInputWidget(
              initialValue: state.treatment == '' ? '' : null,
              onChanged: (input) => pathologyInputBloc
                  .add(PathologyEvent.treatmentChanged(input)),
            );
          },
        ),

        // Add Button
        BlocBuilder<PathologyBloc, PathologyState>(
          bloc: pathologyInputBloc,
          builder: (context, state) {
            return ElevatedButton(
              onPressed: state.pathology.isNotEmpty
                  ? () {
                      final pathological = PathologicalEntity(
                        name: state.pathology,
                        treatments: state.treatment,
                      );
                      widget.addPathologicalEntity?.call(pathological);
                      pathologyInputBloc.add(const PathologyEvent.cleared());
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Icon(Icons.add),
            );
          },
        ),
        Wrap(
          spacing: 3,
          children: widget.pathologicalHist
              .map(
                (e) => Chip(
                  padding: const EdgeInsets.all(3),
                  label: Text(e.name),
                  onDeleted: () =>
                      widget.removePathologicalEntity?.call(e.name),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _PathologyTreatmentInputWidget extends StatelessWidget {
  const _PathologyTreatmentInputWidget({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.errorText,
  }) : super(key: key);

  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final String? labelText;
  final String? hintText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextInputWidget(
      controller:
          initialValue != null ? TextEditing.fromValue(initialValue!) : null,
      keyboardType: TextInputType.multiline,
      onChanged: onChanged,
      hintText: hintText,
      errorText: errorText,
      labelText: labelText ?? 'Tratamiento Realizado',
    );
  }
}
