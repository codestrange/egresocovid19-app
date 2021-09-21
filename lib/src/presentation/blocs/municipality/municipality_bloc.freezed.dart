// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'municipality_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MunicipalityEventTearOff {
  const _$MunicipalityEventTearOff();

  ProvincesRequested provincesRequested() {
    return const ProvincesRequested();
  }

  ProvinceSelected provinceSelected(ProvinceEntity entity) {
    return ProvinceSelected(
      entity,
    );
  }

  MunicipalitySelected municipalitySelected(MunicipalityEntity entity) {
    return MunicipalitySelected(
      entity,
    );
  }
}

/// @nodoc
const $MunicipalityEvent = _$MunicipalityEventTearOff();

/// @nodoc
mixin _$MunicipalityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() provincesRequested,
    required TResult Function(ProvinceEntity entity) provinceSelected,
    required TResult Function(MunicipalityEntity entity) municipalitySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? provincesRequested,
    TResult Function(ProvinceEntity entity)? provinceSelected,
    TResult Function(MunicipalityEntity entity)? municipalitySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvincesRequested value) provincesRequested,
    required TResult Function(ProvinceSelected value) provinceSelected,
    required TResult Function(MunicipalitySelected value) municipalitySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvincesRequested value)? provincesRequested,
    TResult Function(ProvinceSelected value)? provinceSelected,
    TResult Function(MunicipalitySelected value)? municipalitySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalityEventCopyWith<$Res> {
  factory $MunicipalityEventCopyWith(
          MunicipalityEvent value, $Res Function(MunicipalityEvent) then) =
      _$MunicipalityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MunicipalityEventCopyWithImpl<$Res>
    implements $MunicipalityEventCopyWith<$Res> {
  _$MunicipalityEventCopyWithImpl(this._value, this._then);

  final MunicipalityEvent _value;
  // ignore: unused_field
  final $Res Function(MunicipalityEvent) _then;
}

/// @nodoc
abstract class $ProvincesRequestedCopyWith<$Res> {
  factory $ProvincesRequestedCopyWith(
          ProvincesRequested value, $Res Function(ProvincesRequested) then) =
      _$ProvincesRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProvincesRequestedCopyWithImpl<$Res>
    extends _$MunicipalityEventCopyWithImpl<$Res>
    implements $ProvincesRequestedCopyWith<$Res> {
  _$ProvincesRequestedCopyWithImpl(
      ProvincesRequested _value, $Res Function(ProvincesRequested) _then)
      : super(_value, (v) => _then(v as ProvincesRequested));

  @override
  ProvincesRequested get _value => super._value as ProvincesRequested;
}

/// @nodoc

class _$ProvincesRequested
    with DiagnosticableTreeMixin
    implements ProvincesRequested {
  const _$ProvincesRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityEvent.provincesRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'MunicipalityEvent.provincesRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProvincesRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() provincesRequested,
    required TResult Function(ProvinceEntity entity) provinceSelected,
    required TResult Function(MunicipalityEntity entity) municipalitySelected,
  }) {
    return provincesRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? provincesRequested,
    TResult Function(ProvinceEntity entity)? provinceSelected,
    TResult Function(MunicipalityEntity entity)? municipalitySelected,
    required TResult orElse(),
  }) {
    if (provincesRequested != null) {
      return provincesRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvincesRequested value) provincesRequested,
    required TResult Function(ProvinceSelected value) provinceSelected,
    required TResult Function(MunicipalitySelected value) municipalitySelected,
  }) {
    return provincesRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvincesRequested value)? provincesRequested,
    TResult Function(ProvinceSelected value)? provinceSelected,
    TResult Function(MunicipalitySelected value)? municipalitySelected,
    required TResult orElse(),
  }) {
    if (provincesRequested != null) {
      return provincesRequested(this);
    }
    return orElse();
  }
}

abstract class ProvincesRequested implements MunicipalityEvent {
  const factory ProvincesRequested() = _$ProvincesRequested;
}

/// @nodoc
abstract class $ProvinceSelectedCopyWith<$Res> {
  factory $ProvinceSelectedCopyWith(
          ProvinceSelected value, $Res Function(ProvinceSelected) then) =
      _$ProvinceSelectedCopyWithImpl<$Res>;
  $Res call({ProvinceEntity entity});

  $ProvinceEntityCopyWith<$Res> get entity;
}

