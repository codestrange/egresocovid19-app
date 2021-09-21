import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';

@injectable
class PolyclinicAutoCompleteBloc extends AutoCompleteBloc<String> {
  PolyclinicAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getPolyclinics(changedValue);
    return either.getOrElse(() => []);
  }
}
