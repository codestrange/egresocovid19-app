// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pathology_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PathologyEventTearOff {
  const _$PathologyEventTearOff();

  TreatmentPathologyChanged treatmentChanged(String treatment) {
    return TreatmentPathologyChanged(
      treatment,
    );
  }

  PathologyNameChanged pathologyNameChanged(String pathology) {
    return PathologyNameChanged(
      pathology,
    );
  }

  PathologyCleared cleared() {
    return const PathologyCleared();
  }
}

/// @nodoc
const $PathologyEvent = _$PathologyEventTearOff();

/// @nodoc
mixin _$PathologyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treatment) treatmentChanged,
    required TResult Function(String pathology) pathologyNameChanged,
    required TResult Function() cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
    TResult Function()? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
    TResult Function()? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreatmentPathologyChanged value) treatmentChanged,
    required TResult Function(PathologyNameChanged value) pathologyNameChanged,
    required TResult Function(PathologyCleared value) cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologyEventCopyWith<$Res> {
  factory $PathologyEventCopyWith(
          PathologyEvent value, $Res Function(PathologyEvent) then) =
      _$PathologyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PathologyEventCopyWithImpl<$Res>
    implements $PathologyEventCopyWith<$Res> {
  _$PathologyEventCopyWithImpl(this._value, this._then);

  final PathologyEvent _value;
  // ignore: unused_field
  final $Res Function(PathologyEvent) _then;
}

/// @nodoc
abstract class $TreatmentPathologyChangedCopyWith<$Res> {
  factory $TreatmentPathologyChangedCopyWith(TreatmentPathologyChanged value,
          $Res Function(TreatmentPathologyChanged) then) =
      _$TreatmentPathologyChangedCopyWithImpl<$Res>;
  $Res call({String treatment});
}

/// @nodoc
class _$TreatmentPathologyChangedCopyWithImpl<$Res>
    extends _$PathologyEventCopyWithImpl<$Res>
    implements $TreatmentPathologyChangedCopyWith<$Res> {
  _$TreatmentPathologyChangedCopyWithImpl(TreatmentPathologyChanged _value,
      $Res Function(TreatmentPathologyChanged) _then)
      : super(_value, (v) => _then(v as TreatmentPathologyChanged));

  @override
  TreatmentPathologyChanged get _value =>
      super._value as TreatmentPathologyChanged;

  @override
  $Res call({
    Object? treatment = freezed,
  }) {
    return _then(TreatmentPathologyChanged(
      treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TreatmentPathologyChanged implements TreatmentPathologyChanged {
  const _$TreatmentPathologyChanged(this.treatment);

  @override
  final String treatment;

  @override
  String toString() {
    return 'PathologyEvent.treatmentChanged(treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TreatmentPathologyChanged &&
            const DeepCollectionEquality().equals(other.treatment, treatment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(treatment));

  @JsonKey(ignore: true)
  @override
  $TreatmentPathologyChangedCopyWith<TreatmentPathologyChanged> get copyWith =>
      _$TreatmentPathologyChangedCopyWithImpl<TreatmentPathologyChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treatment) treatmentChanged,
    required TResult Function(String pathology) pathologyNameChanged,
    required TResult Function() cleared,
  }) {
    return treatmentChanged(treatment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
    TResult Function()? cleared,
  }) {
    return treatmentChanged?.call(treatment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (treatmentChanged != null) {
      return treatmentChanged(treatment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreatmentPathologyChanged value) treatmentChanged,
    required TResult Function(PathologyNameChanged value) pathologyNameChanged,
    required TResult Function(PathologyCleared value) cleared,
  }) {
    return treatmentChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
  }) {
    return treatmentChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (treatmentChanged != null) {
      return treatmentChanged(this);
    }
    return orElse();
  }
}

abstract class TreatmentPathologyChanged implements PathologyEvent {
  const factory TreatmentPathologyChanged(String treatment) =
      _$TreatmentPathologyChanged;

  String get treatment;
  @JsonKey(ignore: true)
  $TreatmentPathologyChangedCopyWith<TreatmentPathologyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologyNameChangedCopyWith<$Res> {
  factory $PathologyNameChangedCopyWith(PathologyNameChanged value,
          $Res Function(PathologyNameChanged) then) =
      _$PathologyNameChangedCopyWithImpl<$Res>;
  $Res call({String pathology});
}

/// @nodoc
class _$PathologyNameChangedCopyWithImpl<$Res>
    extends _$PathologyEventCopyWithImpl<$Res>
    implements $PathologyNameChangedCopyWith<$Res> {
  _$PathologyNameChangedCopyWithImpl(
      PathologyNameChanged _value, $Res Function(PathologyNameChanged) _then)
      : super(_value, (v) => _then(v as PathologyNameChanged));

  @override
  PathologyNameChanged get _value => super._value as PathologyNameChanged;

  @override
  $Res call({
    Object? pathology = freezed,
  }) {
    return _then(PathologyNameChanged(
      pathology == freezed
          ? _value.pathology
          : pathology // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PathologyNameChanged implements PathologyNameChanged {
  const _$PathologyNameChanged(this.pathology);

  @override
  final String pathology;

  @override
  String toString() {
    return 'PathologyEvent.pathologyNameChanged(pathology: $pathology)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PathologyNameChanged &&
            const DeepCollectionEquality().equals(other.pathology, pathology));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pathology));

  @JsonKey(ignore: true)
  @override
  $PathologyNameChangedCopyWith<PathologyNameChanged> get copyWith =>
      _$PathologyNameChangedCopyWithImpl<PathologyNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treatment) treatmentChanged,
    required TResult Function(String pathology) pathologyNameChanged,
    required TResult Function() cleared,
  }) {
    return pathologyNameChanged(pathology);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
    TResult Function()? cleared,
  }) {
    return pathologyNameChanged?.call(pathology);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (pathologyNameChanged != null) {
      return pathologyNameChanged(pathology);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreatmentPathologyChanged value) treatmentChanged,
    required TResult Function(PathologyNameChanged value) pathologyNameChanged,
    required TResult Function(PathologyCleared value) cleared,
  }) {
    return pathologyNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
  }) {
    return pathologyNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (pathologyNameChanged != null) {
      return pathologyNameChanged(this);
    }
    return orElse();
  }
}

