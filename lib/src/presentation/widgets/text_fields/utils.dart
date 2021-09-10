import 'package:flutter/material.dart';

class TextFieldDecorations {
  static InputDecoration decoration({
    IconData? prefixIcon,
    Widget? suffixIcon,
    String? errorText,
    String? hintText,
    String? labelText,
    int maxLines = 1,
  }) {
    final isWrong = errorText != null;
    final hasPrefix = prefixIcon != null;
    final prefix = hasPrefix
        ? Icon(
            prefixIcon,
            color: isWrong ? Colors.red : null,
          )
        : null;

    final padding = EdgeInsets.only(
      left: hasPrefix ? 0 : 10,
      right: 10,
      top: maxLines > 1 ? 20 : 15,
      bottom: maxLines > 1 ? 20 : 15,
    );

    return InputDecoration(
      labelText: labelText,
      contentPadding: padding,
      prefixIcon: prefix,
      suffixIcon: suffixIcon,
      prefixIconConstraints: const BoxConstraints(minWidth: 60),
      suffixIconConstraints: const BoxConstraints(minWidth: 60),
      hintText: hintText,
      errorText: errorText,
    );
  }
}
