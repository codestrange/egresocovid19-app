part of 'autocomplete_bloc.dart';

@immutable
class AutocompleteState<T> {
  final String input;

  final T? value;

  final List<T> suggestions;

  AutocompleteState({
    required this.input,
    required this.value,
    required this.suggestions,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AutocompleteState<T> &&
        other.input == input &&
        other.value == value &&
        listEquals(other.suggestions, suggestions);
  }

  @override
  int get hashCode => input.hashCode ^ value.hashCode ^ suggestions.hashCode;

  AutocompleteState<T> copyWith({
    String? input,
    T? value,
    List<T>? suggestions,
  }) {
    return AutocompleteState<T>(
      input: input ?? this.input,
      value: value ?? this.value,
      suggestions: suggestions ?? this.suggestions,
    );
  }
}
