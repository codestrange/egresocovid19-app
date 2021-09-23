import 'dart:async';

import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SymptompsAutoCompleteBloc extends AutoCompleteBloc<String> {
  SymptompsAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = changedValue.isEmpty
        ? await autoCompleteService.getDefaultSymptoms()
        : await autoCompleteService.getSymptoms(changedValue);
    final defaults = either.getOrElse(() => []);
    return defaults
        .where((e) => e.toLowerCase().contains(changedValue.toLowerCase()))
        .toList();
  }
}

@injectable
class AntibioticsAutoCompleteBloc extends AutoCompleteBloc<String> {
  AntibioticsAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getAntibiotics(changedValue);
    final defaults = either.getOrElse(() => []);
    return defaults
        .where((e) => e.toLowerCase().contains(changedValue.toLowerCase()))
        .toList();
  }
}

@injectable
class AnotherVaccinesAutoCompleteBloc extends AutoCompleteBloc<String> {
  AnotherVaccinesAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either =
        await autoCompleteService.getAnotherVaccinesAgainstCovid(changedValue);
    final defaults = either.getOrElse(() => []);
    return defaults
        .where((e) => e.toLowerCase().contains(changedValue.toLowerCase()))
        .toList();
  }
}

@injectable
class OtherAftermathAutoCompleteBloc extends AutoCompleteBloc<String> {
  OtherAftermathAutoCompleteBloc(
    this.autoCompleteService,
  ) : super('');

  final IAutoCompleteService autoCompleteService;

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    final either = await autoCompleteService.getOthersAftermaths(changedValue);
    final defaults = either.getOrElse(() => []);
    return defaults
        .where((e) => e.toLowerCase().contains(changedValue.toLowerCase()))
        .toList();
  }
}
