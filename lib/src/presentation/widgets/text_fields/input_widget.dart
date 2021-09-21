import 'package:flutter/material.dart';

import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    Key? key,
    this.controller,
    this.onChanged,
    this.errorText,
    this.hintText,
    this.onSubmitted,
    this.labelText,
    this.focusNode,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextInputType keyboardType;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? errorText;
  final String? hintText;
  final String? labelText;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: keyboardType == TextInputType.multiline ? null : 1,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      focusNode: focusNode,
      decoration: TextFieldDecorations.decoration(
        hintText: hintText,
        errorText: errorText,
        labelText: labelText,
      ),
    );
  }
}
