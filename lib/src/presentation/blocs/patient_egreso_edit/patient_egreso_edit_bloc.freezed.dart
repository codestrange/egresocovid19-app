// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'patient_egreso_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PatientEgresoEditEventTearOff {
  const _$PatientEgresoEditEventTearOff();

  _Fetch fetch(String patientId) {
    return _Fetch(
      patientId,
    );
  }

  _Update update(String patientId, DischargeDataEntity newDischargeData) {
    return _Update(
      patientId,
      newDischargeData,
    );
  }
}

/// @nodoc
const $PatientEgresoEditEvent = _$PatientEgresoEditEventTearOff();

/// @nodoc
mixin _$PatientEgresoEditEvent {
  String get patientId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String patientId) fetch,
    required TResult Function(
            String patientId, DischargeDataEntity newDischargeData)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String patientId)? fetch,
    TResult Function(String patientId, DischargeDataEntity newDischargeData)?
        update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientEgresoEditEventCopyWith<PatientEgresoEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientEgresoEditEventCopyWith<$Res> {
  factory $PatientEgresoEditEventCopyWith(PatientEgresoEditEvent value,
          $Res Function(PatientEgresoEditEvent) then) =
      _$PatientEgresoEditEventCopyWithImpl<$Res>;
  $Res call({String patientId});
}

