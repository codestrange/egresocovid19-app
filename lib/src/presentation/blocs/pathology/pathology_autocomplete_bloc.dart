import 'dart:async';

import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PathologyAutoCompleteBloc extends AutoCompleteBloc<String> {
  PathologyAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getDefaultPathologicals();
    final defaults = either.getOrElse((_) => []);
    return defaults
        .where((e) => e.toLowerCase().contains(changedValue.toLowerCase()))
        .toList();
  }
}
