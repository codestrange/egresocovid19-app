import 'package:egresocovid19/src/presentation/widgets/text_fields/utils.dart';
import 'package:flutter/material.dart';

class PasswordInputWidget extends StatefulWidget {
  const PasswordInputWidget({
    Key? key,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.controller,
    this.hintText,
  }) : super(key: key);

  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? errorText;
  final TextEditingController? controller;
  final String? hintText;

  @override
  _PasswordInputWidgetState createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    final isWrong = widget.errorText != null;
    return TextField(
      controller: widget.controller,
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.emailAddress,
      onChanged: widget.onChanged,
      onSubmitted: widget.onSubmitted,
      obscureText: obscureText,
      decoration: TextFieldDecorations.decoration(
        suffixIcon: IconButton(
          icon: Icon(
            obscureText
                ? Icons.visibility_rounded
                : Icons.visibility_off_rounded,
            color: isWrong ? Colors.red : null,
          ),
          onPressed: () {
            setState(
              () {
                obscureText = !obscureText;
              },
            );
          },
        ),
        prefixIcon: Icons.lock_rounded,
        hintText: widget.hintText ?? 'Contraseña', // TODO
        errorText: widget.errorText,
      ),
    );
  }
}
