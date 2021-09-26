// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pathologicalhistory_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PathologicalHistoryEventTearOff {
  const _$PathologicalHistoryEventTearOff();

  PathologyInfoAdded added(PathologicalEntity pathological) {
    return PathologyInfoAdded(
      pathological,
    );
  }

  PathologyInfoRemoved removed(String pathologicalName) {
    return PathologyInfoRemoved(
      pathologicalName,
    );
  }

  PathologyInfoCleared cleared() {
    return const PathologyInfoCleared();
  }
}

/// @nodoc
const $PathologicalHistoryEvent = _$PathologicalHistoryEventTearOff();

/// @nodoc
mixin _$PathologicalHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PathologicalEntity pathological) added,
    required TResult Function(String pathologicalName) removed,
    required TResult Function() cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
    TResult Function()? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
    TResult Function()? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PathologyInfoAdded value) added,
    required TResult Function(PathologyInfoRemoved value) removed,
    required TResult Function(PathologyInfoCleared value) cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologicalHistoryEventCopyWith<$Res> {
  factory $PathologicalHistoryEventCopyWith(PathologicalHistoryEvent value,
          $Res Function(PathologicalHistoryEvent) then) =
      _$PathologicalHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PathologicalHistoryEventCopyWithImpl<$Res>
    implements $PathologicalHistoryEventCopyWith<$Res> {
  _$PathologicalHistoryEventCopyWithImpl(this._value, this._then);

  final PathologicalHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(PathologicalHistoryEvent) _then;
}

/// @nodoc
abstract class $PathologyInfoAddedCopyWith<$Res> {
  factory $PathologyInfoAddedCopyWith(
          PathologyInfoAdded value, $Res Function(PathologyInfoAdded) then) =
      _$PathologyInfoAddedCopyWithImpl<$Res>;
  $Res call({PathologicalEntity pathological});

  $PathologicalEntityCopyWith<$Res> get pathological;
}

/// @nodoc
class _$PathologyInfoAddedCopyWithImpl<$Res>
    extends _$PathologicalHistoryEventCopyWithImpl<$Res>
    implements $PathologyInfoAddedCopyWith<$Res> {
  _$PathologyInfoAddedCopyWithImpl(
      PathologyInfoAdded _value, $Res Function(PathologyInfoAdded) _then)
      : super(_value, (v) => _then(v as PathologyInfoAdded));

  @override
  PathologyInfoAdded get _value => super._value as PathologyInfoAdded;

  @override
  $Res call({
    Object? pathological = freezed,
  }) {
    return _then(PathologyInfoAdded(
      pathological == freezed
          ? _value.pathological
          : pathological // ignore: cast_nullable_to_non_nullable
              as PathologicalEntity,
    ));
  }

  @override
  $PathologicalEntityCopyWith<$Res> get pathological {
    return $PathologicalEntityCopyWith<$Res>(_value.pathological, (value) {
      return _then(_value.copyWith(pathological: value));
    });
  }
}

/// @nodoc

class _$PathologyInfoAdded implements PathologyInfoAdded {
  const _$PathologyInfoAdded(this.pathological);

  @override
  final PathologicalEntity pathological;

  @override
  String toString() {
    return 'PathologicalHistoryEvent.added(pathological: $pathological)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PathologyInfoAdded &&
            (identical(other.pathological, pathological) ||
                const DeepCollectionEquality()
                    .equals(other.pathological, pathological)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pathological);

  @JsonKey(ignore: true)
  @override
  $PathologyInfoAddedCopyWith<PathologyInfoAdded> get copyWith =>
      _$PathologyInfoAddedCopyWithImpl<PathologyInfoAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PathologicalEntity pathological) added,
    required TResult Function(String pathologicalName) removed,
    required TResult Function() cleared,
  }) {
    return added(pathological);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
    TResult Function()? cleared,
  }) {
    return added?.call(pathological);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(pathological);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PathologyInfoAdded value) added,
    required TResult Function(PathologyInfoRemoved value) removed,
    required TResult Function(PathologyInfoCleared value) cleared,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class PathologyInfoAdded implements PathologicalHistoryEvent {
  const factory PathologyInfoAdded(PathologicalEntity pathological) =
      _$PathologyInfoAdded;

  PathologicalEntity get pathological => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PathologyInfoAddedCopyWith<PathologyInfoAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologyInfoRemovedCopyWith<$Res> {
  factory $PathologyInfoRemovedCopyWith(PathologyInfoRemoved value,
          $Res Function(PathologyInfoRemoved) then) =
      _$PathologyInfoRemovedCopyWithImpl<$Res>;
  $Res call({String pathologicalName});
}

/// @nodoc
class _$PathologyInfoRemovedCopyWithImpl<$Res>
    extends _$PathologicalHistoryEventCopyWithImpl<$Res>
    implements $PathologyInfoRemovedCopyWith<$Res> {
  _$PathologyInfoRemovedCopyWithImpl(
      PathologyInfoRemoved _value, $Res Function(PathologyInfoRemoved) _then)
      : super(_value, (v) => _then(v as PathologyInfoRemoved));

  @override
  PathologyInfoRemoved get _value => super._value as PathologyInfoRemoved;

  @override
  $Res call({
    Object? pathologicalName = freezed,
  }) {
    return _then(PathologyInfoRemoved(
      pathologicalName == freezed
          ? _value.pathologicalName
          : pathologicalName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PathologyInfoRemoved implements PathologyInfoRemoved {
  const _$PathologyInfoRemoved(this.pathologicalName);

  @override
  final String pathologicalName;

  @override
  String toString() {
    return 'PathologicalHistoryEvent.removed(pathologicalName: $pathologicalName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PathologyInfoRemoved &&
            (identical(other.pathologicalName, pathologicalName) ||
                const DeepCollectionEquality()
                    .equals(other.pathologicalName, pathologicalName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pathologicalName);

  @JsonKey(ignore: true)
  @override
  $PathologyInfoRemovedCopyWith<PathologyInfoRemoved> get copyWith =>
      _$PathologyInfoRemovedCopyWithImpl<PathologyInfoRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PathologicalEntity pathological) added,
    required TResult Function(String pathologicalName) removed,
    required TResult Function() cleared,
  }) {
    return removed(pathologicalName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
    TResult Function()? cleared,
  }) {
    return removed?.call(pathologicalName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(pathologicalName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PathologyInfoAdded value) added,
    required TResult Function(PathologyInfoRemoved value) removed,
    required TResult Function(PathologyInfoCleared value) cleared,
  }) {
    return removed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
  }) {
    return removed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (removed != null) {
      return removed(this);
    }
    return orElse();
  }
}

abstract class PathologyInfoRemoved implements PathologicalHistoryEvent {
  const factory PathologyInfoRemoved(String pathologicalName) =
      _$PathologyInfoRemoved;

  String get pathologicalName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PathologyInfoRemovedCopyWith<PathologyInfoRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologyInfoClearedCopyWith<$Res> {
  factory $PathologyInfoClearedCopyWith(PathologyInfoCleared value,
          $Res Function(PathologyInfoCleared) then) =
      _$PathologyInfoClearedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PathologyInfoClearedCopyWithImpl<$Res>
    extends _$PathologicalHistoryEventCopyWithImpl<$Res>
    implements $PathologyInfoClearedCopyWith<$Res> {
  _$PathologyInfoClearedCopyWithImpl(
      PathologyInfoCleared _value, $Res Function(PathologyInfoCleared) _then)
      : super(_value, (v) => _then(v as PathologyInfoCleared));

  @override
  PathologyInfoCleared get _value => super._value as PathologyInfoCleared;
}

/// @nodoc

class _$PathologyInfoCleared implements PathologyInfoCleared {
  const _$PathologyInfoCleared();

  @override
  String toString() {
    return 'PathologicalHistoryEvent.cleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PathologyInfoCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PathologicalEntity pathological) added,
    required TResult Function(String pathologicalName) removed,
    required TResult Function() cleared,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
    TResult Function()? cleared,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PathologicalEntity pathological)? added,
    TResult Function(String pathologicalName)? removed,
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
    required TResult Function(PathologyInfoAdded value) added,
    required TResult Function(PathologyInfoRemoved value) removed,
    required TResult Function(PathologyInfoCleared value) cleared,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
  }) {
    return cleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologyInfoAdded value)? added,
    TResult Function(PathologyInfoRemoved value)? removed,
    TResult Function(PathologyInfoCleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class PathologyInfoCleared implements PathologicalHistoryEvent {
  const factory PathologyInfoCleared() = _$PathologyInfoCleared;
}

/// @nodoc
class _$PathologicalHistoryStateTearOff {
  const _$PathologicalHistoryStateTearOff();

  PathologicalHistoryCurrentState state(
      List<PathologicalEntity> pathologicalHistory) {
    return PathologicalHistoryCurrentState(
      pathologicalHistory,
    );
  }
}

/// @nodoc
const $PathologicalHistoryState = _$PathologicalHistoryStateTearOff();

/// @nodoc
mixin _$PathologicalHistoryState {
  List<PathologicalEntity> get pathologicalHistory =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PathologicalEntity> pathologicalHistory)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<PathologicalEntity> pathologicalHistory)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PathologicalEntity> pathologicalHistory)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PathologicalHistoryCurrentState value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologicalHistoryCurrentState value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologicalHistoryCurrentState value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathologicalHistoryStateCopyWith<PathologicalHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathologicalHistoryStateCopyWith<$Res> {
  factory $PathologicalHistoryStateCopyWith(PathologicalHistoryState value,
          $Res Function(PathologicalHistoryState) then) =
      _$PathologicalHistoryStateCopyWithImpl<$Res>;
  $Res call({List<PathologicalEntity> pathologicalHistory});
}

/// @nodoc
class _$PathologicalHistoryStateCopyWithImpl<$Res>
    implements $PathologicalHistoryStateCopyWith<$Res> {
  _$PathologicalHistoryStateCopyWithImpl(this._value, this._then);

  final PathologicalHistoryState _value;
  // ignore: unused_field
  final $Res Function(PathologicalHistoryState) _then;

  @override
  $Res call({
    Object? pathologicalHistory = freezed,
  }) {
    return _then(_value.copyWith(
      pathologicalHistory: pathologicalHistory == freezed
          ? _value.pathologicalHistory
          : pathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
    ));
  }
}

/// @nodoc
abstract class $PathologicalHistoryCurrentStateCopyWith<$Res>
    implements $PathologicalHistoryStateCopyWith<$Res> {
  factory $PathologicalHistoryCurrentStateCopyWith(
          PathologicalHistoryCurrentState value,
          $Res Function(PathologicalHistoryCurrentState) then) =
      _$PathologicalHistoryCurrentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PathologicalEntity> pathologicalHistory});
}

/// @nodoc
class _$PathologicalHistoryCurrentStateCopyWithImpl<$Res>
    extends _$PathologicalHistoryStateCopyWithImpl<$Res>
    implements $PathologicalHistoryCurrentStateCopyWith<$Res> {
  _$PathologicalHistoryCurrentStateCopyWithImpl(
      PathologicalHistoryCurrentState _value,
      $Res Function(PathologicalHistoryCurrentState) _then)
      : super(_value, (v) => _then(v as PathologicalHistoryCurrentState));

  @override
  PathologicalHistoryCurrentState get _value =>
      super._value as PathologicalHistoryCurrentState;

  @override
  $Res call({
    Object? pathologicalHistory = freezed,
  }) {
    return _then(PathologicalHistoryCurrentState(
      pathologicalHistory == freezed
          ? _value.pathologicalHistory
          : pathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
    ));
  }
}

/// @nodoc

class _$PathologicalHistoryCurrentState
    implements PathologicalHistoryCurrentState {
  const _$PathologicalHistoryCurrentState(this.pathologicalHistory);

  @override
  final List<PathologicalEntity> pathologicalHistory;

  @override
  String toString() {
    return 'PathologicalHistoryState.state(pathologicalHistory: $pathologicalHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PathologicalHistoryCurrentState &&
            (identical(other.pathologicalHistory, pathologicalHistory) ||
                const DeepCollectionEquality()
                    .equals(other.pathologicalHistory, pathologicalHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pathologicalHistory);

  @JsonKey(ignore: true)
  @override
  $PathologicalHistoryCurrentStateCopyWith<PathologicalHistoryCurrentState>
      get copyWith => _$PathologicalHistoryCurrentStateCopyWithImpl<
          PathologicalHistoryCurrentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PathologicalEntity> pathologicalHistory)
        state,
  }) {
    return state(pathologicalHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<PathologicalEntity> pathologicalHistory)? state,
  }) {
    return state?.call(pathologicalHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PathologicalEntity> pathologicalHistory)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(pathologicalHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PathologicalHistoryCurrentState value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PathologicalHistoryCurrentState value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PathologicalHistoryCurrentState value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class PathologicalHistoryCurrentState
    implements PathologicalHistoryState {
  const factory PathologicalHistoryCurrentState(
          List<PathologicalEntity> pathologicalHistory) =
      _$PathologicalHistoryCurrentState;

  @override
  List<PathologicalEntity> get pathologicalHistory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PathologicalHistoryCurrentStateCopyWith<PathologicalHistoryCurrentState>
      get copyWith => throw _privateConstructorUsedError;
}
