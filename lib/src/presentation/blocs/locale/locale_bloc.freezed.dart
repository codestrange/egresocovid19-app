// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocaleEventTearOff {
  const _$LocaleEventTearOff();

  _LocaleEventChange change({required String locale}) {
    return _LocaleEventChange(
      locale: locale,
    );
  }
}

/// @nodoc
const $LocaleEvent = _$LocaleEventTearOff();

/// @nodoc
mixin _$LocaleEvent {
  String get locale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locale) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locale)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleEventChange value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleEventChange value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleEventCopyWith<LocaleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res>;
  $Res call({String locale});
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res> implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  final LocaleEvent _value;
  // ignore: unused_field
  final $Res Function(LocaleEvent) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocaleEventChangeCopyWith<$Res>
    implements $LocaleEventCopyWith<$Res> {
  factory _$LocaleEventChangeCopyWith(
          _LocaleEventChange value, $Res Function(_LocaleEventChange) then) =
      __$LocaleEventChangeCopyWithImpl<$Res>;
  @override
  $Res call({String locale});
}

/// @nodoc
class __$LocaleEventChangeCopyWithImpl<$Res>
    extends _$LocaleEventCopyWithImpl<$Res>
    implements _$LocaleEventChangeCopyWith<$Res> {
  __$LocaleEventChangeCopyWithImpl(
      _LocaleEventChange _value, $Res Function(_LocaleEventChange) _then)
      : super(_value, (v) => _then(v as _LocaleEventChange));

  @override
  _LocaleEventChange get _value => super._value as _LocaleEventChange;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_LocaleEventChange(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocaleEventChange implements _LocaleEventChange {
  const _$_LocaleEventChange({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'LocaleEvent.change(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleEventChange &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$LocaleEventChangeCopyWith<_LocaleEventChange> get copyWith =>
      __$LocaleEventChangeCopyWithImpl<_LocaleEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String locale) change,
  }) {
    return change(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String locale)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleEventChange value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleEventChange value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _LocaleEventChange implements LocaleEvent {
  const factory _LocaleEventChange({required String locale}) =
      _$_LocaleEventChange;

  @override
  String get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocaleEventChangeCopyWith<_LocaleEventChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

  _LocaleStateChanged changed({required Locale locale}) {
    return _LocaleStateChanged(
      locale: locale,
    );
  }
}

/// @nodoc
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  Locale get locale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleStateChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleStateChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$LocaleStateChangedCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateChangedCopyWith(
          _LocaleStateChanged value, $Res Function(_LocaleStateChanged) then) =
      __$LocaleStateChangedCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class __$LocaleStateChangedCopyWithImpl<$Res>
    extends _$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateChangedCopyWith<$Res> {
  __$LocaleStateChangedCopyWithImpl(
      _LocaleStateChanged _value, $Res Function(_LocaleStateChanged) _then)
      : super(_value, (v) => _then(v as _LocaleStateChanged));

  @override
  _LocaleStateChanged get _value => super._value as _LocaleStateChanged;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_LocaleStateChanged(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LocaleStateChanged implements _LocaleStateChanged {
  const _$_LocaleStateChanged({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleState.changed(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleStateChanged &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$LocaleStateChangedCopyWith<_LocaleStateChanged> get copyWith =>
      __$LocaleStateChangedCopyWithImpl<_LocaleStateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) changed,
  }) {
    return changed(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleStateChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _LocaleStateChanged implements LocaleState {
  const factory _LocaleStateChanged({required Locale locale}) =
      _$_LocaleStateChanged;

  @override
  Locale get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocaleStateChangedCopyWith<_LocaleStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