/// @nodoc
class _$ProvinceSelectedCopyWithImpl<$Res>
    extends _$MunicipalityEventCopyWithImpl<$Res>
    implements $ProvinceSelectedCopyWith<$Res> {
  _$ProvinceSelectedCopyWithImpl(
      ProvinceSelected _value, $Res Function(ProvinceSelected) _then)
      : super(_value, (v) => _then(v as ProvinceSelected));

  @override
  ProvinceSelected get _value => super._value as ProvinceSelected;

  @override
  $Res call({
    Object? entity = freezed,
  }) {
    return _then(ProvinceSelected(
      entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as ProvinceEntity,
    ));
  }

  @override
  $ProvinceEntityCopyWith<$Res> get entity {
    return $ProvinceEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$ProvinceSelected
    with DiagnosticableTreeMixin
    implements ProvinceSelected {
  const _$ProvinceSelected(this.entity);

  @override
  final ProvinceEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityEvent.provinceSelected(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MunicipalityEvent.provinceSelected'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProvinceSelected &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entity);

  @JsonKey(ignore: true)
  @override
  $ProvinceSelectedCopyWith<ProvinceSelected> get copyWith =>
      _$ProvinceSelectedCopyWithImpl<ProvinceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() provincesRequested,
    required TResult Function(ProvinceEntity entity) provinceSelected,
    required TResult Function(MunicipalityEntity entity) municipalitySelected,
  }) {
    return provinceSelected(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? provincesRequested,
    TResult Function(ProvinceEntity entity)? provinceSelected,
    TResult Function(MunicipalityEntity entity)? municipalitySelected,
    required TResult orElse(),
  }) {
    if (provinceSelected != null) {
      return provinceSelected(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvincesRequested value) provincesRequested,
    required TResult Function(ProvinceSelected value) provinceSelected,
    required TResult Function(MunicipalitySelected value) municipalitySelected,
  }) {
    return provinceSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvincesRequested value)? provincesRequested,
    TResult Function(ProvinceSelected value)? provinceSelected,
    TResult Function(MunicipalitySelected value)? municipalitySelected,
    required TResult orElse(),
  }) {
    if (provinceSelected != null) {
      return provinceSelected(this);
    }
    return orElse();
  }
}

abstract class ProvinceSelected implements MunicipalityEvent {
  const factory ProvinceSelected(ProvinceEntity entity) = _$ProvinceSelected;

