import 'dart:async';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:lyform_validators/lyform_validators.dart';

export 'login_bloc_texts.dart';

abstract class ILoginBloc extends FormBloc<void, ErrorEntity> {
  InputBloc<String> get email;
  InputBloc<String> get password;

  @override
  List<InputBloc> get inputs => [email, password];
}

@Injectable(as: ILoginBloc)
class LoginBloc extends ILoginBloc {
  LoginBloc(
    this.authService,
    @factoryParam LoginBlocTexts? texts,
  )   : assert(texts != null),
        texts = texts!,
        super();

  final IAuthService authService;
  final LoginBlocTexts texts;

  @override
  late final email = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validator: StringRequired(texts.validatorRequired) &
        StringIsEmail(texts.validatorEmail),
  );

  @override
  late final password = InputBloc<String>(
    pureValue: '',
    validator: StringRequired(texts.validatorRequired),
  );

  @override
  Future<FormBlocState<Unit, ErrorEntity>> onSubmmit() async {
    final response = await authService.logIn(
      user: UserPostEntity(
        email: email.state.value,
        password: password.state.value,
      ),
    );
    return response.fold(
      (error) => FormErrorState(error),
      (_) => const FormSuccessState(unit),
    );
  }
}
