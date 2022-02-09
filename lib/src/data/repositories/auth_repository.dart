import 'dart:async';
import 'dart:developer';

import 'package:egresocovid19/src/data/utils/utils.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:oauth_dio/oauth_dio.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository(this.oauth) {
    oauth.dio.interceptors
      ..add(
        ForbiddenInterceptor(
          action: () async {
            _controller.add(const AuthStatusEntity.unauthenticated());
          },
        ),
      )
      ..add(BearerInterceptor(oauth));
  }

  final OAuth oauth;
  final _controller = StreamController<AuthStatusEntity>();

  @override
  Future<Either<ErrorEntity, Unit>> logIn({
    required UserPostEntity user,
  }) async {
    try {
      await oauth.requestTokenAndSave(
        PasswordGrant(
          username: user.email,
          password: user.password,
        ),
      );
      _controller.add(const AuthStatusEntity.authenticated());
      return const Right(unit);
    } catch (e) {
      _controller.add(const AuthStatusEntity.unauthenticated());
      return catchMethod(e);
    }
  }

  @override
  Future<bool> logOut() async {
    _controller.add(const AuthStatusEntity.unauthenticated());
    try {
      await oauth.storage.clear();
      return true;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }

  @override
  Stream<AuthStatusEntity> get status => _controller.stream;

  @override
  void dispose() => _controller.close();

  @override
  Future<bool> recoverSession() async {
    try {
      final token = await oauth.storage.fetch();
      if (token != null) {
        _controller.add(const AuthStatusEntity.authenticated());
        return true;
      }
    } catch (e) {
      log(e.toString());
    }
    _controller.add(const AuthStatusEntity.unauthenticated());
    return false;
  }
}
