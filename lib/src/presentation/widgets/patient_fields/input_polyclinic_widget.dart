import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PolyclinicInputWidget extends StatelessWidget {
  const PolyclinicInputWidget({
    Key? key,
    required this.suggestionsStream,
    this.onSubmitted,
    this.onSelected,
    this.onChanged,
    this.labelText,
    this.hintText,
    this.errorText,
    this.initialValue,
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

  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return SimpleAutoCompleteTextField(
      controller:
          initialValue != null ? TextEditing.fromValue(initialValue!) : null,
      suggestionsStream: suggestionsStream,
      onTextChanged: onChanged,
      onTextSubmitted: onSubmitted,
      onItemSelected: onSelected ?? id,
      itemBuilder: (context, suggestion) => Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(suggestion.toString()),
      ),
      decoration: TextFieldDecorations.decoration(
        hintText: hintText,
        errorText: errorText,
        labelText: labelText ??
            Messages.of(context)!.polyclinicInputWidgetDefaultLabelText,
      ),
    );
  }
}
