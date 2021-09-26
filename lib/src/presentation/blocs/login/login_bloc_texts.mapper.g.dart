// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_bloc_texts.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: LoginBlocTextsMapper)
class LoginBlocTextsMapperImpl extends LoginBlocTextsMapper {
  LoginBlocTextsMapperImpl() : super();

  @override
  LoginBlocTexts fromMessages(Messages messages) {
    final loginbloctexts = LoginBlocTexts(
        validatorRequired: messages.validatorRequired,
        validatorEmail: messages.validatorEmail);
    return loginbloctexts;
  }
}
