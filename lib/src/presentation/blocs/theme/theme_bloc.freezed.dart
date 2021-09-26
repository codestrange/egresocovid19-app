// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemeEventTearOff {
  const _$ThemeEventTearOff();

  _ThemeEventChange change({required ThemeMode mode}) {
    return _ThemeEventChange(
      mode: mode,
    );
  }
}

/// @nodoc
const $ThemeEvent = _$ThemeEventTearOff();

/// @nodoc
mixin _$ThemeEvent {
  ThemeMode get mode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeEventChange value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ThemeEventChange value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeEventChange value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeEventCopyWith<ThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
  $Res call({ThemeMode mode});
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$ThemeEventChangeCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory _$ThemeEventChangeCopyWith(
          _ThemeEventChange value, $Res Function(_ThemeEventChange) then) =
      __$ThemeEventChangeCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode});
}

/// @nodoc
class __$ThemeEventChangeCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res>
    implements _$ThemeEventChangeCopyWith<$Res> {
  __$ThemeEventChangeCopyWithImpl(
      _ThemeEventChange _value, $Res Function(_ThemeEventChange) _then)
      : super(_value, (v) => _then(v as _ThemeEventChange));

  @override
  _ThemeEventChange get _value => super._value as _ThemeEventChange;

  @override
  $Res call({
    Object? mode = freezed,
  }) {
    return _then(_ThemeEventChange(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ThemeEventChange implements _ThemeEventChange {
  const _$_ThemeEventChange({required this.mode});

  @override
  final ThemeMode mode;

  @override
  String toString() {
    return 'ThemeEvent.change(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeEventChange &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mode);

  @JsonKey(ignore: true)
  @override
  _$ThemeEventChangeCopyWith<_ThemeEventChange> get copyWith =>
      __$ThemeEventChangeCopyWithImpl<_ThemeEventChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode) change,
  }) {
    return change(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode)? change,
  }) {
    return change?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeEventChange value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ThemeEventChange value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeEventChange value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _ThemeEventChange implements ThemeEvent {
  const factory _ThemeEventChange({required ThemeMode mode}) =
      _$_ThemeEventChange;

  @override
  ThemeMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemeEventChangeCopyWith<_ThemeEventChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ThemeStateTearOff {
  const _$ThemeStateTearOff();

  _ThemeStateChanged changed(
      {required ThemeMode mode,
      required ThemeData light,
      required ThemeData dark}) {
    return _ThemeStateChanged(
      mode: mode,
      light: light,
      dark: dark,
    );
  }
}

/// @nodoc
const $ThemeState = _$ThemeStateTearOff();

/// @nodoc
mixin _$ThemeState {
  ThemeMode get mode => throw _privateConstructorUsedError;
  ThemeData get light => throw _privateConstructorUsedError;
  ThemeData get dark => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode, ThemeData light, ThemeData dark)
        changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode, ThemeData light, ThemeData dark)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode, ThemeData light, ThemeData dark)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeStateChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ThemeStateChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeStateChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeMode mode, ThemeData light, ThemeData dark});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? light = freezed,
    Object? dark = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      light: light == freezed
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      dark: dark == freezed
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc
abstract class _$ThemeStateChangedCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$ThemeStateChangedCopyWith(
          _ThemeStateChanged value, $Res Function(_ThemeStateChanged) then) =
      __$ThemeStateChangedCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode, ThemeData light, ThemeData dark});
}

/// @nodoc
class __$ThemeStateChangedCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res>
    implements _$ThemeStateChangedCopyWith<$Res> {
  __$ThemeStateChangedCopyWithImpl(
      _ThemeStateChanged _value, $Res Function(_ThemeStateChanged) _then)
      : super(_value, (v) => _then(v as _ThemeStateChanged));

  @override
  _ThemeStateChanged get _value => super._value as _ThemeStateChanged;

  @override
  $Res call({
    Object? mode = freezed,
    Object? light = freezed,
    Object? dark = freezed,
  }) {
    return _then(_ThemeStateChanged(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      light: light == freezed
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      dark: dark == freezed
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$_ThemeStateChanged implements _ThemeStateChanged {
  const _$_ThemeStateChanged(
      {required this.mode, required this.light, required this.dark});

  @override
  final ThemeMode mode;
  @override
  final ThemeData light;
  @override
  final ThemeData dark;

  @override
  String toString() {
    return 'ThemeState.changed(mode: $mode, light: $light, dark: $dark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemeStateChanged &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.light, light) ||
                const DeepCollectionEquality().equals(other.light, light)) &&
            (identical(other.dark, dark) ||
                const DeepCollectionEquality().equals(other.dark, dark)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(light) ^
      const DeepCollectionEquality().hash(dark);

  @JsonKey(ignore: true)
  @override
  _$ThemeStateChangedCopyWith<_ThemeStateChanged> get copyWith =>
      __$ThemeStateChangedCopyWithImpl<_ThemeStateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode mode, ThemeData light, ThemeData dark)
        changed,
  }) {
    return changed(mode, light, dark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ThemeMode mode, ThemeData light, ThemeData dark)? changed,
  }) {
    return changed?.call(mode, light, dark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode mode, ThemeData light, ThemeData dark)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(mode, light, dark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeStateChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ThemeStateChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeStateChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _ThemeStateChanged implements ThemeState {
  const factory _ThemeStateChanged(
      {required ThemeMode mode,
      required ThemeData light,
      required ThemeData dark}) = _$_ThemeStateChanged;

  @override
  ThemeMode get mode => throw _privateConstructorUsedError;
  @override
  ThemeData get light => throw _privateConstructorUsedError;
  @override
  ThemeData get dark => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemeStateChangedCopyWith<_ThemeStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}
