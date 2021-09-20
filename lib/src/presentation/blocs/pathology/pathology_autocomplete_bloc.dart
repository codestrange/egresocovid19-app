import 'dart:async';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PathologyAutocompleteBloc extends AutoCompleteBloc<String> {
  PathologyAutocompleteBloc([String? initialValue]) : super(initialValue);

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return ['HTA', 'Diabetes']; //TODO: Mocked data.
  }
}
