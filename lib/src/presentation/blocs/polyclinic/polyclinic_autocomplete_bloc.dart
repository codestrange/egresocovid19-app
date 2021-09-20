import 'dart:async';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PolyclinicAutoCompleteBloc extends AutoCompleteBloc<String> {
  PolyclinicAutoCompleteBloc([String? initialValue]) : super(initialValue);

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return [
      'Turcios Lima',
      'Luis De la Puente Uceda',
      'C.Q. Diez de Octubre',
    ]; //TODO: Mocked data.
  }
}
