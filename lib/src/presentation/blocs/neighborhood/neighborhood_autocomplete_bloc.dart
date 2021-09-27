import 'dart:async';

import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class NeighborhoodAutoCompleteBloc extends AutoCompleteBloc<String> {
  NeighborhoodAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getNeighborhoods(changedValue);
    return either.getOrElse((_) => []);
  }
}
