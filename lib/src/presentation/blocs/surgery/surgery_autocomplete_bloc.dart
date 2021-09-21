import 'dart:async';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SurgeryAutoCompleteBloc extends AutoCompleteBloc<String> {
  SurgeryAutoCompleteBloc() : super('');

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return [
      'lorem',
      'ipsum',
      'dozen',
    ]; //TODO: Mocked data.
  }
}
