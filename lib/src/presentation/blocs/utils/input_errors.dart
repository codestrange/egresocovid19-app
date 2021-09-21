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

class IntValidator {
  static String? required(int? value) =>
      value == null ? 'error_null_value' : null;

  static String? Function(int?) greaterThan(int limit) =>
      (int? value) => value == null || (value <= limit)
          ? 'error_lesser_or_equal_than_$limit'
          : null;

  static String? Function(int?) greaterEqualThan(int limit) => (int? value) =>
      value == null || (value < limit) ? 'error_lesser_than_$limit' : null;

  static String? Function(int?) lesserThan(int limit) =>
      (int? value) => value == null || (value >= limit)
          ? 'error_greater_or_equal_than_$limit'
          : null;

  static String? Function(int?) lesserEquealThan(int limit) => (int? value) =>
      value == null || (value > limit) ? 'error_greater_than_$limit' : null;

  static String? nonNegative(int? value) =>
      value == null || value >= 0 ? null : 'error_value_negative';
}