  ProvinceEntity get entity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceSelectedCopyWith<ProvinceSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalitySelectedCopyWith<$Res> {
  factory $MunicipalitySelectedCopyWith(MunicipalitySelected value,
          $Res Function(MunicipalitySelected) then) =
      _$MunicipalitySelectedCopyWithImpl<$Res>;
  $Res call({MunicipalityEntity entity});

  $MunicipalityEntityCopyWith<$Res> get entity;
}

/// @nodoc
class _$MunicipalitySelectedCopyWithImpl<$Res>
    extends _$MunicipalityEventCopyWithImpl<$Res>
    implements $MunicipalitySelectedCopyWith<$Res> {
  _$MunicipalitySelectedCopyWithImpl(
      MunicipalitySelected _value, $Res Function(MunicipalitySelected) _then)
      : super(_value, (v) => _then(v as MunicipalitySelected));

  @override
  MunicipalitySelected get _value => super._value as MunicipalitySelected;

  @override
  $Res call({
    Object? entity = freezed,
  }) {
    return _then(MunicipalitySelected(
      entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MunicipalityEntity,
    ));
  }

  @override
  $MunicipalityEntityCopyWith<$Res> get entity {
    return $MunicipalityEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$MunicipalitySelected
    with DiagnosticableTreeMixin
    implements MunicipalitySelected {
  const _$MunicipalitySelected(this.entity);

  @override
  final MunicipalityEntity entity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityEvent.municipalitySelected(entity: $entity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'MunicipalityEvent.municipalitySelected'))
      ..add(DiagnosticsProperty('entity', entity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MunicipalitySelected &&
            (identical(other.entity, entity) ||
                const DeepCollectionEquality().equals(other.entity, entity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(entity);

  @JsonKey(ignore: true)
  @override
  $MunicipalitySelectedCopyWith<MunicipalitySelected> get copyWith =>
      _$MunicipalitySelectedCopyWithImpl<MunicipalitySelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() provincesRequested,
    required TResult Function(ProvinceEntity entity) provinceSelected,
    required TResult Function(MunicipalityEntity entity) municipalitySelected,
  }) {
    return municipalitySelected(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? provincesRequested,
    TResult Function(ProvinceEntity entity)? provinceSelected,
    TResult Function(MunicipalityEntity entity)? municipalitySelected,
    required TResult orElse(),
  }) {
    if (municipalitySelected != null) {
      return municipalitySelected(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProvincesRequested value) provincesRequested,
    required TResult Function(ProvinceSelected value) provinceSelected,
    required TResult Function(MunicipalitySelected value) municipalitySelected,
  }) {
    return municipalitySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProvincesRequested value)? provincesRequested,
    TResult Function(ProvinceSelected value)? provinceSelected,
    TResult Function(MunicipalitySelected value)? municipalitySelected,
    required TResult orElse(),
  }) {
    if (municipalitySelected != null) {
      return municipalitySelected(this);
    }
    return orElse();
  }
}

abstract class MunicipalitySelected implements MunicipalityEvent {
  const factory MunicipalitySelected(MunicipalityEntity entity) =
      _$MunicipalitySelected;

  MunicipalityEntity get entity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MunicipalitySelectedCopyWith<MunicipalitySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MunicipalityStateTearOff {
  const _$MunicipalityStateTearOff();

  MunicipalityInitial initial() {
    return const MunicipalityInitial();
  }

  MunicipalityRequestInProgress inProgress() {
    return const MunicipalityRequestInProgress();
  }

  ProvinceSelection provinceSelection(
      {required List<ProvinceEntity> provinces}) {
    return ProvinceSelection(
      provinces: provinces,
    );
  }

  MunicipalitySelection municipalitySelection(
      {required List<ProvinceEntity> provinces,
      required ProvinceEntity provinceSelected}) {
    return MunicipalitySelection(
      provinces: provinces,
      provinceSelected: provinceSelected,
    );
  }

  MunicipalityCodeReady municipalityCodeReady(
      {required List<ProvinceEntity> provinces,
      required ProvinceEntity provinceSelected,
      required MunicipalityEntity municipalitySelected}) {
    return MunicipalityCodeReady(
      provinces: provinces,
      provinceSelected: provinceSelected,
      municipalitySelected: municipalitySelected,
    );
  }
}

/// @nodoc
const $MunicipalityState = _$MunicipalityStateTearOff();

/// @nodoc
mixin _$MunicipalityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<ProvinceEntity> provinces) provinceSelection,
    required TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)
        municipalitySelection,
    required TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)
        municipalityCodeReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<ProvinceEntity> provinces)? provinceSelection,
    TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)?
        municipalitySelection,
    TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)?
        municipalityCodeReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MunicipalityInitial value) initial,
    required TResult Function(MunicipalityRequestInProgress value) inProgress,
    required TResult Function(ProvinceSelection value) provinceSelection,
    required TResult Function(MunicipalitySelection value)
        municipalitySelection,
    required TResult Function(MunicipalityCodeReady value)
        municipalityCodeReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MunicipalityInitial value)? initial,
    TResult Function(MunicipalityRequestInProgress value)? inProgress,
    TResult Function(ProvinceSelection value)? provinceSelection,
    TResult Function(MunicipalitySelection value)? municipalitySelection,
    TResult Function(MunicipalityCodeReady value)? municipalityCodeReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalityStateCopyWith<$Res> {
  factory $MunicipalityStateCopyWith(
          MunicipalityState value, $Res Function(MunicipalityState) then) =
      _$MunicipalityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MunicipalityStateCopyWithImpl<$Res>
    implements $MunicipalityStateCopyWith<$Res> {
  _$MunicipalityStateCopyWithImpl(this._value, this._then);

  final MunicipalityState _value;
  // ignore: unused_field
  final $Res Function(MunicipalityState) _then;
}

/// @nodoc
abstract class $MunicipalityInitialCopyWith<$Res> {
  factory $MunicipalityInitialCopyWith(
          MunicipalityInitial value, $Res Function(MunicipalityInitial) then) =
      _$MunicipalityInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MunicipalityInitialCopyWithImpl<$Res>
    extends _$MunicipalityStateCopyWithImpl<$Res>
    implements $MunicipalityInitialCopyWith<$Res> {
  _$MunicipalityInitialCopyWithImpl(
      MunicipalityInitial _value, $Res Function(MunicipalityInitial) _then)
      : super(_value, (v) => _then(v as MunicipalityInitial));

  @override
  MunicipalityInitial get _value => super._value as MunicipalityInitial;
}

/// @nodoc

class _$MunicipalityInitial
    with DiagnosticableTreeMixin
    implements MunicipalityInitial {
  const _$MunicipalityInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MunicipalityState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MunicipalityInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<ProvinceEntity> provinces) provinceSelection,
    required TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)
        municipalitySelection,
    required TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)
        municipalityCodeReady,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<ProvinceEntity> provinces)? provinceSelection,
    TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)?
        municipalitySelection,
    TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)?
        municipalityCodeReady,
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
    required TResult Function(MunicipalityInitial value) initial,
    required TResult Function(MunicipalityRequestInProgress value) inProgress,
    required TResult Function(ProvinceSelection value) provinceSelection,
    required TResult Function(MunicipalitySelection value)
        municipalitySelection,
    required TResult Function(MunicipalityCodeReady value)
        municipalityCodeReady,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MunicipalityInitial value)? initial,
    TResult Function(MunicipalityRequestInProgress value)? inProgress,
    TResult Function(ProvinceSelection value)? provinceSelection,
    TResult Function(MunicipalitySelection value)? municipalitySelection,
    TResult Function(MunicipalityCodeReady value)? municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MunicipalityInitial implements MunicipalityState {
  const factory MunicipalityInitial() = _$MunicipalityInitial;
}

