part of 'autocomplete_bloc.dart';

@immutable
abstract class AutocompleteEvent {}

class AutocompleteValueChanged extends AutocompleteEvent {
  final String input;

  AutocompleteValueChanged(
    this.input,
  ) : super();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutocompleteValueChanged && other.input == input;
  }

  @override
  int get hashCode => input.hashCode;
}

class AutocompleteSuggestionSelected<T> extends AutocompleteEvent {
  final T value;

  AutocompleteSuggestionSelected(this.value) : super();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutocompleteSuggestionSelected && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
