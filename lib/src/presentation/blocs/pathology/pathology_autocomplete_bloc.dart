import 'dart:async';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PathologyAutoCompleteBloc extends AutoCompleteBloc<String> {
  PathologyAutoCompleteBloc() : super('');

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return ['HTA', 'Diabetes']; //TODO: Mocked data.
  }
}
