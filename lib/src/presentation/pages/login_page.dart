import 'package:beamer/beamer.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/presentation/blocs/blocs.dart';
import 'package:egresocovid19/src/presentation/i18n/i18n.dart';
import 'package:egresocovid19/src/presentation/utils/utils.dart';
import 'package:egresocovid19/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_lyform/flutter_lyform.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget {
  static BeamPage getPage(BuildContext context) {
    return BeamPage(
      key: const ValueKey('login'),
      title: getTitle(
        context,
        Messages.of(context)!.loginPageTitle,
      ),
      child: LoginPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ILoginBloc>(
      create: (context) => GetIt.I(),
      child: Scaffold(
        body: FormBlocListener<ILoginBloc, void, ErrorEntity>(
          onSuccess: (user) => context.beamToNamed('/patients'),
          onError: (error) => ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(
                  Messages.of(context)!.loginError,
                ),
              ),
            ),
          child: Column(
            children: [
              Flexible(
                flex: 2,
                child: Center(
                  child: Text(
                    Messages.of(context)!.homeDrawerTitle,
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Flexible(
                flex: 3,
                child: Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints.loose(
                      const Size.fromWidth(400),
                    ),
                    child: const _LoginForm(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return AutofillGroup(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Flexible(
                child: _EmailField(),
              ),
              const SizedBox(height: 10),
              const Flexible(
                child: _PasswordField(),
              ),
              const SizedBox(height: 10),
              SubmmitButton<ILoginBloc>(
                label: Messages.of(context)!.loginSubmitButton,
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<ILoginBloc>();
    return InputBlocBuilder<String>(
      bloc: form.email,
      builder: (context, state) => EmailInputWidget(
        controller: TextEditing.fromValue(state.value),
        errorText: state.error,
        onChanged: (value) => form.email.dirty(
          value.trim(),
        ),
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = context.read<ILoginBloc>();
    return InputBlocBuilder<String>(
      bloc: form.password,
      builder: (context, state) => PasswordInputWidget(
        controller: TextEditing.fromValue(state.value),
        errorText: state.error,
        onChanged: (value) => form.password.dirty(
          value.trim(),
        ),
      ),
    );
  }
}
