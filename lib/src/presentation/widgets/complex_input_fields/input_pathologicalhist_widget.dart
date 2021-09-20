import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';

class PathologicalHistoryInputWidget extends StatelessWidget {
  const PathologicalHistoryInputWidget({
    Key? key,
    required this.headerText,
    this.onChanged,
    this.errorText,
  }) : super(key: key);

  final String headerText;

  final String? errorText;
  //TODO: SHOW THIS ERROR TEXT SOME WHERE

  ///on list changed
  final dynamic Function(List<PathologicalEntity>)? onChanged;

  @override
  Widget build(BuildContext context) {
    final autocompleter = PathologyAutoCompleteBloc();
    final pathologyInputBloc = PathologyBloc();
    final pathologicalHistBloc = PathologicalhistoryBloc()
      ..stream.listen((state) {
        if (onChanged != null) {
          onChanged!(state.pathologicalHistory);
        }
      });
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(headerText),
        const SizedBox(
          height: 10,
        ),
        // new Pathology Input
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text Inputs
            Column(
              children: [
                PathologyNameInputWidget(
                  suggestionsStream: autocompleter.suggestionsStream,
                  onChanged: (input) {
                    autocompleter.changed(input);
                    pathologyInputBloc
                        .add(PathologyEvent.pathologyNameChanged(input));
                  },
                  onSelected: (input) {
                    autocompleter.selected(input as String);
                    pathologyInputBloc
                        .add(PathologyEvent.pathologyNameChanged(input));
                  },
                ),
                _PathologyTreatmentInputWidget(
                  onChanged: (input) => pathologyInputBloc
                      .add(PathologyEvent.treatmentChanged(input)),
                ),
              ],
            ),
            // Add Button
            IconButton(
                onPressed: pathologyInputBloc.state.pathology.isNotEmpty
                    ? () {
                        final pathological = PathologicalEntity(
                            name: pathologyInputBloc.state.pathology,
                            treatments: pathologyInputBloc.state.treatment);

                        pathologicalHistBloc
                            .add(PathologicalHistoryEvent.added(pathological));
                      }
                    : null,
                icon: const Icon(Icons.add))
          ],
        ),
        BlocBuilder<PathologicalhistoryBloc, PathologicalHistoryState>(
          bloc: pathologicalHistBloc,
          builder: (context, state) {
            return Wrap(
              spacing: 3,
              children: pathologicalHistBloc.state.pathologicalHistory
                  .map((e) => Chip(
                        padding: const EdgeInsets.all(3),
                        label: Text(e.name),
                        onDeleted: () => pathologicalHistBloc
                            .add(PathologicalHistoryEvent.removed(e.name)),
                      ))
                  .toList(),
            );
          },
        ),
      ],
    );
  }
}

class _PathologyTreatmentInputWidget extends StatelessWidget {
  const _PathologyTreatmentInputWidget({
    Key? key,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.errorText,
  }) : super(key: key);

  final ValueChanged<String>? onChanged;
  final String? labelText;
  final String? hintText;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextInputWidget(
      keyboardType: TextInputType.multiline,
      onChanged: onChanged,
      hintText: hintText,
      errorText: errorText,
      labelText: labelText ?? 'Tratamiento Realizado',
    );
  }
}
