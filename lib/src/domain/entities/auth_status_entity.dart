import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status_entity.freezed.dart';

@freezed
class AuthStatusEntity with _$AuthStatusEntity {
  const factory AuthStatusEntity.authenticated() =
      _AuthenticatedAuthStatusEntity;
  const factory AuthStatusEntity.unauthenticated() =
      _UnauthenticatedAuthStatusEntity;
}
