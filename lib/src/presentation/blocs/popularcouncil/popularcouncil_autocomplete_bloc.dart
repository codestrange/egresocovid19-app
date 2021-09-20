import 'dart:async';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PopularCouncilAutoCompleteBloc extends AutoCompleteBloc<String> {
  PopularCouncilAutoCompleteBloc([String? initialValue]) : super(initialValue);

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return [
      'lorem',
      'ipsum',
      'dozen',
    ]; //TODO: Mocked data.
  }
}