/// @nodoc
abstract class $MunicipalityRequestInProgressCopyWith<$Res> {
  factory $MunicipalityRequestInProgressCopyWith(
          MunicipalityRequestInProgress value,
          $Res Function(MunicipalityRequestInProgress) then) =
      _$MunicipalityRequestInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$MunicipalityRequestInProgressCopyWithImpl<$Res>
    extends _$MunicipalityStateCopyWithImpl<$Res>
    implements $MunicipalityRequestInProgressCopyWith<$Res> {
  _$MunicipalityRequestInProgressCopyWithImpl(
      MunicipalityRequestInProgress _value,
      $Res Function(MunicipalityRequestInProgress) _then)
      : super(_value, (v) => _then(v as MunicipalityRequestInProgress));

  @override
  MunicipalityRequestInProgress get _value =>
      super._value as MunicipalityRequestInProgress;
}

/// @nodoc

class _$MunicipalityRequestInProgress
    with DiagnosticableTreeMixin
    implements MunicipalityRequestInProgress {
  const _$MunicipalityRequestInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityState.inProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MunicipalityState.inProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MunicipalityRequestInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<ProvinceEntity> provinces) provinceSelection,
    required TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)
        municipalitySelection,
    required TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)
        municipalityCodeReady,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<ProvinceEntity> provinces)? provinceSelection,
    TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)?
        municipalitySelection,
    TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)?
        municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MunicipalityInitial value) initial,
    required TResult Function(MunicipalityRequestInProgress value) inProgress,
    required TResult Function(ProvinceSelection value) provinceSelection,
    required TResult Function(MunicipalitySelection value)
        municipalitySelection,
    required TResult Function(MunicipalityCodeReady value)
        municipalityCodeReady,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MunicipalityInitial value)? initial,
    TResult Function(MunicipalityRequestInProgress value)? inProgress,
    TResult Function(ProvinceSelection value)? provinceSelection,
    TResult Function(MunicipalitySelection value)? municipalitySelection,
    TResult Function(MunicipalityCodeReady value)? municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class MunicipalityRequestInProgress implements MunicipalityState {
  const factory MunicipalityRequestInProgress() =
      _$MunicipalityRequestInProgress;
}

/// @nodoc
abstract class $ProvinceSelectionCopyWith<$Res> {
  factory $ProvinceSelectionCopyWith(
          ProvinceSelection value, $Res Function(ProvinceSelection) then) =
      _$ProvinceSelectionCopyWithImpl<$Res>;
  $Res call({List<ProvinceEntity> provinces});
}

/// @nodoc
class _$ProvinceSelectionCopyWithImpl<$Res>
    extends _$MunicipalityStateCopyWithImpl<$Res>
    implements $ProvinceSelectionCopyWith<$Res> {
  _$ProvinceSelectionCopyWithImpl(
      ProvinceSelection _value, $Res Function(ProvinceSelection) _then)
      : super(_value, (v) => _then(v as ProvinceSelection));

  @override
  ProvinceSelection get _value => super._value as ProvinceSelection;

  @override
  $Res call({
    Object? provinces = freezed,
  }) {
    return _then(ProvinceSelection(
      provinces: provinces == freezed
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceEntity>,
    ));
  }
}

