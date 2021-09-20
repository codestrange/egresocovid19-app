import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';

@injectable
class SurgeryAutoCompleteBloc extends AutoCompleteBloc<String> {
  SurgeryAutoCompleteBloc([String? initialValue]) : super(initialValue);

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return [
      'lorem',
      'ipsum',
      'dozen',
    ]; //TODO: Mocked data.
  }
}
