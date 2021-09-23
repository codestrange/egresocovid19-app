// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'province_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProvinceEntityTearOff {
  const _$ProvinceEntityTearOff();

  _ProvinceEntity call(
      {required String name,
      required String code,
      required List<MunicipalityEntity> municipalities}) {
    return _ProvinceEntity(
      name: name,
      code: code,
      municipalities: municipalities,
    );
  }
}

/// @nodoc
const $ProvinceEntity = _$ProvinceEntityTearOff();

/// @nodoc
mixin _$ProvinceEntity {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  List<MunicipalityEntity> get municipalities =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProvinceEntityCopyWith<ProvinceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceEntityCopyWith<$Res> {
  factory $ProvinceEntityCopyWith(
          ProvinceEntity value, $Res Function(ProvinceEntity) then) =
      _$ProvinceEntityCopyWithImpl<$Res>;
  $Res call(
      {String name, String code, List<MunicipalityEntity> municipalities});
}

/// @nodoc
class _$ProvinceEntityCopyWithImpl<$Res>
    implements $ProvinceEntityCopyWith<$Res> {
  _$ProvinceEntityCopyWithImpl(this._value, this._then);

  final ProvinceEntity _value;
  // ignore: unused_field
  final $Res Function(ProvinceEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? municipalities = freezed,
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
      municipalities: municipalities == freezed
          ? _value.municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<MunicipalityEntity>,
    ));
  }
}

/// @nodoc
abstract class _$ProvinceEntityCopyWith<$Res>
    implements $ProvinceEntityCopyWith<$Res> {
  factory _$ProvinceEntityCopyWith(
          _ProvinceEntity value, $Res Function(_ProvinceEntity) then) =
      __$ProvinceEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String code, List<MunicipalityEntity> municipalities});
}

/// @nodoc
class __$ProvinceEntityCopyWithImpl<$Res>
    extends _$ProvinceEntityCopyWithImpl<$Res>
    implements _$ProvinceEntityCopyWith<$Res> {
  __$ProvinceEntityCopyWithImpl(
      _ProvinceEntity _value, $Res Function(_ProvinceEntity) _then)
      : super(_value, (v) => _then(v as _ProvinceEntity));

  @override
  _ProvinceEntity get _value => super._value as _ProvinceEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? municipalities = freezed,
  }) {
    return _then(_ProvinceEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      municipalities: municipalities == freezed
          ? _value.municipalities
          : municipalities // ignore: cast_nullable_to_non_nullable
              as List<MunicipalityEntity>,
    ));
  }
}

/// @nodoc

class _$_ProvinceEntity implements _ProvinceEntity {
  const _$_ProvinceEntity(
      {required this.name, required this.code, required this.municipalities});

  @override
  final String name;
  @override
  final String code;
  @override
  final List<MunicipalityEntity> municipalities;

  @override
  String toString() {
    return 'ProvinceEntity(name: $name, code: $code, municipalities: $municipalities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProvinceEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.municipalities, municipalities) ||
                const DeepCollectionEquality()
                    .equals(other.municipalities, municipalities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(municipalities);

  @JsonKey(ignore: true)
  @override
  _$ProvinceEntityCopyWith<_ProvinceEntity> get copyWith =>
      __$ProvinceEntityCopyWithImpl<_ProvinceEntity>(this, _$identity);
}

abstract class _ProvinceEntity implements ProvinceEntity {
  const factory _ProvinceEntity(
      {required String name,
      required String code,
      required List<MunicipalityEntity> municipalities}) = _$_ProvinceEntity;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  List<MunicipalityEntity> get municipalities =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProvinceEntityCopyWith<_ProvinceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