/// @nodoc

class _$ProvinceSelection
    with DiagnosticableTreeMixin
    implements ProvinceSelection {
  const _$ProvinceSelection({required this.provinces});

  @override
  final List<ProvinceEntity> provinces;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityState.provinceSelection(provinces: $provinces)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MunicipalityState.provinceSelection'))
      ..add(DiagnosticsProperty('provinces', provinces));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProvinceSelection &&
            (identical(other.provinces, provinces) ||
                const DeepCollectionEquality()
                    .equals(other.provinces, provinces)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(provinces);

  @JsonKey(ignore: true)
  @override
  $ProvinceSelectionCopyWith<ProvinceSelection> get copyWith =>
      _$ProvinceSelectionCopyWithImpl<ProvinceSelection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<ProvinceEntity> provinces) provinceSelection,
    required TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)
        municipalitySelection,
    required TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)
        municipalityCodeReady,
  }) {
    return provinceSelection(provinces);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<ProvinceEntity> provinces)? provinceSelection,
    TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)?
        municipalitySelection,
    TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)?
        municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (provinceSelection != null) {
      return provinceSelection(provinces);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MunicipalityInitial value) initial,
    required TResult Function(MunicipalityRequestInProgress value) inProgress,
    required TResult Function(ProvinceSelection value) provinceSelection,
    required TResult Function(MunicipalitySelection value)
        municipalitySelection,
    required TResult Function(MunicipalityCodeReady value)
        municipalityCodeReady,
  }) {
    return provinceSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MunicipalityInitial value)? initial,
    TResult Function(MunicipalityRequestInProgress value)? inProgress,
    TResult Function(ProvinceSelection value)? provinceSelection,
    TResult Function(MunicipalitySelection value)? municipalitySelection,
    TResult Function(MunicipalityCodeReady value)? municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (provinceSelection != null) {
      return provinceSelection(this);
    }
    return orElse();
  }
}

abstract class ProvinceSelection implements MunicipalityState {
  const factory ProvinceSelection({required List<ProvinceEntity> provinces}) =
      _$ProvinceSelection;

