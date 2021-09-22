// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'patient_basic_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PatientBasicEditEventTearOff {
  const _$PatientBasicEditEventTearOff();

  _Fetch fetch(String patientId) {
    return _Fetch(
      patientId,
    );
  }
}

/// @nodoc
const $PatientBasicEditEvent = _$PatientBasicEditEventTearOff();

/// @nodoc
mixin _$PatientBasicEditEvent {
  String get patientId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String patientId) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String patientId)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientBasicEditEventCopyWith<PatientBasicEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBasicEditEventCopyWith<$Res> {
  factory $PatientBasicEditEventCopyWith(PatientBasicEditEvent value,
          $Res Function(PatientBasicEditEvent) then) =
      _$PatientBasicEditEventCopyWithImpl<$Res>;
  $Res call({String patientId});
}

/// @nodoc
class _$PatientBasicEditEventCopyWithImpl<$Res>
    implements $PatientBasicEditEventCopyWith<$Res> {
  _$PatientBasicEditEventCopyWithImpl(this._value, this._then);

  final PatientBasicEditEvent _value;
  // ignore: unused_field
  final $Res Function(PatientBasicEditEvent) _then;

  @override
  $Res call({
    Object? patientId = freezed,
  }) {
    return _then(_value.copyWith(
      patientId: patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FetchCopyWith<$Res>
    implements $PatientBasicEditEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  @override
  $Res call({String patientId});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res>
    extends _$PatientBasicEditEventCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(_Fetch _value, $Res Function(_Fetch) _then)
      : super(_value, (v) => _then(v as _Fetch));

  @override
  _Fetch get _value => super._value as _Fetch;

  @override
  $Res call({
    Object? patientId = freezed,
  }) {
    return _then(_Fetch(
      patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch(this.patientId);

  @override
  final String patientId;

  @override
  String toString() {
    return 'PatientBasicEditEvent.fetch(patientId: $patientId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Fetch &&
            (identical(other.patientId, patientId) ||
                const DeepCollectionEquality()
                    .equals(other.patientId, patientId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(patientId);

  @JsonKey(ignore: true)
  @override
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String patientId) fetch,
  }) {
    return fetch(patientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String patientId)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(patientId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements PatientBasicEditEvent {
  const factory _Fetch(String patientId) = _$_Fetch;

  @override
  String get patientId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchCopyWith<_Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PatientBasicEditStateTearOff {
  const _$PatientBasicEditStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _PatientEditingState patientEdit({required PatientEntity patient}) {
    return _PatientEditingState(
      patient: patient,
    );
  }

  _PatientErrorState failure({required ErrorEntity error}) {
    return _PatientErrorState(
      error: error,
    );
  }
}

/// @nodoc
const $PatientBasicEditState = _$PatientBasicEditStateTearOff();

/// @nodoc
mixin _$PatientBasicEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PatientEntity patient) patientEdit,
    required TResult Function(ErrorEntity error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PatientEntity patient)? patientEdit,
    TResult Function(ErrorEntity error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PatientEditingState value) patientEdit,
    required TResult Function(_PatientErrorState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PatientEditingState value)? patientEdit,
    TResult Function(_PatientErrorState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientBasicEditStateCopyWith<$Res> {
  factory $PatientBasicEditStateCopyWith(PatientBasicEditState value,
          $Res Function(PatientBasicEditState) then) =
      _$PatientBasicEditStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatientBasicEditStateCopyWithImpl<$Res>
    implements $PatientBasicEditStateCopyWith<$Res> {
  _$PatientBasicEditStateCopyWithImpl(this._value, this._then);

  final PatientBasicEditState _value;
  // ignore: unused_field
  final $Res Function(PatientBasicEditState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PatientBasicEditStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PatientBasicEditState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PatientEntity patient) patientEdit,
    required TResult Function(ErrorEntity error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PatientEntity patient)? patientEdit,
    TResult Function(ErrorEntity error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PatientEditingState value) patientEdit,
    required TResult Function(_PatientErrorState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PatientEditingState value)? patientEdit,
    TResult Function(_PatientErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PatientBasicEditState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$PatientEditingStateCopyWith<$Res> {
  factory _$PatientEditingStateCopyWith(_PatientEditingState value,
          $Res Function(_PatientEditingState) then) =
      __$PatientEditingStateCopyWithImpl<$Res>;
  $Res call({PatientEntity patient});

  $PatientEntityCopyWith<$Res> get patient;
}

/// @nodoc
class __$PatientEditingStateCopyWithImpl<$Res>
    extends _$PatientBasicEditStateCopyWithImpl<$Res>
    implements _$PatientEditingStateCopyWith<$Res> {
  __$PatientEditingStateCopyWithImpl(
      _PatientEditingState _value, $Res Function(_PatientEditingState) _then)
      : super(_value, (v) => _then(v as _PatientEditingState));

  @override
  _PatientEditingState get _value => super._value as _PatientEditingState;

  @override
  $Res call({
    Object? patient = freezed,
  }) {
    return _then(_PatientEditingState(
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientEntity,
    ));
  }

  @override
  $PatientEntityCopyWith<$Res> get patient {
    return $PatientEntityCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value));
    });
  }
}

/// @nodoc

class _$_PatientEditingState implements _PatientEditingState {
  const _$_PatientEditingState({required this.patient});

  @override
  final PatientEntity patient;

  @override
  String toString() {
    return 'PatientBasicEditState.patientEdit(patient: $patient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientEditingState &&
            (identical(other.patient, patient) ||
                const DeepCollectionEquality().equals(other.patient, patient)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(patient);

  @JsonKey(ignore: true)
  @override
  _$PatientEditingStateCopyWith<_PatientEditingState> get copyWith =>
      __$PatientEditingStateCopyWithImpl<_PatientEditingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PatientEntity patient) patientEdit,
    required TResult Function(ErrorEntity error) failure,
  }) {
    return patientEdit(patient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PatientEntity patient)? patientEdit,
    TResult Function(ErrorEntity error)? failure,
    required TResult orElse(),
  }) {
    if (patientEdit != null) {
      return patientEdit(patient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PatientEditingState value) patientEdit,
    required TResult Function(_PatientErrorState value) failure,
  }) {
    return patientEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PatientEditingState value)? patientEdit,
    TResult Function(_PatientErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (patientEdit != null) {
      return patientEdit(this);
    }
    return orElse();
  }
}

abstract class _PatientEditingState implements PatientBasicEditState {
  const factory _PatientEditingState({required PatientEntity patient}) =
      _$_PatientEditingState;

  PatientEntity get patient => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PatientEditingStateCopyWith<_PatientEditingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PatientErrorStateCopyWith<$Res> {
  factory _$PatientErrorStateCopyWith(
          _PatientErrorState value, $Res Function(_PatientErrorState) then) =
      __$PatientErrorStateCopyWithImpl<$Res>;
  $Res call({ErrorEntity error});

  $ErrorEntityCopyWith<$Res> get error;
}

/// @nodoc
class __$PatientErrorStateCopyWithImpl<$Res>
    extends _$PatientBasicEditStateCopyWithImpl<$Res>
    implements _$PatientErrorStateCopyWith<$Res> {
  __$PatientErrorStateCopyWithImpl(
      _PatientErrorState _value, $Res Function(_PatientErrorState) _then)
      : super(_value, (v) => _then(v as _PatientErrorState));

  @override
  _PatientErrorState get _value => super._value as _PatientErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_PatientErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity,
    ));
  }

  @override
  $ErrorEntityCopyWith<$Res> get error {
    return $ErrorEntityCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_PatientErrorState implements _PatientErrorState {
  const _$_PatientErrorState({required this.error});

  @override
  final ErrorEntity error;

  @override
  String toString() {
    return 'PatientBasicEditState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientErrorState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$PatientErrorStateCopyWith<_PatientErrorState> get copyWith =>
      __$PatientErrorStateCopyWithImpl<_PatientErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(PatientEntity patient) patientEdit,
    required TResult Function(ErrorEntity error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(PatientEntity patient)? patientEdit,
    TResult Function(ErrorEntity error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PatientEditingState value) patientEdit,
    required TResult Function(_PatientErrorState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PatientEditingState value)? patientEdit,
    TResult Function(_PatientErrorState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PatientErrorState implements PatientBasicEditState {
  const factory _PatientErrorState({required ErrorEntity error}) =
      _$_PatientErrorState;

  ErrorEntity get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PatientErrorStateCopyWith<_PatientErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
