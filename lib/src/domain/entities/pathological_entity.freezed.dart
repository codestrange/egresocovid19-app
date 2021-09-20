// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pathological_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PathologicalEntityTearOff {
  const _$PathologicalEntityTearOff();

  _PathologicalEntity call({required String name, String? treatments}) {
    return _PathologicalEntity(
      name: name,
      treatments: treatments,
    );
  }
}

/// @nodoc
const $PathologicalEntity = _$PathologicalEntityTearOff();

/// @nodoc
mixin _$PathologicalEntity {
  String get name => throw _privateConstructorUsedError;
  String? get treatments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathologicalEntityCopyWith<PathologicalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologicalEntityCopyWith<$Res> {
  factory $PathologicalEntityCopyWith(
          PathologicalEntity value, $Res Function(PathologicalEntity) then) =
      _$PathologicalEntityCopyWithImpl<$Res>;
  $Res call({String name, String? treatments});
}

/// @nodoc
class _$PathologicalEntityCopyWithImpl<$Res>
    implements $PathologicalEntityCopyWith<$Res> {
  _$PathologicalEntityCopyWithImpl(this._value, this._then);

  final PathologicalEntity _value;
  // ignore: unused_field
  final $Res Function(PathologicalEntity) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? treatments = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      treatments: treatments == freezed
          ? _value.treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PathologicalEntityCopyWith<$Res>
    implements $PathologicalEntityCopyWith<$Res> {
  factory _$PathologicalEntityCopyWith(
          _PathologicalEntity value, $Res Function(_PathologicalEntity) then) =
      __$PathologicalEntityCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? treatments});
}

/// @nodoc
class __$PathologicalEntityCopyWithImpl<$Res>
    extends _$PathologicalEntityCopyWithImpl<$Res>
    implements _$PathologicalEntityCopyWith<$Res> {
  __$PathologicalEntityCopyWithImpl(
      _PathologicalEntity _value, $Res Function(_PathologicalEntity) _then)
      : super(_value, (v) => _then(v as _PathologicalEntity));

  @override
  _PathologicalEntity get _value => super._value as _PathologicalEntity;

  @override
  $Res call({
    Object? name = freezed,
    Object? treatments = freezed,
  }) {
    return _then(_PathologicalEntity(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      treatments: treatments == freezed
          ? _value.treatments
          : treatments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PathologicalEntity implements _PathologicalEntity {
  const _$_PathologicalEntity({required this.name, this.treatments});

  @override
  final String name;
  @override
  final String? treatments;

  @override
  String toString() {
    return 'PathologicalEntity(name: $name, treatments: $treatments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PathologicalEntity &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.treatments, treatments) ||
                const DeepCollectionEquality()
                    .equals(other.treatments, treatments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(treatments);

  @JsonKey(ignore: true)
  @override
  _$PathologicalEntityCopyWith<_PathologicalEntity> get copyWith =>
      __$PathologicalEntityCopyWithImpl<_PathologicalEntity>(this, _$identity);
}

abstract class _PathologicalEntity implements PathologicalEntity {
  const factory _PathologicalEntity(
      {required String name, String? treatments}) = _$_PathologicalEntity;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get treatments => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PathologicalEntityCopyWith<_PathologicalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
