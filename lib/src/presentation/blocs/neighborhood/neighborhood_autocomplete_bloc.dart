import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';

@injectable
class NeighborhoodAutoCompleteBloc extends AutoCompleteBloc<String> {
  NeighborhoodAutoCompleteBloc() : super('');

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return [
      'lorem',
      'ipsum',
      'dozen',
    ]; //TODO: Mocked data.
  }
}