  List<ProvinceEntity> get provinces => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceSelectionCopyWith<ProvinceSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalitySelectionCopyWith<$Res> {
  factory $MunicipalitySelectionCopyWith(MunicipalitySelection value,
          $Res Function(MunicipalitySelection) then) =
      _$MunicipalitySelectionCopyWithImpl<$Res>;
  $Res call({List<ProvinceEntity> provinces, ProvinceEntity provinceSelected});

  $ProvinceEntityCopyWith<$Res> get provinceSelected;
}

/// @nodoc
class _$MunicipalitySelectionCopyWithImpl<$Res>
    extends _$MunicipalityStateCopyWithImpl<$Res>
    implements $MunicipalitySelectionCopyWith<$Res> {
  _$MunicipalitySelectionCopyWithImpl(
      MunicipalitySelection _value, $Res Function(MunicipalitySelection) _then)
      : super(_value, (v) => _then(v as MunicipalitySelection));

  @override
  MunicipalitySelection get _value => super._value as MunicipalitySelection;

  @override
  $Res call({
    Object? provinces = freezed,
    Object? provinceSelected = freezed,
  }) {
    return _then(MunicipalitySelection(
      provinces: provinces == freezed
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceEntity>,
      provinceSelected: provinceSelected == freezed
          ? _value.provinceSelected
          : provinceSelected // ignore: cast_nullable_to_non_nullable
              as ProvinceEntity,
    ));
  }

  @override
  $ProvinceEntityCopyWith<$Res> get provinceSelected {
    return $ProvinceEntityCopyWith<$Res>(_value.provinceSelected, (value) {
      return _then(_value.copyWith(provinceSelected: value));
    });
  }
}

/// @nodoc

class _$MunicipalitySelection
    with DiagnosticableTreeMixin
    implements MunicipalitySelection {
  const _$MunicipalitySelection(
      {required this.provinces, required this.provinceSelected});

  @override
  final List<ProvinceEntity> provinces;
  @override
  final ProvinceEntity provinceSelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityState.municipalitySelection(provinces: $provinces, provinceSelected: $provinceSelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'MunicipalityState.municipalitySelection'))
      ..add(DiagnosticsProperty('provinces', provinces))
      ..add(DiagnosticsProperty('provinceSelected', provinceSelected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MunicipalitySelection &&
            (identical(other.provinces, provinces) ||
                const DeepCollectionEquality()
                    .equals(other.provinces, provinces)) &&
            (identical(other.provinceSelected, provinceSelected) ||
                const DeepCollectionEquality()
                    .equals(other.provinceSelected, provinceSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provinces) ^
      const DeepCollectionEquality().hash(provinceSelected);

  @JsonKey(ignore: true)
  @override
  $MunicipalitySelectionCopyWith<MunicipalitySelection> get copyWith =>
      _$MunicipalitySelectionCopyWithImpl<MunicipalitySelection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<ProvinceEntity> provinces) provinceSelection,
    required TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)
        municipalitySelection,
    required TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)
        municipalityCodeReady,
  }) {
    return municipalitySelection(provinces, provinceSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<ProvinceEntity> provinces)? provinceSelection,
    TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)?
        municipalitySelection,
    TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)?
        municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (municipalitySelection != null) {
      return municipalitySelection(provinces, provinceSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MunicipalityInitial value) initial,
    required TResult Function(MunicipalityRequestInProgress value) inProgress,
    required TResult Function(ProvinceSelection value) provinceSelection,
    required TResult Function(MunicipalitySelection value)
        municipalitySelection,
    required TResult Function(MunicipalityCodeReady value)
        municipalityCodeReady,
  }) {
    return municipalitySelection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MunicipalityInitial value)? initial,
    TResult Function(MunicipalityRequestInProgress value)? inProgress,
    TResult Function(ProvinceSelection value)? provinceSelection,
    TResult Function(MunicipalitySelection value)? municipalitySelection,
    TResult Function(MunicipalityCodeReady value)? municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (municipalitySelection != null) {
      return municipalitySelection(this);
    }
    return orElse();
  }
}

abstract class MunicipalitySelection implements MunicipalityState {
  const factory MunicipalitySelection(
      {required List<ProvinceEntity> provinces,
      required ProvinceEntity provinceSelected}) = _$MunicipalitySelection;

