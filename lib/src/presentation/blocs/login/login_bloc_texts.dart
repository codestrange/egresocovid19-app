import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:injectable/injectable.dart';
import 'package:smartstruct/smartstruct.dart';

part 'login_bloc_texts.mapper.g.dart';

class LoginBlocTexts {
  LoginBlocTexts({
    required this.validatorRequired,
    required this.validatorEmail,
  });

  final String validatorRequired;
  final String validatorEmail;
}

@Mapper(useInjection: true)
abstract class LoginBlocTextsMapper {
  LoginBlocTexts fromMessages(Messages messages);
}
