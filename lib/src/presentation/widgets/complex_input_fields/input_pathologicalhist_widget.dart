import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

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
    final autocompleter = GetIt.I<PathologyAutoCompleteBloc>();
    final pathologyInputBloc = GetIt.I<PathologyBloc>();
    final pathologicalHistBloc = GetIt.I<PathologicalhistoryBloc>()
      ..stream.listen((state) {
        onChanged?.call(state.pathologicalHistory);
      });
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(headerText),
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
                autocompleter.changed(input);
                pathologyInputBloc
                    .add(PathologyEvent.pathologyNameChanged(input));
              },
              onSelected: (input) {
                autocompleter.selected(input as String);
                pathologyInputBloc
                    .add(PathologyEvent.pathologyNameChanged(input));
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
            return IconButton(
                onPressed: state.pathology.isNotEmpty
                    ? () {
                        final pathological = PathologicalEntity(
                            name: state.pathology, treatments: state.treatment);

                        pathologicalHistBloc
                            .add(PathologicalHistoryEvent.added(pathological));
                        pathologyInputBloc.add(const PathologyEvent.cleared());
                      }
                    : null,
                icon: const Icon(Icons.add));
          },
        ),
        BlocBuilder<PathologicalhistoryBloc, PathologicalHistoryState>(
          bloc: pathologicalHistBloc,
          builder: (context, state) {
            return Wrap(
              spacing: 3,
              children: pathologicalHistBloc.state.pathologicalHistory
                  .map(
                    (e) => Chip(
                      padding: const EdgeInsets.all(3),
                      label: Text(e.name),
                      onDeleted: () => pathologicalHistBloc
                          .add(PathologicalHistoryEvent.removed(e.name)),
                    ),
                  )
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
