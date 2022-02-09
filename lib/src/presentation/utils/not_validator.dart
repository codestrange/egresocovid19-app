import 'package:lyform/lyform.dart';

class NotValidator<T> extends BaseValidator<T> {
  const NotValidator(this.validator);

  final Validator<T> validator;

  @override
  String? call(T value) => validator(value) == null ? validator.message : null;
}
