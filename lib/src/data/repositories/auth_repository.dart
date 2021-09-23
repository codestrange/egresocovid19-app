import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/data/utils/utils.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
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
            _isLoggedIn = false;
          },
        ),
      )
      ..add(BearerInterceptor(oauth));
  }

  final OAuth oauth;
  final _controller = StreamController<AuthStatusEntity>();
  var _isLoggedIn = false;

  @override
  bool get isLoggedIn => _isLoggedIn;

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
      _isLoggedIn = true;
      return const Right(unit);
    } catch (e) {
      _isLoggedIn = false;
      return catchMethod(e);
    }
  }

  @override
  Future<bool> logOut() async {
    _isLoggedIn = false;
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
      return _isLoggedIn = token != null;
    } catch (e) {
      log(e.toString());
      return false;
    }
  }
}
