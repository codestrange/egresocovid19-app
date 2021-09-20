import 'dart:async';

import 'package:injectable/injectable.dart';

import 'package:egresocovid19/src/presentation/blocs/autocomplete/autocomplete_bloc.dart';

@injectable
class BlockNumberAutoCompleteBloc extends AutoCompleteBloc<String> {
  BlockNumberAutoCompleteBloc([String? initialValue]) : super(initialValue);

  @override
  Future<List<String>> getSuggestions(String changedValue) async {
    return [
      '123',
      '321',
      '213',
      '312',
      '132',
      '231',
    ]; //TODO: Mocked data.
  }
}
