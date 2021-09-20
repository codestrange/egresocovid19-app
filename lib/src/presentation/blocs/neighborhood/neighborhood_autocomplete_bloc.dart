import 'dart:async';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class NeighborhoodAutoCompleteBloc extends AutoCompleteBloc<String> {
  NeighborhoodAutoCompleteBloc([String? initialValue]) : super(initialValue);

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return [
      'lorem',
      'ipsum',
      'dozen',
    ]; //TODO: Mocked data.
  }
}
