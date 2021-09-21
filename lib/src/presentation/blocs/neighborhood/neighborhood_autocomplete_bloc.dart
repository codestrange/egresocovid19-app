import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/domain/services/autocomplete_service.dart';
import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';

@injectable
class NeighborhoodAutoCompleteBloc extends AutoCompleteBloc<String> {
  NeighborhoodAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getNeighborhoods(changedValue);
    return either.getOrElse(() => []);
  }
}
