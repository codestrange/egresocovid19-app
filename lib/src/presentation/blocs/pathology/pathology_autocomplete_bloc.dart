import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';

@injectable
class PathologyAutoCompleteBloc extends AutoCompleteBloc<String> {
  PathologyAutoCompleteBloc() : super('');

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return ['HTA', 'Diabetes']; //TODO: Mocked data.
  }
}