abstract class PathologyNameChanged implements PathologyEvent {
  const factory PathologyNameChanged(String pathology) = _$PathologyNameChanged;

  String get pathology;
  @JsonKey(ignore: true)
  $PathologyNameChangedCopyWith<PathologyNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologyClearedCopyWith<$Res> {
  factory $PathologyClearedCopyWith(
          PathologyCleared value, $Res Function(PathologyCleared) then) =
      _$PathologyClearedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PathologyClearedCopyWithImpl<$Res>
    extends _$PathologyEventCopyWithImpl<$Res>
    implements $PathologyClearedCopyWith<$Res> {
  _$PathologyClearedCopyWithImpl(
      PathologyCleared _value, $Res Function(PathologyCleared) _then)
      : super(_value, (v) => _then(v as PathologyCleared));

  @override
  PathologyCleared get _value => super._value as PathologyCleared;
}

/// @nodoc

class _$PathologyCleared implements PathologyCleared {
  const _$PathologyCleared();

  @override
  String toString() {
    return 'PathologyEvent.cleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PathologyCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String treatment) treatmentChanged,
    required TResult Function(String pathology) pathologyNameChanged,
    required TResult Function() cleared,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
    TResult Function()? cleared,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String treatment)? treatmentChanged,
    TResult Function(String pathology)? pathologyNameChanged,
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
    required TResult Function(TreatmentPathologyChanged value) treatmentChanged,
    required TResult Function(PathologyNameChanged value) pathologyNameChanged,
    required TResult Function(PathologyCleared value) cleared,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
  }) {
    return cleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreatmentPathologyChanged value)? treatmentChanged,
    TResult Function(PathologyNameChanged value)? pathologyNameChanged,
    TResult Function(PathologyCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class PathologyCleared implements PathologyEvent {
  const factory PathologyCleared() = _$PathologyCleared;
}

/// @nodoc
class _$PathologyStateTearOff {
  const _$PathologyStateTearOff();

  PathologyInputState state({String pathology = '', String treatment = ''}) {
    return PathologyInputState(
      pathology: pathology,
      treatment: treatment,
    );
  }
}

/// @nodoc
const $PathologyState = _$PathologyStateTearOff();

/// @nodoc
mixin _$PathologyState {
  String get pathology => throw _privateConstructorUsedError;
  String get treatment => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pathology, String treatment) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pathology, String treatment)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pathology, String treatment)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PathologyInputState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologyInputState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologyInputState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathologyStateCopyWith<PathologyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologyStateCopyWith<$Res> {
  factory $PathologyStateCopyWith(
          PathologyState value, $Res Function(PathologyState) then) =
      _$PathologyStateCopyWithImpl<$Res>;
  $Res call({String pathology, String treatment});
}