  List<ProvinceEntity> get provinces => throw _privateConstructorUsedError;
  ProvinceEntity get provinceSelected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MunicipalitySelectionCopyWith<MunicipalitySelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MunicipalityCodeReadyCopyWith<$Res> {
  factory $MunicipalityCodeReadyCopyWith(MunicipalityCodeReady value,
          $Res Function(MunicipalityCodeReady) then) =
      _$MunicipalityCodeReadyCopyWithImpl<$Res>;
  $Res call(
      {List<ProvinceEntity> provinces,
      ProvinceEntity provinceSelected,
      MunicipalityEntity municipalitySelected});

  $ProvinceEntityCopyWith<$Res> get provinceSelected;
  $MunicipalityEntityCopyWith<$Res> get municipalitySelected;
}

/// @nodoc
class _$MunicipalityCodeReadyCopyWithImpl<$Res>
    extends _$MunicipalityStateCopyWithImpl<$Res>
    implements $MunicipalityCodeReadyCopyWith<$Res> {
  _$MunicipalityCodeReadyCopyWithImpl(
      MunicipalityCodeReady _value, $Res Function(MunicipalityCodeReady) _then)
      : super(_value, (v) => _then(v as MunicipalityCodeReady));

  @override
  MunicipalityCodeReady get _value => super._value as MunicipalityCodeReady;

  @override
  $Res call({
    Object? provinces = freezed,
    Object? provinceSelected = freezed,
    Object? municipalitySelected = freezed,
  }) {
    return _then(MunicipalityCodeReady(
      provinces: provinces == freezed
          ? _value.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceEntity>,
      provinceSelected: provinceSelected == freezed
          ? _value.provinceSelected
          : provinceSelected // ignore: cast_nullable_to_non_nullable
              as ProvinceEntity,
      municipalitySelected: municipalitySelected == freezed
          ? _value.municipalitySelected
          : municipalitySelected // ignore: cast_nullable_to_non_nullable
              as MunicipalityEntity,
    ));
  }

  @override
  $ProvinceEntityCopyWith<$Res> get provinceSelected {
    return $ProvinceEntityCopyWith<$Res>(_value.provinceSelected, (value) {
      return _then(_value.copyWith(provinceSelected: value));
    });
  }

  @override
  $MunicipalityEntityCopyWith<$Res> get municipalitySelected {
    return $MunicipalityEntityCopyWith<$Res>(_value.municipalitySelected,
        (value) {
      return _then(_value.copyWith(municipalitySelected: value));
    });
  }
}

/// @nodoc

class _$MunicipalityCodeReady
    with DiagnosticableTreeMixin
    implements MunicipalityCodeReady {
  const _$MunicipalityCodeReady(
      {required this.provinces,
      required this.provinceSelected,
      required this.municipalitySelected});

  @override
  final List<ProvinceEntity> provinces;
  @override
  final ProvinceEntity provinceSelected;
  @override
  final MunicipalityEntity municipalitySelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MunicipalityState.municipalityCodeReady(provinces: $provinces, provinceSelected: $provinceSelected, municipalitySelected: $municipalitySelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'MunicipalityState.municipalityCodeReady'))
      ..add(DiagnosticsProperty('provinces', provinces))
      ..add(DiagnosticsProperty('provinceSelected', provinceSelected))
      ..add(DiagnosticsProperty('municipalitySelected', municipalitySelected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MunicipalityCodeReady &&
            (identical(other.provinces, provinces) ||
                const DeepCollectionEquality()
                    .equals(other.provinces, provinces)) &&
            (identical(other.provinceSelected, provinceSelected) ||
                const DeepCollectionEquality()
                    .equals(other.provinceSelected, provinceSelected)) &&
            (identical(other.municipalitySelected, municipalitySelected) ||
                const DeepCollectionEquality()
                    .equals(other.municipalitySelected, municipalitySelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provinces) ^
      const DeepCollectionEquality().hash(provinceSelected) ^
      const DeepCollectionEquality().hash(municipalitySelected);

  @JsonKey(ignore: true)
  @override
  $MunicipalityCodeReadyCopyWith<MunicipalityCodeReady> get copyWith =>
      _$MunicipalityCodeReadyCopyWithImpl<MunicipalityCodeReady>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(List<ProvinceEntity> provinces) provinceSelection,
    required TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)
        municipalitySelection,
    required TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)
        municipalityCodeReady,
  }) {
    return municipalityCodeReady(
        provinces, provinceSelected, municipalitySelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(List<ProvinceEntity> provinces)? provinceSelection,
    TResult Function(
            List<ProvinceEntity> provinces, ProvinceEntity provinceSelected)?
        municipalitySelection,
    TResult Function(
            List<ProvinceEntity> provinces,
            ProvinceEntity provinceSelected,
            MunicipalityEntity municipalitySelected)?
        municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (municipalityCodeReady != null) {
      return municipalityCodeReady(
          provinces, provinceSelected, municipalitySelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MunicipalityInitial value) initial,
    required TResult Function(MunicipalityRequestInProgress value) inProgress,
    required TResult Function(ProvinceSelection value) provinceSelection,
    required TResult Function(MunicipalitySelection value)
        municipalitySelection,
    required TResult Function(MunicipalityCodeReady value)
        municipalityCodeReady,
  }) {
    return municipalityCodeReady(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MunicipalityInitial value)? initial,
    TResult Function(MunicipalityRequestInProgress value)? inProgress,
    TResult Function(ProvinceSelection value)? provinceSelection,
    TResult Function(MunicipalitySelection value)? municipalitySelection,
    TResult Function(MunicipalityCodeReady value)? municipalityCodeReady,
    required TResult orElse(),
  }) {
    if (municipalityCodeReady != null) {
      return municipalityCodeReady(this);
    }
    return orElse();
  }
}

abstract class MunicipalityCodeReady implements MunicipalityState {
  const factory MunicipalityCodeReady(
          {required List<ProvinceEntity> provinces,
          required ProvinceEntity provinceSelected,
          required MunicipalityEntity municipalitySelected}) =
      _$MunicipalityCodeReady;

  List<ProvinceEntity> get provinces => throw _privateConstructorUsedError;
  ProvinceEntity get provinceSelected => throw _privateConstructorUsedError;
  MunicipalityEntity get municipalitySelected =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MunicipalityCodeReadyCopyWith<MunicipalityCodeReady> get copyWith =>
      throw _privateConstructorUsedError;
}
