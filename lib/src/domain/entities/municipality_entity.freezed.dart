// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'municipality_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MunicipalityEntityTearOff {
  const _$MunicipalityEntityTearOff();

  _MunicipalityEntity get({required String name, required String code}) {
    return _MunicipalityEntity(
      name: name,
      code: code,
    );
  }
}

/// @nodoc
const $MunicipalityEntity = _$MunicipalityEntityTearOff();

/// @nodoc
mixin _$MunicipalityEntity {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String code) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String code)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MunicipalityEntity value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MunicipalityEntity value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MunicipalityEntityCopyWith<MunicipalityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalityEntityCopyWith<$Res> {
  factory $MunicipalityEntityCopyWith(
          MunicipalityEntity value, $Res Function(MunicipalityEntity) then) =
      _$MunicipalityEntityCopyWithImpl<$Res>;
  $Res call({String name, String code});
}

/// @nodoc
class _$MunicipalityEntityCopyWithImpl<$Res>
    implements $MunicipalityEntityCopyWith<$Res> {
  _$MunicipalityEntityCopyWithImpl(this._value, this._then);

  final MunicipalityEntity _value;
  // ignore: unused_field
  final $Res Function(MunicipalityEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MunicipalityEntityCopyWith<$Res>
    implements $MunicipalityEntityCopyWith<$Res> {
  factory _$MunicipalityEntityCopyWith(
          _MunicipalityEntity value, $Res Function(_MunicipalityEntity) then) =
      __$MunicipalityEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code});
}

/// @nodoc
class __$MunicipalityEntityCopyWithImpl<$Res>
    extends _$MunicipalityEntityCopyWithImpl<$Res>
    implements _$MunicipalityEntityCopyWith<$Res> {
  __$MunicipalityEntityCopyWithImpl(
      _MunicipalityEntity _value, $Res Function(_MunicipalityEntity) _then)
      : super(_value, (v) => _then(v as _MunicipalityEntity));

  @override
  _MunicipalityEntity get _value => super._value as _MunicipalityEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_MunicipalityEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MunicipalityEntity implements _MunicipalityEntity {
  const _$_MunicipalityEntity({required this.name, required this.code});

  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'MunicipalityEntity.get(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MunicipalityEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$MunicipalityEntityCopyWith<_MunicipalityEntity> get copyWith =>
      __$MunicipalityEntityCopyWithImpl<_MunicipalityEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String code) get,
  }) {
    return get(name, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String code)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(name, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MunicipalityEntity value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MunicipalityEntity value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _MunicipalityEntity implements MunicipalityEntity {
  const factory _MunicipalityEntity(
      {required String name, required String code}) = _$_MunicipalityEntity;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MunicipalityEntityCopyWith<_MunicipalityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
