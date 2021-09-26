import 'package:egresocovid19/src/domain/entities/entities.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  Future<Either<ErrorEntity, Unit>> logIn({
    required UserPostEntity user,
  });
  bool get isLoggedIn;
  Future<bool> logOut();
  Future<bool> recoverSession();
  Stream<AuthStatusEntity> get status;
  void dispose();
}
