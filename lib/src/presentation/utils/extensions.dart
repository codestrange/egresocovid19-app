import 'package:flutter/material.dart';

extension TextEditing on TextEditingController {
  // Used to fix error when navigate between pages with inputs
  static TextEditingController fromValue(String text) {
    return TextEditingController.fromValue(
      TextEditingValue(
        text: text,
        selection: TextSelection.collapsed(
          offset: text.length,
        ),
      ),
    );
  }
}
