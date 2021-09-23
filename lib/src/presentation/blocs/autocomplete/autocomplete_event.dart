part of 'autocomplete_bloc.dart';

@immutable
abstract class AutocompleteEvent {}

class AutocompleteValueChanged extends AutocompleteEvent {
  AutocompleteValueChanged(
    this.input,
  ) : super();

  final String input;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutocompleteValueChanged && other.input == input;
  }

  @override
  int get hashCode => input.hashCode;
}

class AutocompleteSuggestionSelected<T> extends AutocompleteEvent {
  AutocompleteSuggestionSelected(this.value) : super();

  final T value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutocompleteSuggestionSelected && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
