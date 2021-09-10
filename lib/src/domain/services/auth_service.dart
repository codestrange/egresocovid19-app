import 'package:dartz/dartz.dart';
import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:egresocovid19/src/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthService {
  Future<Either<void, ErrorEntity>> logIn({
    required UserPostEntity user,
  });
  bool get isLoggedIn;
  Future<bool> logOut();
  Future<bool> recoverSession();
  Stream<AuthStatusEntity> get status;
  void dispose();
}

@LazySingleton(as: IAuthService)
class AuthService implements IAuthService {
  AuthService({
    required this.authRepository,
  });

  final IAuthRepository authRepository;

  @override
  Future<Either<void, ErrorEntity>> logIn({required UserPostEntity user}) =>
      authRepository.logIn(user: user);

  @override
  Future<bool> logOut() => authRepository.logOut();

  @override
  bool get isLoggedIn => authRepository.isLoggedIn;

  @override
  Stream<AuthStatusEntity> get status => authRepository.status;

  @override
  void dispose() => authRepository.dispose();

  @override
  Future<bool> recoverSession() => authRepository.recoverSession();
}
