import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:injectable/injectable.dart';

class LoginBlocTexts {
  LoginBlocTexts({
    required this.validatorRequired,
    required this.validatorEmail,
  });

  final String validatorRequired;
  final String validatorEmail;
}

@lazySingleton
class LoginBlocTextsMapper {
  LoginBlocTexts fromMessages(Messages messages) {
    return LoginBlocTexts(
      validatorRequired: messages.validatorRequired,
      validatorEmail: messages.validatorEmail,
    );
  }
}