/// @nodoc
class _$PathologyStateCopyWithImpl<$Res>
    implements $PathologyStateCopyWith<$Res> {
  _$PathologyStateCopyWithImpl(this._value, this._then);

  final PathologyState _value;
  // ignore: unused_field
  final $Res Function(PathologyState) _then;

  @override
  $Res call({
    Object? pathology = freezed,
    Object? treatment = freezed,
  }) {
    return _then(_value.copyWith(
      pathology: pathology == freezed
          ? _value.pathology
          : pathology // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $PathologyInputStateCopyWith<$Res>
    implements $PathologyStateCopyWith<$Res> {
  factory $PathologyInputStateCopyWith(
          PathologyInputState value, $Res Function(PathologyInputState) then) =
      _$PathologyInputStateCopyWithImpl<$Res>;
  @override
  $Res call({String pathology, String treatment});
}

/// @nodoc
class _$PathologyInputStateCopyWithImpl<$Res>
    extends _$PathologyStateCopyWithImpl<$Res>
    implements $PathologyInputStateCopyWith<$Res> {
  _$PathologyInputStateCopyWithImpl(
      PathologyInputState _value, $Res Function(PathologyInputState) _then)
      : super(_value, (v) => _then(v as PathologyInputState));

  @override
  PathologyInputState get _value => super._value as PathologyInputState;

  @override
  $Res call({
    Object? pathology = freezed,
    Object? treatment = freezed,
  }) {
    return _then(PathologyInputState(
      pathology: pathology == freezed
          ? _value.pathology
          : pathology // ignore: cast_nullable_to_non_nullable
              as String,
      treatment: treatment == freezed
          ? _value.treatment
          : treatment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PathologyInputState implements PathologyInputState {
  const _$PathologyInputState({this.pathology = '', this.treatment = ''});

  @JsonKey()
  @override
  final String pathology;
  @JsonKey()
  @override
  final String treatment;

  @override
  String toString() {
    return 'PathologyState.state(pathology: $pathology, treatment: $treatment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PathologyInputState &&
            const DeepCollectionEquality().equals(other.pathology, pathology) &&
            const DeepCollectionEquality().equals(other.treatment, treatment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pathology),
      const DeepCollectionEquality().hash(treatment));

  @JsonKey(ignore: true)
  @override
  $PathologyInputStateCopyWith<PathologyInputState> get copyWith =>
      _$PathologyInputStateCopyWithImpl<PathologyInputState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pathology, String treatment) state,
  }) {
    return state(pathology, treatment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pathology, String treatment)? state,
  }) {
    return state?.call(pathology, treatment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pathology, String treatment)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(pathology, treatment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PathologyInputState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologyInputState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologyInputState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class PathologyInputState implements PathologyState {
  const factory PathologyInputState({String pathology, String treatment}) =
      _$PathologyInputState;

  @override
  String get pathology;
  @override
  String get treatment;
  @override
  @JsonKey(ignore: true)
  $PathologyInputStateCopyWith<PathologyInputState> get copyWith =>
      throw _privateConstructorUsedError;
}
