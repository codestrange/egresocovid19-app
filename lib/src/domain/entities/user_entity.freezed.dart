// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEntityTearOff {
  const _$UserEntityTearOff();

  UserGetEntity get({required String email}) {
    return UserGetEntity(
      email: email,
    );
  }

  UserPostEntity post({required String email, required String password}) {
    return UserPostEntity(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $UserEntity = _$UserEntityTearOff();

/// @nodoc
mixin _$UserEntity {
  String get email => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) get,
    required TResult Function(String email, String password) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? get,
    TResult Function(String email, String password)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? get,
    TResult Function(String email, String password)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserGetEntity value) get,
    required TResult Function(UserPostEntity value) post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserGetEntity value)? get,
    TResult Function(UserPostEntity value)? post,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserGetEntity value)? get,
    TResult Function(UserPostEntity value)? post,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  final UserEntity _value;
  // ignore: unused_field
  final $Res Function(UserEntity) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UserGetEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory $UserGetEntityCopyWith(
          UserGetEntity value, $Res Function(UserGetEntity) then) =
      _$UserGetEntityCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class _$UserGetEntityCopyWithImpl<$Res> extends _$UserEntityCopyWithImpl<$Res>
    implements $UserGetEntityCopyWith<$Res> {
  _$UserGetEntityCopyWithImpl(
      UserGetEntity _value, $Res Function(UserGetEntity) _then)
      : super(_value, (v) => _then(v as UserGetEntity));

  @override
  UserGetEntity get _value => super._value as UserGetEntity;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(UserGetEntity(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserGetEntity implements UserGetEntity {
  const _$UserGetEntity({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'UserEntity.get(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserGetEntity &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $UserGetEntityCopyWith<UserGetEntity> get copyWith =>
      _$UserGetEntityCopyWithImpl<UserGetEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) get,
    required TResult Function(String email, String password) post,
  }) {
    return get(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? get,
    TResult Function(String email, String password)? post,
  }) {
    return get?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? get,
    TResult Function(String email, String password)? post,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserGetEntity value) get,
    required TResult Function(UserPostEntity value) post,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserGetEntity value)? get,
    TResult Function(UserPostEntity value)? post,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserGetEntity value)? get,
    TResult Function(UserPostEntity value)? post,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class UserGetEntity implements UserEntity {
  const factory UserGetEntity({required String email}) = _$UserGetEntity;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  $UserGetEntityCopyWith<UserGetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory $UserPostEntityCopyWith(
          UserPostEntity value, $Res Function(UserPostEntity) then) =
      _$UserPostEntityCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class _$UserPostEntityCopyWithImpl<$Res> extends _$UserEntityCopyWithImpl<$Res>
    implements $UserPostEntityCopyWith<$Res> {
  _$UserPostEntityCopyWithImpl(
      UserPostEntity _value, $Res Function(UserPostEntity) _then)
      : super(_value, (v) => _then(v as UserPostEntity));

  @override
  UserPostEntity get _value => super._value as UserPostEntity;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(UserPostEntity(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserPostEntity implements UserPostEntity {
  const _$UserPostEntity({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserEntity.post(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPostEntity &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $UserPostEntityCopyWith<UserPostEntity> get copyWith =>
      _$UserPostEntityCopyWithImpl<UserPostEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) get,
    required TResult Function(String email, String password) post,
  }) {
    return post(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? get,
    TResult Function(String email, String password)? post,
  }) {
    return post?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? get,
    TResult Function(String email, String password)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserGetEntity value) get,
    required TResult Function(UserPostEntity value) post,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserGetEntity value)? get,
    TResult Function(UserPostEntity value)? post,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserGetEntity value)? get,
    TResult Function(UserPostEntity value)? post,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class UserPostEntity implements UserEntity {
  const factory UserPostEntity(
      {required String email, required String password}) = _$UserPostEntity;

  @override
  String get email;
  String get password;
  @override
  @JsonKey(ignore: true)
  $UserPostEntityCopyWith<UserPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
