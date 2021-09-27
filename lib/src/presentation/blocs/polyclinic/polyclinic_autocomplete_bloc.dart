import 'dart:async';

import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PolyclinicAutoCompleteBloc extends AutoCompleteBloc<String> {
  PolyclinicAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getPolyclinics(changedValue);
    return either.getOrElse((_) => []);
  }
}
