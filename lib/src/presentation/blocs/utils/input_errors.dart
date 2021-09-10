import 'package:email_validator/email_validator.dart';
import 'package:flutter_lyform/flutter_lyform.dart';

class StringValidator {
  /// assert when [value] is [null] or is not empty
  static String? required(String value) =>
      value.isEmpty ? 'error_empty_input' : null;

  static String? email(String value) =>
      EmailValidator.validate(value) ? null : 'error_invalid_email_input';

  static InputValidator<String> stringPasswordMatch(String Function() match) =>
      (String value) =>
          value != match() ? 'error_confirm_password_no_match_input' : null;
}