/// @nodoc
class _$PatientEgresoEditEventCopyWithImpl<$Res>
    implements $PatientEgresoEditEventCopyWith<$Res> {
  _$PatientEgresoEditEventCopyWithImpl(this._value, this._then);

  final PatientEgresoEditEvent _value;
  // ignore: unused_field
  final $Res Function(PatientEgresoEditEvent) _then;

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
    implements $PatientEgresoEditEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) then) =
      __$FetchCopyWithImpl<$Res>;
  @override
  $Res call({String patientId});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res>
    extends _$PatientEgresoEditEventCopyWithImpl<$Res>
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
    return 'PatientEgresoEditEvent.fetch(patientId: $patientId)';
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
    required TResult Function(
            String patientId, DischargeDataEntity newDischargeData)
        update,
  }) {
    return fetch(patientId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String patientId)? fetch,
    TResult Function(String patientId, DischargeDataEntity newDischargeData)?
        update,
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
    required TResult Function(_Update value) update,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements PatientEgresoEditEvent {
  const factory _Fetch(String patientId) = _$_Fetch;

  @override
  String get patientId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchCopyWith<_Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res>
    implements $PatientEgresoEditEventCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({String patientId, DischargeDataEntity newDischargeData});

  $DischargeDataEntityCopyWith<$Res> get newDischargeData;
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res>
    extends _$PatientEgresoEditEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? patientId = freezed,
    Object? newDischargeData = freezed,
  }) {
    return _then(_Update(
      patientId == freezed
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as String,
      newDischargeData == freezed
          ? _value.newDischargeData
          : newDischargeData // ignore: cast_nullable_to_non_nullable
              as DischargeDataEntity,
    ));
  }

  @override
  $DischargeDataEntityCopyWith<$Res> get newDischargeData {
    return $DischargeDataEntityCopyWith<$Res>(_value.newDischargeData, (value) {
      return _then(_value.copyWith(newDischargeData: value));
    });
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(this.patientId, this.newDischargeData);

  @override
  final String patientId;
  @override
  final DischargeDataEntity newDischargeData;

  @override
  String toString() {
    return 'PatientEgresoEditEvent.update(patientId: $patientId, newDischargeData: $newDischargeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Update &&
            (identical(other.patientId, patientId) ||
                const DeepCollectionEquality()
                    .equals(other.patientId, patientId)) &&
            (identical(other.newDischargeData, newDischargeData) ||
                const DeepCollectionEquality()
                    .equals(other.newDischargeData, newDischargeData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(patientId) ^
      const DeepCollectionEquality().hash(newDischargeData);

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String patientId) fetch,
    required TResult Function(
            String patientId, DischargeDataEntity newDischargeData)
        update,
  }) {
    return update(patientId, newDischargeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String patientId)? fetch,
    TResult Function(String patientId, DischargeDataEntity newDischargeData)?
        update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(patientId, newDischargeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements PatientEgresoEditEvent {
  const factory _Update(
      String patientId, DischargeDataEntity newDischargeData) = _$_Update;

  @override
  String get patientId => throw _privateConstructorUsedError;
  DischargeDataEntity get newDischargeData =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PatientEgresoEditStateTearOff {
  const _$PatientEgresoEditStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _FetchInProgress fetchInProgress() {
    return const _FetchInProgress();
  }

  _FetchFailure fetchFailure(String errorMessage) {
    return _FetchFailure(
      errorMessage,
    );
  }

  _FetchSuccess fetchSuccess(DischargeDataEntity actualDischargeData) {
    return _FetchSuccess(
      actualDischargeData,
    );
  }

  _UpdateInProgress updateInProgress(DischargeDataEntity newDischargeData) {
    return _UpdateInProgress(
      newDischargeData,
    );
  }

  _UpdateFailure updateFailure(
      String errorMessage, DischargeDataEntity newDischargeData) {
    return _UpdateFailure(
      errorMessage,
      newDischargeData,
    );
  }

  _UpdateSuccess updateSuccess(DischargeDataEntity newDischargeData) {
    return _UpdateSuccess(
      newDischargeData,
    );
  }
}

/// @nodoc
const $PatientEgresoEditState = _$PatientEgresoEditStateTearOff();

/// @nodoc
mixin _$PatientEgresoEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientEgresoEditStateCopyWith<$Res> {
  factory $PatientEgresoEditStateCopyWith(PatientEgresoEditState value,
          $Res Function(PatientEgresoEditState) then) =
      _$PatientEgresoEditStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatientEgresoEditStateCopyWithImpl<$Res>
    implements $PatientEgresoEditStateCopyWith<$Res> {
  _$PatientEgresoEditStateCopyWithImpl(this._value, this._then);

  final PatientEgresoEditState _value;
  // ignore: unused_field
  final $Res Function(PatientEgresoEditState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PatientEgresoEditStateCopyWithImpl<$Res>
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
    return 'PatientEgresoEditState.initial()';
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
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
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
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PatientEgresoEditState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FetchInProgressCopyWith<$Res> {
  factory _$FetchInProgressCopyWith(
          _FetchInProgress value, $Res Function(_FetchInProgress) then) =
      __$FetchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchInProgressCopyWithImpl<$Res>
    extends _$PatientEgresoEditStateCopyWithImpl<$Res>
    implements _$FetchInProgressCopyWith<$Res> {
  __$FetchInProgressCopyWithImpl(
      _FetchInProgress _value, $Res Function(_FetchInProgress) _then)
      : super(_value, (v) => _then(v as _FetchInProgress));

  @override
  _FetchInProgress get _value => super._value as _FetchInProgress;
}

/// @nodoc

class _$_FetchInProgress implements _FetchInProgress {
  const _$_FetchInProgress();

  @override
  String toString() {
    return 'PatientEgresoEditState.fetchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) {
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class _FetchInProgress implements PatientEgresoEditState {
  const factory _FetchInProgress() = _$_FetchInProgress;
}

/// @nodoc
abstract class _$FetchFailureCopyWith<$Res> {
  factory _$FetchFailureCopyWith(
          _FetchFailure value, $Res Function(_FetchFailure) then) =
      __$FetchFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$FetchFailureCopyWithImpl<$Res>
    extends _$PatientEgresoEditStateCopyWithImpl<$Res>
    implements _$FetchFailureCopyWith<$Res> {
  __$FetchFailureCopyWithImpl(
      _FetchFailure _value, $Res Function(_FetchFailure) _then)
      : super(_value, (v) => _then(v as _FetchFailure));

  @override
  _FetchFailure get _value => super._value as _FetchFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_FetchFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FetchFailure implements _FetchFailure {
  const _$_FetchFailure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'PatientEgresoEditState.fetchFailure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchFailure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      __$FetchFailureCopyWithImpl<_FetchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) {
    return fetchFailure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class _FetchFailure implements PatientEgresoEditState {
  const factory _FetchFailure(String errorMessage) = _$_FetchFailure;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchFailureCopyWith<_FetchFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchSuccessCopyWith<$Res> {
  factory _$FetchSuccessCopyWith(
          _FetchSuccess value, $Res Function(_FetchSuccess) then) =
      __$FetchSuccessCopyWithImpl<$Res>;
  $Res call({DischargeDataEntity actualDischargeData});

  $DischargeDataEntityCopyWith<$Res> get actualDischargeData;
}

/// @nodoc
class __$FetchSuccessCopyWithImpl<$Res>
    extends _$PatientEgresoEditStateCopyWithImpl<$Res>
    implements _$FetchSuccessCopyWith<$Res> {
  __$FetchSuccessCopyWithImpl(
      _FetchSuccess _value, $Res Function(_FetchSuccess) _then)
      : super(_value, (v) => _then(v as _FetchSuccess));

  @override
  _FetchSuccess get _value => super._value as _FetchSuccess;

  @override
  $Res call({
    Object? actualDischargeData = freezed,
  }) {
    return _then(_FetchSuccess(
      actualDischargeData == freezed
          ? _value.actualDischargeData
          : actualDischargeData // ignore: cast_nullable_to_non_nullable
              as DischargeDataEntity,
    ));
  }

  @override
  $DischargeDataEntityCopyWith<$Res> get actualDischargeData {
    return $DischargeDataEntityCopyWith<$Res>(_value.actualDischargeData,
        (value) {
      return _then(_value.copyWith(actualDischargeData: value));
    });
  }
}

/// @nodoc

class _$_FetchSuccess implements _FetchSuccess {
  const _$_FetchSuccess(this.actualDischargeData);

  @override
  final DischargeDataEntity actualDischargeData;

  @override
  String toString() {
    return 'PatientEgresoEditState.fetchSuccess(actualDischargeData: $actualDischargeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSuccess &&
            (identical(other.actualDischargeData, actualDischargeData) ||
                const DeepCollectionEquality()
                    .equals(other.actualDischargeData, actualDischargeData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(actualDischargeData);

  @JsonKey(ignore: true)
  @override
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      __$FetchSuccessCopyWithImpl<_FetchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) {
    return fetchSuccess(actualDischargeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(actualDischargeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccess implements PatientEgresoEditState {
  const factory _FetchSuccess(DischargeDataEntity actualDischargeData) =
      _$_FetchSuccess;

  DischargeDataEntity get actualDischargeData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchSuccessCopyWith<_FetchSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateInProgressCopyWith<$Res> {
  factory _$UpdateInProgressCopyWith(
          _UpdateInProgress value, $Res Function(_UpdateInProgress) then) =
      __$UpdateInProgressCopyWithImpl<$Res>;
  $Res call({DischargeDataEntity newDischargeData});

  $DischargeDataEntityCopyWith<$Res> get newDischargeData;
}

/// @nodoc
class __$UpdateInProgressCopyWithImpl<$Res>
    extends _$PatientEgresoEditStateCopyWithImpl<$Res>
    implements _$UpdateInProgressCopyWith<$Res> {
  __$UpdateInProgressCopyWithImpl(
      _UpdateInProgress _value, $Res Function(_UpdateInProgress) _then)
      : super(_value, (v) => _then(v as _UpdateInProgress));

  @override
  _UpdateInProgress get _value => super._value as _UpdateInProgress;

  @override
  $Res call({
    Object? newDischargeData = freezed,
  }) {
    return _then(_UpdateInProgress(
      newDischargeData == freezed
          ? _value.newDischargeData
          : newDischargeData // ignore: cast_nullable_to_non_nullable
              as DischargeDataEntity,
    ));
  }

  @override
  $DischargeDataEntityCopyWith<$Res> get newDischargeData {
    return $DischargeDataEntityCopyWith<$Res>(_value.newDischargeData, (value) {
      return _then(_value.copyWith(newDischargeData: value));
    });
  }
}

/// @nodoc

class _$_UpdateInProgress implements _UpdateInProgress {
  const _$_UpdateInProgress(this.newDischargeData);

  @override
  final DischargeDataEntity newDischargeData;

  @override
  String toString() {
    return 'PatientEgresoEditState.updateInProgress(newDischargeData: $newDischargeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateInProgress &&
            (identical(other.newDischargeData, newDischargeData) ||
                const DeepCollectionEquality()
                    .equals(other.newDischargeData, newDischargeData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newDischargeData);

  @JsonKey(ignore: true)
  @override
  _$UpdateInProgressCopyWith<_UpdateInProgress> get copyWith =>
      __$UpdateInProgressCopyWithImpl<_UpdateInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) {
    return updateInProgress(newDischargeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(newDischargeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgress implements PatientEgresoEditState {
  const factory _UpdateInProgress(DischargeDataEntity newDischargeData) =
      _$_UpdateInProgress;

  DischargeDataEntity get newDischargeData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateInProgressCopyWith<_UpdateInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateFailureCopyWith<$Res> {
  factory _$UpdateFailureCopyWith(
          _UpdateFailure value, $Res Function(_UpdateFailure) then) =
      __$UpdateFailureCopyWithImpl<$Res>;
  $Res call({String errorMessage, DischargeDataEntity newDischargeData});

  $DischargeDataEntityCopyWith<$Res> get newDischargeData;
}

/// @nodoc
class __$UpdateFailureCopyWithImpl<$Res>
    extends _$PatientEgresoEditStateCopyWithImpl<$Res>
    implements _$UpdateFailureCopyWith<$Res> {
  __$UpdateFailureCopyWithImpl(
      _UpdateFailure _value, $Res Function(_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _UpdateFailure));

  @override
  _UpdateFailure get _value => super._value as _UpdateFailure;

  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? newDischargeData = freezed,
  }) {
    return _then(_UpdateFailure(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      newDischargeData == freezed
          ? _value.newDischargeData
          : newDischargeData // ignore: cast_nullable_to_non_nullable
              as DischargeDataEntity,
    ));
  }

  @override
  $DischargeDataEntityCopyWith<$Res> get newDischargeData {
    return $DischargeDataEntityCopyWith<$Res>(_value.newDischargeData, (value) {
      return _then(_value.copyWith(newDischargeData: value));
    });
  }
}

/// @nodoc

class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(this.errorMessage, this.newDischargeData);

  @override
  final String errorMessage;
  @override
  final DischargeDataEntity newDischargeData;

  @override
  String toString() {
    return 'PatientEgresoEditState.updateFailure(errorMessage: $errorMessage, newDischargeData: $newDischargeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateFailure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.newDischargeData, newDischargeData) ||
                const DeepCollectionEquality()
                    .equals(other.newDischargeData, newDischargeData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(newDischargeData);

  @JsonKey(ignore: true)
  @override
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      __$UpdateFailureCopyWithImpl<_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) {
    return updateFailure(errorMessage, newDischargeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(errorMessage, newDischargeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements PatientEgresoEditState {
  const factory _UpdateFailure(
          String errorMessage, DischargeDataEntity newDischargeData) =
      _$_UpdateFailure;

  String get errorMessage => throw _privateConstructorUsedError;
  DischargeDataEntity get newDischargeData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateSuccessCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) then) =
      __$UpdateSuccessCopyWithImpl<$Res>;
  $Res call({DischargeDataEntity newDischargeData});

  $DischargeDataEntityCopyWith<$Res> get newDischargeData;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    extends _$PatientEgresoEditStateCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(
      _UpdateSuccess _value, $Res Function(_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSuccess));

  @override
  _UpdateSuccess get _value => super._value as _UpdateSuccess;

  @override
  $Res call({
    Object? newDischargeData = freezed,
  }) {
    return _then(_UpdateSuccess(
      newDischargeData == freezed
          ? _value.newDischargeData
          : newDischargeData // ignore: cast_nullable_to_non_nullable
              as DischargeDataEntity,
    ));
  }

  @override
  $DischargeDataEntityCopyWith<$Res> get newDischargeData {
    return $DischargeDataEntityCopyWith<$Res>(_value.newDischargeData, (value) {
      return _then(_value.copyWith(newDischargeData: value));
    });
  }
}

/// @nodoc

class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess(this.newDischargeData);

  @override
  final DischargeDataEntity newDischargeData;

  @override
  String toString() {
    return 'PatientEgresoEditState.updateSuccess(newDischargeData: $newDischargeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateSuccess &&
            (identical(other.newDischargeData, newDischargeData) ||
                const DeepCollectionEquality()
                    .equals(other.newDischargeData, newDischargeData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newDischargeData);

  @JsonKey(ignore: true)
  @override
  _$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith =>
      __$UpdateSuccessCopyWithImpl<_UpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchInProgress,
    required TResult Function(String errorMessage) fetchFailure,
    required TResult Function(DischargeDataEntity actualDischargeData)
        fetchSuccess,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateInProgress,
    required TResult Function(
            String errorMessage, DischargeDataEntity newDischargeData)
        updateFailure,
    required TResult Function(DischargeDataEntity newDischargeData)
        updateSuccess,
  }) {
    return updateSuccess(newDischargeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchInProgress,
    TResult Function(String errorMessage)? fetchFailure,
    TResult Function(DischargeDataEntity actualDischargeData)? fetchSuccess,
    TResult Function(DischargeDataEntity newDischargeData)? updateInProgress,
    TResult Function(String errorMessage, DischargeDataEntity newDischargeData)?
        updateFailure,
    TResult Function(DischargeDataEntity newDischargeData)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(newDischargeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchInProgress value) fetchInProgress,
    required TResult Function(_FetchFailure value) fetchFailure,
    required TResult Function(_FetchSuccess value) fetchSuccess,
    required TResult Function(_UpdateInProgress value) updateInProgress,
    required TResult Function(_UpdateFailure value) updateFailure,
    required TResult Function(_UpdateSuccess value) updateSuccess,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchInProgress value)? fetchInProgress,
    TResult Function(_FetchFailure value)? fetchFailure,
    TResult Function(_FetchSuccess value)? fetchSuccess,
    TResult Function(_UpdateInProgress value)? updateInProgress,
    TResult Function(_UpdateFailure value)? updateFailure,
    TResult Function(_UpdateSuccess value)? updateSuccess,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements PatientEgresoEditState {
  const factory _UpdateSuccess(DischargeDataEntity newDischargeData) =
      _$_UpdateSuccess;

  DischargeDataEntity get newDischargeData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateSuccessCopyWith<_UpdateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
