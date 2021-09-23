// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'income_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IncomeEventTearOff {
  const _$IncomeEventTearOff();

  DaysChanged daysChanged(int days) {
    return DaysChanged(
      days,
    );
  }

  IncomeChanged incomeChanged(Income income) {
    return IncomeChanged(
      income,
    );
  }

  IncomeCleared cleared() {
    return const IncomeCleared();
  }
}

/// @nodoc
const $IncomeEvent = _$IncomeEventTearOff();

/// @nodoc
mixin _$IncomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int days) daysChanged,
    required TResult Function(Income income) incomeChanged,
    required TResult Function() cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int days)? daysChanged,
    TResult Function(Income income)? incomeChanged,
    TResult Function()? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaysChanged value) daysChanged,
    required TResult Function(IncomeChanged value) incomeChanged,
    required TResult Function(IncomeCleared value) cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaysChanged value)? daysChanged,
    TResult Function(IncomeChanged value)? incomeChanged,
    TResult Function(IncomeCleared value)? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeEventCopyWith<$Res> {
  factory $IncomeEventCopyWith(
          IncomeEvent value, $Res Function(IncomeEvent) then) =
      _$IncomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncomeEventCopyWithImpl<$Res> implements $IncomeEventCopyWith<$Res> {
  _$IncomeEventCopyWithImpl(this._value, this._then);

  final IncomeEvent _value;
  // ignore: unused_field
  final $Res Function(IncomeEvent) _then;
}

/// @nodoc
abstract class $DaysChangedCopyWith<$Res> {
  factory $DaysChangedCopyWith(
          DaysChanged value, $Res Function(DaysChanged) then) =
      _$DaysChangedCopyWithImpl<$Res>;
  $Res call({int days});
}

/// @nodoc
class _$DaysChangedCopyWithImpl<$Res> extends _$IncomeEventCopyWithImpl<$Res>
    implements $DaysChangedCopyWith<$Res> {
  _$DaysChangedCopyWithImpl(
      DaysChanged _value, $Res Function(DaysChanged) _then)
      : super(_value, (v) => _then(v as DaysChanged));

  @override
  DaysChanged get _value => super._value as DaysChanged;

  @override
  $Res call({
    Object? days = freezed,
  }) {
    return _then(DaysChanged(
      days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DaysChanged implements DaysChanged {
  const _$DaysChanged(this.days);

  @override
  final int days;

  @override
  String toString() {
    return 'IncomeEvent.daysChanged(days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DaysChanged &&
            (identical(other.days, days) ||
                const DeepCollectionEquality().equals(other.days, days)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(days);

  @JsonKey(ignore: true)
  @override
  $DaysChangedCopyWith<DaysChanged> get copyWith =>
      _$DaysChangedCopyWithImpl<DaysChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int days) daysChanged,
    required TResult Function(Income income) incomeChanged,
    required TResult Function() cleared,
  }) {
    return daysChanged(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int days)? daysChanged,
    TResult Function(Income income)? incomeChanged,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (daysChanged != null) {
      return daysChanged(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaysChanged value) daysChanged,
    required TResult Function(IncomeChanged value) incomeChanged,
    required TResult Function(IncomeCleared value) cleared,
  }) {
    return daysChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaysChanged value)? daysChanged,
    TResult Function(IncomeChanged value)? incomeChanged,
    TResult Function(IncomeCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (daysChanged != null) {
      return daysChanged(this);
    }
    return orElse();
  }
}

abstract class DaysChanged implements IncomeEvent {
  const factory DaysChanged(int days) = _$DaysChanged;

  int get days => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaysChangedCopyWith<DaysChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeChangedCopyWith<$Res> {
  factory $IncomeChangedCopyWith(
          IncomeChanged value, $Res Function(IncomeChanged) then) =
      _$IncomeChangedCopyWithImpl<$Res>;
  $Res call({Income income});
}

/// @nodoc
class _$IncomeChangedCopyWithImpl<$Res> extends _$IncomeEventCopyWithImpl<$Res>
    implements $IncomeChangedCopyWith<$Res> {
  _$IncomeChangedCopyWithImpl(
      IncomeChanged _value, $Res Function(IncomeChanged) _then)
      : super(_value, (v) => _then(v as IncomeChanged));

  @override
  IncomeChanged get _value => super._value as IncomeChanged;

  @override
  $Res call({
    Object? income = freezed,
  }) {
    return _then(IncomeChanged(
      income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Income,
    ));
  }
}

/// @nodoc

class _$IncomeChanged implements IncomeChanged {
  const _$IncomeChanged(this.income);

  @override
  final Income income;

  @override
  String toString() {
    return 'IncomeEvent.incomeChanged(income: $income)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncomeChanged &&
            (identical(other.income, income) ||
                const DeepCollectionEquality().equals(other.income, income)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(income);

  @JsonKey(ignore: true)
  @override
  $IncomeChangedCopyWith<IncomeChanged> get copyWith =>
      _$IncomeChangedCopyWithImpl<IncomeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int days) daysChanged,
    required TResult Function(Income income) incomeChanged,
    required TResult Function() cleared,
  }) {
    return incomeChanged(income);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int days)? daysChanged,
    TResult Function(Income income)? incomeChanged,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (incomeChanged != null) {
      return incomeChanged(income);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaysChanged value) daysChanged,
    required TResult Function(IncomeChanged value) incomeChanged,
    required TResult Function(IncomeCleared value) cleared,
  }) {
    return incomeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaysChanged value)? daysChanged,
    TResult Function(IncomeChanged value)? incomeChanged,
    TResult Function(IncomeCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (incomeChanged != null) {
      return incomeChanged(this);
    }
    return orElse();
  }
}

abstract class IncomeChanged implements IncomeEvent {
  const factory IncomeChanged(Income income) = _$IncomeChanged;

  Income get income => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomeChangedCopyWith<IncomeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeClearedCopyWith<$Res> {
  factory $IncomeClearedCopyWith(
          IncomeCleared value, $Res Function(IncomeCleared) then) =
      _$IncomeClearedCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncomeClearedCopyWithImpl<$Res> extends _$IncomeEventCopyWithImpl<$Res>
    implements $IncomeClearedCopyWith<$Res> {
  _$IncomeClearedCopyWithImpl(
      IncomeCleared _value, $Res Function(IncomeCleared) _then)
      : super(_value, (v) => _then(v as IncomeCleared));

  @override
  IncomeCleared get _value => super._value as IncomeCleared;
}

/// @nodoc

class _$IncomeCleared implements IncomeCleared {
  const _$IncomeCleared();

  @override
  String toString() {
    return 'IncomeEvent.cleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncomeCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int days) daysChanged,
    required TResult Function(Income income) incomeChanged,
    required TResult Function() cleared,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int days)? daysChanged,
    TResult Function(Income income)? incomeChanged,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DaysChanged value) daysChanged,
    required TResult Function(IncomeChanged value) incomeChanged,
    required TResult Function(IncomeCleared value) cleared,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DaysChanged value)? daysChanged,
    TResult Function(IncomeChanged value)? incomeChanged,
    TResult Function(IncomeCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class IncomeCleared implements IncomeEvent {
  const factory IncomeCleared() = _$IncomeCleared;
}

/// @nodoc
class _$IncomeStateTearOff {
  const _$IncomeStateTearOff();

  IncomeInputState state({Income? income = null, int days = 0}) {
    return IncomeInputState(
      income: income,
      days: days,
    );
  }
}

/// @nodoc
const $IncomeState = _$IncomeStateTearOff();

/// @nodoc
mixin _$IncomeState {
  Income? get income => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Income? income, int days) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Income? income, int days)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncomeInputState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncomeInputState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IncomeStateCopyWith<IncomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeStateCopyWith<$Res> {
  factory $IncomeStateCopyWith(
          IncomeState value, $Res Function(IncomeState) then) =
      _$IncomeStateCopyWithImpl<$Res>;
  $Res call({Income? income, int days});
}

/// @nodoc
class _$IncomeStateCopyWithImpl<$Res> implements $IncomeStateCopyWith<$Res> {
  _$IncomeStateCopyWithImpl(this._value, this._then);

  final IncomeState _value;
  // ignore: unused_field
  final $Res Function(IncomeState) _then;

  @override
  $Res call({
    Object? income = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Income?,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $IncomeInputStateCopyWith<$Res>
    implements $IncomeStateCopyWith<$Res> {
  factory $IncomeInputStateCopyWith(
          IncomeInputState value, $Res Function(IncomeInputState) then) =
      _$IncomeInputStateCopyWithImpl<$Res>;
  @override
  $Res call({Income? income, int days});
}

/// @nodoc
class _$IncomeInputStateCopyWithImpl<$Res>
    extends _$IncomeStateCopyWithImpl<$Res>
    implements $IncomeInputStateCopyWith<$Res> {
  _$IncomeInputStateCopyWithImpl(
      IncomeInputState _value, $Res Function(IncomeInputState) _then)
      : super(_value, (v) => _then(v as IncomeInputState));

  @override
  IncomeInputState get _value => super._value as IncomeInputState;

  @override
  $Res call({
    Object? income = freezed,
    Object? days = freezed,
  }) {
    return _then(IncomeInputState(
      income: income == freezed
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Income?,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncomeInputState implements IncomeInputState {
  const _$IncomeInputState({this.income = null, this.days = 0});

  @JsonKey(defaultValue: null)
  @override
  final Income? income;
  @JsonKey(defaultValue: 0)
  @override
  final int days;

  @override
  String toString() {
    return 'IncomeState.state(income: $income, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncomeInputState &&
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
  $IncomeInputStateCopyWith<IncomeInputState> get copyWith =>
      _$IncomeInputStateCopyWithImpl<IncomeInputState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Income? income, int days) state,
  }) {
    return state(income, days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Income? income, int days)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(income, days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncomeInputState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncomeInputState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class IncomeInputState implements IncomeState {
  const factory IncomeInputState({Income? income, int days}) =
      _$IncomeInputState;

  @override
  Income? get income => throw _privateConstructorUsedError;
  @override
  int get days => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $IncomeInputStateCopyWith<IncomeInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
