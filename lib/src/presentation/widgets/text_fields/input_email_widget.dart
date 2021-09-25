import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';

class EmailInputWidget extends StatelessWidget {
  const EmailInputWidget({
    Key? key,
    this.controller,
    this.onChanged,
    this.errorText,
    this.hintText,
    this.onSubmitted,
  }) : super(key: key);

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? errorText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      autofillHints: const [AutofillHints.email, AutofillHints.username],
      keyboardType: TextInputType.emailAddress,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      decoration: TextFieldDecorations.decoration(
        prefixIcon: Icons.email_rounded,
        hintText: hintText ?? 'Correo', // TODO
        errorText: errorText,
      ),
    );
  }
}
