// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStatusEntityTearOff {
  const _$AuthStatusEntityTearOff();

  _AuthenticatedAuthStatusEntity authenticated() {
    return const _AuthenticatedAuthStatusEntity();
  }

  _UnauthenticatedAuthStatusEntity unauthenticated() {
    return const _UnauthenticatedAuthStatusEntity();
  }
}

/// @nodoc
const $AuthStatusEntity = _$AuthStatusEntityTearOff();

/// @nodoc
mixin _$AuthStatusEntity {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthStatusEntity value)
        authenticated,
    required TResult Function(_UnauthenticatedAuthStatusEntity value)
        unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthStatusEntity value)? authenticated,
    TResult Function(_UnauthenticatedAuthStatusEntity value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthStatusEntity value)? authenticated,
    TResult Function(_UnauthenticatedAuthStatusEntity value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusEntityCopyWith<$Res> {
  factory $AuthStatusEntityCopyWith(
          AuthStatusEntity value, $Res Function(AuthStatusEntity) then) =
      _$AuthStatusEntityCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStatusEntityCopyWithImpl<$Res>
    implements $AuthStatusEntityCopyWith<$Res> {
  _$AuthStatusEntityCopyWithImpl(this._value, this._then);

  final AuthStatusEntity _value;
  // ignore: unused_field
  final $Res Function(AuthStatusEntity) _then;
}

/// @nodoc
abstract class _$AuthenticatedAuthStatusEntityCopyWith<$Res> {
  factory _$AuthenticatedAuthStatusEntityCopyWith(
          _AuthenticatedAuthStatusEntity value,
          $Res Function(_AuthenticatedAuthStatusEntity) then) =
      __$AuthenticatedAuthStatusEntityCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedAuthStatusEntityCopyWithImpl<$Res>
    extends _$AuthStatusEntityCopyWithImpl<$Res>
    implements _$AuthenticatedAuthStatusEntityCopyWith<$Res> {
  __$AuthenticatedAuthStatusEntityCopyWithImpl(
      _AuthenticatedAuthStatusEntity _value,
      $Res Function(_AuthenticatedAuthStatusEntity) _then)
      : super(_value, (v) => _then(v as _AuthenticatedAuthStatusEntity));

  @override
  _AuthenticatedAuthStatusEntity get _value =>
      super._value as _AuthenticatedAuthStatusEntity;
}

/// @nodoc

class _$_AuthenticatedAuthStatusEntity
    implements _AuthenticatedAuthStatusEntity {
  const _$_AuthenticatedAuthStatusEntity();

  @override
  String toString() {
    return 'AuthStatusEntity.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticatedAuthStatusEntity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthStatusEntity value)
        authenticated,
    required TResult Function(_UnauthenticatedAuthStatusEntity value)
        unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthStatusEntity value)? authenticated,
    TResult Function(_UnauthenticatedAuthStatusEntity value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthStatusEntity value)? authenticated,
    TResult Function(_UnauthenticatedAuthStatusEntity value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedAuthStatusEntity implements AuthStatusEntity {
  const factory _AuthenticatedAuthStatusEntity() =
      _$_AuthenticatedAuthStatusEntity;
}

/// @nodoc
abstract class _$UnauthenticatedAuthStatusEntityCopyWith<$Res> {
  factory _$UnauthenticatedAuthStatusEntityCopyWith(
          _UnauthenticatedAuthStatusEntity value,
          $Res Function(_UnauthenticatedAuthStatusEntity) then) =
      __$UnauthenticatedAuthStatusEntityCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedAuthStatusEntityCopyWithImpl<$Res>
    extends _$AuthStatusEntityCopyWithImpl<$Res>
    implements _$UnauthenticatedAuthStatusEntityCopyWith<$Res> {
  __$UnauthenticatedAuthStatusEntityCopyWithImpl(
      _UnauthenticatedAuthStatusEntity _value,
      $Res Function(_UnauthenticatedAuthStatusEntity) _then)
      : super(_value, (v) => _then(v as _UnauthenticatedAuthStatusEntity));

  @override
  _UnauthenticatedAuthStatusEntity get _value =>
      super._value as _UnauthenticatedAuthStatusEntity;
}

/// @nodoc

class _$_UnauthenticatedAuthStatusEntity
    implements _UnauthenticatedAuthStatusEntity {
  const _$_UnauthenticatedAuthStatusEntity();

  @override
  String toString() {
    return 'AuthStatusEntity.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnauthenticatedAuthStatusEntity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthStatusEntity value)
        authenticated,
    required TResult Function(_UnauthenticatedAuthStatusEntity value)
        unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthStatusEntity value)? authenticated,
    TResult Function(_UnauthenticatedAuthStatusEntity value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthStatusEntity value)? authenticated,
    TResult Function(_UnauthenticatedAuthStatusEntity value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedAuthStatusEntity implements AuthStatusEntity {
  const factory _UnauthenticatedAuthStatusEntity() =
      _$_UnauthenticatedAuthStatusEntity;
}
