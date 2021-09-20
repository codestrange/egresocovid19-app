import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PopularCouncilInputWidget extends StatelessWidget {
  const PopularCouncilInputWidget({
    Key? key,
    required this.suggestionsStream,
    this.onSubmitted,
    this.onSelected,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.errorText,
  }) : super(key: key);

  final Stream<List<String>> suggestionsStream;

  ///on suggestion selected or submit
  final dynamic Function(String)? onSubmitted;

  ///on suggestion selected
  final dynamic Function(dynamic)? onSelected;

  ///on text changed
  final dynamic Function(String)? onChanged;

  final String? labelText;

  final String? hintText;

  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return SimpleAutoCompleteTextField(
      suggestionsStream: suggestionsStream,
      onTextChanged: onChanged,
      onTextSubmitted: onSubmitted,
      onItemSelected: onSelected ?? id,
      itemBuilder: (context, suggestion) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(suggestion.toString())),
      decoration: TextFieldDecorations.decoration(
        hintText: hintText,
        errorText: errorText,
        labelText: labelText ?? 'Consejo Popular',
      ),
    );
  }
}
