import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';

@injectable
class SurgeryAutoCompleteBloc extends AutoCompleteBloc<String> {
  SurgeryAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getSurgeries(changedValue);
    return either.getOrElse(() => []);
  }
}
