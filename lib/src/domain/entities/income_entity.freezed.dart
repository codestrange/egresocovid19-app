// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'income_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IncomeEntityTearOff {
  const _$IncomeEntityTearOff();

  _BaseIncomeEntity call({required Income income, required int days}) {
    return _BaseIncomeEntity(
      income: income,
      days: days,
    );
  }
}

/// @nodoc
const $IncomeEntity = _$IncomeEntityTearOff();

/// @nodoc
mixin _$IncomeEntity {
  Income get income => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeEntityCopyWith<IncomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEntityCopyWith<$Res> {
  factory $IncomeEntityCopyWith(
          IncomeEntity value, $Res Function(IncomeEntity) then) =
      _$IncomeEntityCopyWithImpl<$Res>;
  $Res call({Income income, int days});
}

/// @nodoc
class _$IncomeEntityCopyWithImpl<$Res> implements $IncomeEntityCopyWith<$Res> {
  _$IncomeEntityCopyWithImpl(this._value, this._then);

  final IncomeEntity _value;
  // ignore: unused_field
  final $Res Function(IncomeEntity) _then;

  @override
  $Res call({
    Object? income = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Income,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BaseIncomeEntityCopyWith<$Res>
    implements $IncomeEntityCopyWith<$Res> {
  factory _$BaseIncomeEntityCopyWith(
          _BaseIncomeEntity value, $Res Function(_BaseIncomeEntity) then) =
      __$BaseIncomeEntityCopyWithImpl<$Res>;
  @override
  $Res call({Income income, int days});
}

/// @nodoc
class __$BaseIncomeEntityCopyWithImpl<$Res>
    extends _$IncomeEntityCopyWithImpl<$Res>
    implements _$BaseIncomeEntityCopyWith<$Res> {
  __$BaseIncomeEntityCopyWithImpl(
      _BaseIncomeEntity _value, $Res Function(_BaseIncomeEntity) _then)
      : super(_value, (v) => _then(v as _BaseIncomeEntity));

  @override
  _BaseIncomeEntity get _value => super._value as _BaseIncomeEntity;

  @override
  $Res call({
    Object? income = freezed,
    Object? days = freezed,
  }) {
    return _then(_BaseIncomeEntity(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Income,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BaseIncomeEntity implements _BaseIncomeEntity {
  const _$_BaseIncomeEntity({required this.income, required this.days});

  @override
  final Income income;
  @override
  final int days;

  @override
  String toString() {
    return 'IncomeEntity(income: $income, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BaseIncomeEntity &&
            (identical(other.income, income) ||
                const DeepCollectionEquality().equals(other.income, income)) &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(income) ^
      const DeepCollectionEquality().hash(days);

  @JsonKey(ignore: true)
  @override
  _$BaseIncomeEntityCopyWith<_BaseIncomeEntity> get copyWith =>
      __$BaseIncomeEntityCopyWithImpl<_BaseIncomeEntity>(this, _$identity);
}

abstract class _BaseIncomeEntity implements IncomeEntity {
  const factory _BaseIncomeEntity({required Income income, required int days}) =
      _$_BaseIncomeEntity;

  @override
  Income get income => throw _privateConstructorUsedError;
  @override
  int get days => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BaseIncomeEntityCopyWith<_BaseIncomeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
