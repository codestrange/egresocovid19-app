// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorEntityTearOff {
  const _$ErrorEntityTearOff();

  _BaseErrorEntity call({required String errorCode, required String message}) {
    return _BaseErrorEntity(
      errorCode: errorCode,
      message: message,
    );
  }
}

/// @nodoc
const $ErrorEntity = _$ErrorEntityTearOff();

/// @nodoc
mixin _$ErrorEntity {
  String get errorCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorEntityCopyWith<ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorEntityCopyWith<$Res> {
  factory $ErrorEntityCopyWith(
          ErrorEntity value, $Res Function(ErrorEntity) then) =
      _$ErrorEntityCopyWithImpl<$Res>;
  $Res call({String errorCode, String message});
}

/// @nodoc
class _$ErrorEntityCopyWithImpl<$Res> implements $ErrorEntityCopyWith<$Res> {
  _$ErrorEntityCopyWithImpl(this._value, this._then);

  final ErrorEntity _value;
  // ignore: unused_field
  final $Res Function(ErrorEntity) _then;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BaseErrorEntityCopyWith<$Res>
    implements $ErrorEntityCopyWith<$Res> {
  factory _$BaseErrorEntityCopyWith(
          _BaseErrorEntity value, $Res Function(_BaseErrorEntity) then) =
      __$BaseErrorEntityCopyWithImpl<$Res>;
  @override
  $Res call({String errorCode, String message});
}

/// @nodoc
class __$BaseErrorEntityCopyWithImpl<$Res>
    extends _$ErrorEntityCopyWithImpl<$Res>
    implements _$BaseErrorEntityCopyWith<$Res> {
  __$BaseErrorEntityCopyWithImpl(
      _BaseErrorEntity _value, $Res Function(_BaseErrorEntity) _then)
      : super(_value, (v) => _then(v as _BaseErrorEntity));

  @override
  _BaseErrorEntity get _value => super._value as _BaseErrorEntity;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_BaseErrorEntity(
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BaseErrorEntity implements _BaseErrorEntity {
  const _$_BaseErrorEntity({required this.errorCode, required this.message});

  @override
  final String errorCode;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorEntity(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseErrorEntity &&
            (identical(other.errorCode, errorCode) ||
                const DeepCollectionEquality()
                    .equals(other.errorCode, errorCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorCode) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$BaseErrorEntityCopyWith<_BaseErrorEntity> get copyWith =>
      __$BaseErrorEntityCopyWithImpl<_BaseErrorEntity>(this, _$identity);
}

abstract class _BaseErrorEntity implements ErrorEntity {
  const factory _BaseErrorEntity(
      {required String errorCode,
      required String message}) = _$_BaseErrorEntity;

  @override
  String get errorCode => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseErrorEntityCopyWith<_BaseErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
