import 'dart:async';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:egresocovid19/src/presentation/blocs/utils/input_errors.dart';
import 'package:injectable/injectable.dart';
import 'package:lyform/lyform.dart';

abstract class ILoginBloc extends FormBloc<void, ErrorEntity> {
  InputBloc<String> get email;
  InputBloc<String> get password;

  @override
  List<InputBloc> get inputs => [email, password];
}

@Injectable(as: ILoginBloc)
class LoginBloc extends ILoginBloc {
  LoginBloc({
    required this.authService,
  }) : super();

  final IAuthService authService;

  @override
  final email = InputBloc<String>(
    pureValue: '',
    validationType: ValidationType.explicit,
    validators: [
      StringValidator.required,
      StringValidator.email,
    ],
  );

  @override
  final password = InputBloc<String>(
    pureValue: '',
    validators: [
      StringValidator.required,
    ],
  );

  @override
  Future<FormBlocState<void, ErrorEntity>> onSubmmit() async {
    final response = await authService.logIn(
      user: UserPostEntity(
        email: email.state.value,
        password: password.state.value,
      ),
    );
    return response.fold(
      (_) => const FormSuccessState(null),
      (error) => FormErrorState(error),
    );
  }
}
