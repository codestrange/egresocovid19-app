import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'autocomplete_event.dart';
part 'autocomplete_state.dart';

abstract class AutoCompleteBloc<T>
    extends Bloc<AutocompleteEvent, AutocompleteState> {
  AutoCompleteBloc(
    T? initialValue, {
    String initialInput = '',
    this.suggestionsAmount = 5,
  }) : super(
          AutocompleteState<T>(
            input: initialInput,
            value: initialValue,
            suggestions: const [],
          ),
        ) {
    on<AutocompleteSuggestionSelected>(
      (event, emit) async {
        final List<T> suggestions = await getSuggestions(state.input);
        emit(
          state.copyWith(
            value: event.value,
            input: event.value.toString(),
            suggestions: suggestions.take(suggestionsAmount).toList(),
          ),
        );
      },
    );
    on<AutocompleteValueChanged>(
      (event, emit) async {
        final suggestions = await getSuggestions(event.input);
        emit(
          state.copyWith(
            value: null,
            input: event.input,
            suggestions: suggestions.take(suggestionsAmount).toList(),
          ),
        );
      },
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(seconds: 1))
            .switchMap(mapper);
      },
    );
  }
  final int suggestionsAmount;

  Stream<List<T>> get suggestionsStream =>
      stream.map((state) => state.suggestions as List<T>);

  Future<void> changed(String input) async {
    add(AutocompleteValueChanged(input));
  }

  Future<void> selected(T value) async {
    add(AutocompleteSuggestionSelected(value));
  }

  Future<List<T>> getSuggestions(String changedValue);
}
