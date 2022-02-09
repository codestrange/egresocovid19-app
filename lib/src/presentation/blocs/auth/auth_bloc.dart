import 'dart:async';

import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/services/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

abstract class IAuthBloc extends Bloc<AuthEvent, AuthState> {
  IAuthBloc(AuthState initialState) : super(initialState);
}

@LazySingleton(as: IAuthBloc)
class AuthBloc extends IAuthBloc {
  AuthBloc({
    required this.authService,
  }) : super(const AuthState.authenticated()) {
    _controller = authService.status.listen(
      (status) => add(AuthEvent.statusChanged(status: status)),
    );
    on<AuthEvent>((event, emit) {
      event.when(
        start: () {
          authService.recoverSession();
        },
        statusChanged: (status) {
          emit(
            status.when(
              authenticated: () => const AuthState.authenticated(),
              unauthenticated: () => const AuthState.unauthenticated(),
            ),
          );
        },
        signOut: () {
          authService.logOut();
        },
      );
    });
    add(const AuthEvent.start());
  }

  final IAuthService authService;
  late StreamSubscription<AuthStatusEntity> _controller;

  @override
  Future<void> close() {
    _controller.cancel();
    authService.dispose();
    return super.close();
  }
}
