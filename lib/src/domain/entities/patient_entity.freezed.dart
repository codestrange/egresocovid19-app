// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'patient_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PatientEntityTearOff {
  const _$PatientEntityTearOff();

  _PatientGetEntity get(
      {required String id,
      required String firstname,
      required String lastname,
      required String ci,
      required String province,
      required String municipality,
      required Sex sex,
      required SkinColor skinColor,
      required BloodType? bloodType,
      required String address,
      required String polyclinic,
      required String surgery,
      required String popularCouncil,
      required String neighborhood,
      required int blockNumber,
      required List<PathologicalEntity> personalPathologicalHistory,
      required List<PathologicalEntity> familyPathologicalHistory}) {
    return _PatientGetEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      province: province,
      municipality: municipality,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory: personalPathologicalHistory,
      familyPathologicalHistory: familyPathologicalHistory,
    );
  }

  _PatientGetDetailEntity getDetail(
      {required String id,
      required String firstname,
      required String lastname,
      required String ci,
      required String province,
      required String municipality,
      required Sex sex,
      required SkinColor skinColor,
      required BloodType? bloodType,
      required String address,
      required String polyclinic,
      required String surgery,
      required String popularCouncil,
      required String neighborhood,
      required int blockNumber,
      required List<PathologicalEntity> personalPathologicalHistory,
      required List<PathologicalEntity> familyPathologicalHistory,
      required DischargeOfPositiveCasesOfCovid19Entity
          dischargeOfPositiveCasesOfCovid19}) {
    return _PatientGetDetailEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      province: province,
      municipality: municipality,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory: personalPathologicalHistory,
      familyPathologicalHistory: familyPathologicalHistory,
      dischargeOfPositiveCasesOfCovid19: dischargeOfPositiveCasesOfCovid19,
    );
  }

  _PatientPostEntity post(
      {required String id,
      required String firstname,
      required String lastname,
      required String ci,
      required String municipalityCode,
      required Sex sex,
      required SkinColor skinColor,
      required BloodType? bloodType,
      required String address,
      required String polyclinic,
      required String surgery,
      required String popularCouncil,
      required String neighborhood,
      required int blockNumber,
      required List<PathologicalEntity> personalPathologicalHistory,
      required List<PathologicalEntity> familyPathologicalHistory}) {
    return _PatientPostEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      municipalityCode: municipalityCode,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory: personalPathologicalHistory,
      familyPathologicalHistory: familyPathologicalHistory,
    );
  }

  _PatientPutEntity put(
      {required String? id,
      required String? firstname,
      required String? lastname,
      required String? ci,
      required String? municipalityCode,
      required Sex? sex,
      required SkinColor? skinColor,
      required BloodType? bloodType,
      required String? address,
      required String? polyclinic,
      required String? surgery,
      required String? popularCouncil,
      required String? neighborhood,
      required int? blockNumber,
      required List<PathologicalEntity>? personalPathologicalHistory,
      required List<PathologicalEntity>? familyPathologicalHistory}) {
    return _PatientPutEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      municipalityCode: municipalityCode,
      sex: sex,
      skinColor: skinColor,
      bloodType: bloodType,
      address: address,
      polyclinic: polyclinic,
      surgery: surgery,
      popularCouncil: popularCouncil,
      neighborhood: neighborhood,
      blockNumber: blockNumber,
      personalPathologicalHistory: personalPathologicalHistory,
      familyPathologicalHistory: familyPathologicalHistory,
    );
  }
}

/// @nodoc
const $PatientEntity = _$PatientEntityTearOff();

/// @nodoc
mixin _$PatientEntity {
  BloodType? get bloodType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        get,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)
        put,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        get,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)?
        put,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientGetEntity value) get,
    required TResult Function(_PatientGetDetailEntity value) getDetail,
    required TResult Function(_PatientPostEntity value) post,
    required TResult Function(_PatientPutEntity value) put,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientGetEntity value)? get,
    TResult Function(_PatientGetDetailEntity value)? getDetail,
    TResult Function(_PatientPostEntity value)? post,
    TResult Function(_PatientPutEntity value)? put,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientEntityCopyWith<PatientEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientEntityCopyWith<$Res> {
  factory $PatientEntityCopyWith(
          PatientEntity value, $Res Function(PatientEntity) then) =
      _$PatientEntityCopyWithImpl<$Res>;
  $Res call({BloodType? bloodType});
}

/// @nodoc
class _$PatientEntityCopyWithImpl<$Res>
    implements $PatientEntityCopyWith<$Res> {
  _$PatientEntityCopyWithImpl(this._value, this._then);

  final PatientEntity _value;
  // ignore: unused_field
  final $Res Function(PatientEntity) _then;

  @override
  $Res call({
    Object? bloodType = freezed,
  }) {
    return _then(_value.copyWith(
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
    ));
  }
}

/// @nodoc
abstract class _$PatientGetEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory _$PatientGetEntityCopyWith(
          _PatientGetEntity value, $Res Function(_PatientGetEntity) then) =
      __$PatientGetEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String ci,
      String province,
      String municipality,
      Sex sex,
      SkinColor skinColor,
      BloodType? bloodType,
      String address,
      String polyclinic,
      String surgery,
      String popularCouncil,
      String neighborhood,
      int blockNumber,
      List<PathologicalEntity> personalPathologicalHistory,
      List<PathologicalEntity> familyPathologicalHistory});
}

/// @nodoc
class __$PatientGetEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements _$PatientGetEntityCopyWith<$Res> {
  __$PatientGetEntityCopyWithImpl(
      _PatientGetEntity _value, $Res Function(_PatientGetEntity) _then)
      : super(_value, (v) => _then(v as _PatientGetEntity));

  @override
  _PatientGetEntity get _value => super._value as _PatientGetEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? province = freezed,
    Object? municipality = freezed,
    Object? sex = freezed,
    Object? skinColor = freezed,
    Object? bloodType = freezed,
    Object? address = freezed,
    Object? polyclinic = freezed,
    Object? surgery = freezed,
    Object? popularCouncil = freezed,
    Object? neighborhood = freezed,
    Object? blockNumber = freezed,
    Object? personalPathologicalHistory = freezed,
    Object? familyPathologicalHistory = freezed,
  }) {
    return _then(_PatientGetEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      ci: ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      municipality: municipality == freezed
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as String,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as SkinColor,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      polyclinic: polyclinic == freezed
          ? _value.polyclinic
          : polyclinic // ignore: cast_nullable_to_non_nullable
              as String,
      surgery: surgery == freezed
          ? _value.surgery
          : surgery // ignore: cast_nullable_to_non_nullable
              as String,
      popularCouncil: popularCouncil == freezed
          ? _value.popularCouncil
          : popularCouncil // ignore: cast_nullable_to_non_nullable
              as String,
      neighborhood: neighborhood == freezed
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int,
      personalPathologicalHistory: personalPathologicalHistory == freezed
          ? _value.personalPathologicalHistory
          : personalPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
      familyPathologicalHistory: familyPathologicalHistory == freezed
          ? _value.familyPathologicalHistory
          : familyPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
    ));
  }
}

/// @nodoc

class _$_PatientGetEntity implements _PatientGetEntity {
  const _$_PatientGetEntity(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.ci,
      required this.province,
      required this.municipality,
      required this.sex,
      required this.skinColor,
      required this.bloodType,
      required this.address,
      required this.polyclinic,
      required this.surgery,
      required this.popularCouncil,
      required this.neighborhood,
      required this.blockNumber,
      required this.personalPathologicalHistory,
      required this.familyPathologicalHistory});

  @override
  final String id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String ci;
  @override
  final String province;
  @override
  final String municipality;
  @override
  final Sex sex;
  @override
  final SkinColor skinColor;
  @override
  final BloodType? bloodType;
  @override
  final String address;
  @override
  final String polyclinic;
  @override
  final String surgery;
  @override
  final String popularCouncil;
  @override
  final String neighborhood;
  @override
  final int blockNumber;
  @override
  final List<PathologicalEntity> personalPathologicalHistory;
  @override
  final List<PathologicalEntity> familyPathologicalHistory;

  @override
  String toString() {
    return 'PatientEntity.get(id: $id, firstname: $firstname, lastname: $lastname, ci: $ci, province: $province, municipality: $municipality, sex: $sex, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientGetEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.municipality, municipality) ||
                const DeepCollectionEquality()
                    .equals(other.municipality, municipality)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.skinColor, skinColor) ||
                const DeepCollectionEquality()
                    .equals(other.skinColor, skinColor)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.polyclinic, polyclinic) ||
                const DeepCollectionEquality()
                    .equals(other.polyclinic, polyclinic)) &&
            (identical(other.surgery, surgery) ||
                const DeepCollectionEquality()
                    .equals(other.surgery, surgery)) &&
            (identical(other.popularCouncil, popularCouncil) ||
                const DeepCollectionEquality()
                    .equals(other.popularCouncil, popularCouncil)) &&
            (identical(other.neighborhood, neighborhood) ||
                const DeepCollectionEquality()
                    .equals(other.neighborhood, neighborhood)) &&
            (identical(other.blockNumber, blockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.blockNumber, blockNumber)) &&
            (identical(other.personalPathologicalHistory,
                    personalPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.personalPathologicalHistory,
                    personalPathologicalHistory)) &&
            (identical(other.familyPathologicalHistory,
                    familyPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.familyPathologicalHistory,
                    familyPathologicalHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(municipality) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(skinColor) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(polyclinic) ^
      const DeepCollectionEquality().hash(surgery) ^
      const DeepCollectionEquality().hash(popularCouncil) ^
      const DeepCollectionEquality().hash(neighborhood) ^
      const DeepCollectionEquality().hash(blockNumber) ^
      const DeepCollectionEquality().hash(personalPathologicalHistory) ^
      const DeepCollectionEquality().hash(familyPathologicalHistory);

  @JsonKey(ignore: true)
  @override
  _$PatientGetEntityCopyWith<_PatientGetEntity> get copyWith =>
      __$PatientGetEntityCopyWithImpl<_PatientGetEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        get,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)
        put,
  }) {
    return get(
        id,
        firstname,
        lastname,
        ci,
        province,
        municipality,
        sex,
        skinColor,
        bloodType,
        address,
        polyclinic,
        surgery,
        popularCouncil,
        neighborhood,
        blockNumber,
        personalPathologicalHistory,
        familyPathologicalHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        get,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)?
        put,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(
          id,
          firstname,
          lastname,
          ci,
          province,
          municipality,
          sex,
          skinColor,
          bloodType,
          address,
          polyclinic,
          surgery,
          popularCouncil,
          neighborhood,
          blockNumber,
          personalPathologicalHistory,
          familyPathologicalHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientGetEntity value) get,
    required TResult Function(_PatientGetDetailEntity value) getDetail,
    required TResult Function(_PatientPostEntity value) post,
    required TResult Function(_PatientPutEntity value) put,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientGetEntity value)? get,
    TResult Function(_PatientGetDetailEntity value)? getDetail,
    TResult Function(_PatientPostEntity value)? post,
    TResult Function(_PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _PatientGetEntity implements PatientEntity {
  const factory _PatientGetEntity(
          {required String id,
          required String firstname,
          required String lastname,
          required String ci,
          required String province,
          required String municipality,
          required Sex sex,
          required SkinColor skinColor,
          required BloodType? bloodType,
          required String address,
          required String polyclinic,
          required String surgery,
          required String popularCouncil,
          required String neighborhood,
          required int blockNumber,
          required List<PathologicalEntity> personalPathologicalHistory,
          required List<PathologicalEntity> familyPathologicalHistory}) =
      _$_PatientGetEntity;

  String get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get ci => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get municipality => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  SkinColor get skinColor => throw _privateConstructorUsedError;
  @override
  BloodType? get bloodType => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get polyclinic => throw _privateConstructorUsedError;
  String get surgery => throw _privateConstructorUsedError;
  String get popularCouncil => throw _privateConstructorUsedError;
  String get neighborhood => throw _privateConstructorUsedError;
  int get blockNumber => throw _privateConstructorUsedError;
  List<PathologicalEntity> get personalPathologicalHistory =>
      throw _privateConstructorUsedError;
  List<PathologicalEntity> get familyPathologicalHistory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientGetEntityCopyWith<_PatientGetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PatientGetDetailEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory _$PatientGetDetailEntityCopyWith(_PatientGetDetailEntity value,
          $Res Function(_PatientGetDetailEntity) then) =
      __$PatientGetDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String ci,
      String province,
      String municipality,
      Sex sex,
      SkinColor skinColor,
      BloodType? bloodType,
      String address,
      String polyclinic,
      String surgery,
      String popularCouncil,
      String neighborhood,
      int blockNumber,
      List<PathologicalEntity> personalPathologicalHistory,
      List<PathologicalEntity> familyPathologicalHistory,
      DischargeOfPositiveCasesOfCovid19Entity
          dischargeOfPositiveCasesOfCovid19});

  $DischargeOfPositiveCasesOfCovid19EntityCopyWith<$Res>
      get dischargeOfPositiveCasesOfCovid19;
}

/// @nodoc
class __$PatientGetDetailEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements _$PatientGetDetailEntityCopyWith<$Res> {
  __$PatientGetDetailEntityCopyWithImpl(_PatientGetDetailEntity _value,
      $Res Function(_PatientGetDetailEntity) _then)
      : super(_value, (v) => _then(v as _PatientGetDetailEntity));

  @override
  _PatientGetDetailEntity get _value => super._value as _PatientGetDetailEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? province = freezed,
    Object? municipality = freezed,
    Object? sex = freezed,
    Object? skinColor = freezed,
    Object? bloodType = freezed,
    Object? address = freezed,
    Object? polyclinic = freezed,
    Object? surgery = freezed,
    Object? popularCouncil = freezed,
    Object? neighborhood = freezed,
    Object? blockNumber = freezed,
    Object? personalPathologicalHistory = freezed,
    Object? familyPathologicalHistory = freezed,
    Object? dischargeOfPositiveCasesOfCovid19 = freezed,
  }) {
    return _then(_PatientGetDetailEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      ci: ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      province: province == freezed
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      municipality: municipality == freezed
          ? _value.municipality
          : municipality // ignore: cast_nullable_to_non_nullable
              as String,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as SkinColor,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      polyclinic: polyclinic == freezed
          ? _value.polyclinic
          : polyclinic // ignore: cast_nullable_to_non_nullable
              as String,
      surgery: surgery == freezed
          ? _value.surgery
          : surgery // ignore: cast_nullable_to_non_nullable
              as String,
      popularCouncil: popularCouncil == freezed
          ? _value.popularCouncil
          : popularCouncil // ignore: cast_nullable_to_non_nullable
              as String,
      neighborhood: neighborhood == freezed
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int,
      personalPathologicalHistory: personalPathologicalHistory == freezed
          ? _value.personalPathologicalHistory
          : personalPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
      familyPathologicalHistory: familyPathologicalHistory == freezed
          ? _value.familyPathologicalHistory
          : familyPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
      dischargeOfPositiveCasesOfCovid19: dischargeOfPositiveCasesOfCovid19 ==
              freezed
          ? _value.dischargeOfPositiveCasesOfCovid19
          : dischargeOfPositiveCasesOfCovid19 // ignore: cast_nullable_to_non_nullable
              as DischargeOfPositiveCasesOfCovid19Entity,
    ));
  }

  @override
  $DischargeOfPositiveCasesOfCovid19EntityCopyWith<$Res>
      get dischargeOfPositiveCasesOfCovid19 {
    return $DischargeOfPositiveCasesOfCovid19EntityCopyWith<$Res>(
        _value.dischargeOfPositiveCasesOfCovid19, (value) {
      return _then(_value.copyWith(dischargeOfPositiveCasesOfCovid19: value));
    });
  }
}

/// @nodoc

class _$_PatientGetDetailEntity implements _PatientGetDetailEntity {
  const _$_PatientGetDetailEntity(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.ci,
      required this.province,
      required this.municipality,
      required this.sex,
      required this.skinColor,
      required this.bloodType,
      required this.address,
      required this.polyclinic,
      required this.surgery,
      required this.popularCouncil,
      required this.neighborhood,
      required this.blockNumber,
      required this.personalPathologicalHistory,
      required this.familyPathologicalHistory,
      required this.dischargeOfPositiveCasesOfCovid19});

  @override
  final String id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String ci;
  @override
  final String province;
  @override
  final String municipality;
  @override
  final Sex sex;
  @override
  final SkinColor skinColor;
  @override
  final BloodType? bloodType;
  @override
  final String address;
  @override
  final String polyclinic;
  @override
  final String surgery;
  @override
  final String popularCouncil;
  @override
  final String neighborhood;
  @override
  final int blockNumber;
  @override
  final List<PathologicalEntity> personalPathologicalHistory;
  @override
  final List<PathologicalEntity> familyPathologicalHistory;
  @override
  final DischargeOfPositiveCasesOfCovid19Entity
      dischargeOfPositiveCasesOfCovid19;

  @override
  String toString() {
    return 'PatientEntity.getDetail(id: $id, firstname: $firstname, lastname: $lastname, ci: $ci, province: $province, municipality: $municipality, sex: $sex, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory, dischargeOfPositiveCasesOfCovid19: $dischargeOfPositiveCasesOfCovid19)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientGetDetailEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.province, province) ||
                const DeepCollectionEquality()
                    .equals(other.province, province)) &&
            (identical(other.municipality, municipality) ||
                const DeepCollectionEquality()
                    .equals(other.municipality, municipality)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.skinColor, skinColor) ||
                const DeepCollectionEquality()
                    .equals(other.skinColor, skinColor)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.polyclinic, polyclinic) ||
                const DeepCollectionEquality()
                    .equals(other.polyclinic, polyclinic)) &&
            (identical(other.surgery, surgery) ||
                const DeepCollectionEquality()
                    .equals(other.surgery, surgery)) &&
            (identical(other.popularCouncil, popularCouncil) ||
                const DeepCollectionEquality()
                    .equals(other.popularCouncil, popularCouncil)) &&
            (identical(other.neighborhood, neighborhood) ||
                const DeepCollectionEquality()
                    .equals(other.neighborhood, neighborhood)) &&
            (identical(other.blockNumber, blockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.blockNumber, blockNumber)) &&
            (identical(other.personalPathologicalHistory, personalPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.personalPathologicalHistory,
                    personalPathologicalHistory)) &&
            (identical(other.familyPathologicalHistory, familyPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.familyPathologicalHistory,
                    familyPathologicalHistory)) &&
            (identical(other.dischargeOfPositiveCasesOfCovid19,
                    dischargeOfPositiveCasesOfCovid19) ||
                const DeepCollectionEquality().equals(
                    other.dischargeOfPositiveCasesOfCovid19,
                    dischargeOfPositiveCasesOfCovid19)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(province) ^
      const DeepCollectionEquality().hash(municipality) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(skinColor) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(polyclinic) ^
      const DeepCollectionEquality().hash(surgery) ^
      const DeepCollectionEquality().hash(popularCouncil) ^
      const DeepCollectionEquality().hash(neighborhood) ^
      const DeepCollectionEquality().hash(blockNumber) ^
      const DeepCollectionEquality().hash(personalPathologicalHistory) ^
      const DeepCollectionEquality().hash(familyPathologicalHistory) ^
      const DeepCollectionEquality().hash(dischargeOfPositiveCasesOfCovid19);

  @JsonKey(ignore: true)
  @override
  _$PatientGetDetailEntityCopyWith<_PatientGetDetailEntity> get copyWith =>
      __$PatientGetDetailEntityCopyWithImpl<_PatientGetDetailEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        get,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)
        put,
  }) {
    return getDetail(
        id,
        firstname,
        lastname,
        ci,
        province,
        municipality,
        sex,
        skinColor,
        bloodType,
        address,
        polyclinic,
        surgery,
        popularCouncil,
        neighborhood,
        blockNumber,
        personalPathologicalHistory,
        familyPathologicalHistory,
        dischargeOfPositiveCasesOfCovid19);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        get,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)?
        put,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(
          id,
          firstname,
          lastname,
          ci,
          province,
          municipality,
          sex,
          skinColor,
          bloodType,
          address,
          polyclinic,
          surgery,
          popularCouncil,
          neighborhood,
          blockNumber,
          personalPathologicalHistory,
          familyPathologicalHistory,
          dischargeOfPositiveCasesOfCovid19);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientGetEntity value) get,
    required TResult Function(_PatientGetDetailEntity value) getDetail,
    required TResult Function(_PatientPostEntity value) post,
    required TResult Function(_PatientPutEntity value) put,
  }) {
    return getDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientGetEntity value)? get,
    TResult Function(_PatientGetDetailEntity value)? getDetail,
    TResult Function(_PatientPostEntity value)? post,
    TResult Function(_PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(this);
    }
    return orElse();
  }
}

abstract class _PatientGetDetailEntity implements PatientEntity {
  const factory _PatientGetDetailEntity(
      {required String id,
      required String firstname,
      required String lastname,
      required String ci,
      required String province,
      required String municipality,
      required Sex sex,
      required SkinColor skinColor,
      required BloodType? bloodType,
      required String address,
      required String polyclinic,
      required String surgery,
      required String popularCouncil,
      required String neighborhood,
      required int blockNumber,
      required List<PathologicalEntity> personalPathologicalHistory,
      required List<PathologicalEntity> familyPathologicalHistory,
      required DischargeOfPositiveCasesOfCovid19Entity
          dischargeOfPositiveCasesOfCovid19}) = _$_PatientGetDetailEntity;

  String get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get ci => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  String get municipality => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  SkinColor get skinColor => throw _privateConstructorUsedError;
  @override
  BloodType? get bloodType => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get polyclinic => throw _privateConstructorUsedError;
  String get surgery => throw _privateConstructorUsedError;
  String get popularCouncil => throw _privateConstructorUsedError;
  String get neighborhood => throw _privateConstructorUsedError;
  int get blockNumber => throw _privateConstructorUsedError;
  List<PathologicalEntity> get personalPathologicalHistory =>
      throw _privateConstructorUsedError;
  List<PathologicalEntity> get familyPathologicalHistory =>
      throw _privateConstructorUsedError;
  DischargeOfPositiveCasesOfCovid19Entity
      get dischargeOfPositiveCasesOfCovid19 =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientGetDetailEntityCopyWith<_PatientGetDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PatientPostEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory _$PatientPostEntityCopyWith(
          _PatientPostEntity value, $Res Function(_PatientPostEntity) then) =
      __$PatientPostEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String ci,
      String municipalityCode,
      Sex sex,
      SkinColor skinColor,
      BloodType? bloodType,
      String address,
      String polyclinic,
      String surgery,
      String popularCouncil,
      String neighborhood,
      int blockNumber,
      List<PathologicalEntity> personalPathologicalHistory,
      List<PathologicalEntity> familyPathologicalHistory});
}

/// @nodoc
class __$PatientPostEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements _$PatientPostEntityCopyWith<$Res> {
  __$PatientPostEntityCopyWithImpl(
      _PatientPostEntity _value, $Res Function(_PatientPostEntity) _then)
      : super(_value, (v) => _then(v as _PatientPostEntity));

  @override
  _PatientPostEntity get _value => super._value as _PatientPostEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? municipalityCode = freezed,
    Object? sex = freezed,
    Object? skinColor = freezed,
    Object? bloodType = freezed,
    Object? address = freezed,
    Object? polyclinic = freezed,
    Object? surgery = freezed,
    Object? popularCouncil = freezed,
    Object? neighborhood = freezed,
    Object? blockNumber = freezed,
    Object? personalPathologicalHistory = freezed,
    Object? familyPathologicalHistory = freezed,
  }) {
    return _then(_PatientPostEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      ci: ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String,
      municipalityCode: municipalityCode == freezed
          ? _value.municipalityCode
          : municipalityCode // ignore: cast_nullable_to_non_nullable
              as String,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as SkinColor,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      polyclinic: polyclinic == freezed
          ? _value.polyclinic
          : polyclinic // ignore: cast_nullable_to_non_nullable
              as String,
      surgery: surgery == freezed
          ? _value.surgery
          : surgery // ignore: cast_nullable_to_non_nullable
              as String,
      popularCouncil: popularCouncil == freezed
          ? _value.popularCouncil
          : popularCouncil // ignore: cast_nullable_to_non_nullable
              as String,
      neighborhood: neighborhood == freezed
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int,
      personalPathologicalHistory: personalPathologicalHistory == freezed
          ? _value.personalPathologicalHistory
          : personalPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
      familyPathologicalHistory: familyPathologicalHistory == freezed
          ? _value.familyPathologicalHistory
          : familyPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
    ));
  }
}

/// @nodoc

class _$_PatientPostEntity implements _PatientPostEntity {
  const _$_PatientPostEntity(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.ci,
      required this.municipalityCode,
      required this.sex,
      required this.skinColor,
      required this.bloodType,
      required this.address,
      required this.polyclinic,
      required this.surgery,
      required this.popularCouncil,
      required this.neighborhood,
      required this.blockNumber,
      required this.personalPathologicalHistory,
      required this.familyPathologicalHistory});

  @override
  final String id;
  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String ci;
  @override
  final String municipalityCode;
  @override
  final Sex sex;
  @override
  final SkinColor skinColor;
  @override
  final BloodType? bloodType;
  @override
  final String address;
  @override
  final String polyclinic;
  @override
  final String surgery;
  @override
  final String popularCouncil;
  @override
  final String neighborhood;
  @override
  final int blockNumber;
  @override
  final List<PathologicalEntity> personalPathologicalHistory;
  @override
  final List<PathologicalEntity> familyPathologicalHistory;

  @override
  String toString() {
    return 'PatientEntity.post(id: $id, firstname: $firstname, lastname: $lastname, ci: $ci, municipalityCode: $municipalityCode, sex: $sex, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientPostEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.municipalityCode, municipalityCode) ||
                const DeepCollectionEquality()
                    .equals(other.municipalityCode, municipalityCode)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.skinColor, skinColor) ||
                const DeepCollectionEquality()
                    .equals(other.skinColor, skinColor)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.polyclinic, polyclinic) ||
                const DeepCollectionEquality()
                    .equals(other.polyclinic, polyclinic)) &&
            (identical(other.surgery, surgery) ||
                const DeepCollectionEquality()
                    .equals(other.surgery, surgery)) &&
            (identical(other.popularCouncil, popularCouncil) ||
                const DeepCollectionEquality()
                    .equals(other.popularCouncil, popularCouncil)) &&
            (identical(other.neighborhood, neighborhood) ||
                const DeepCollectionEquality()
                    .equals(other.neighborhood, neighborhood)) &&
            (identical(other.blockNumber, blockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.blockNumber, blockNumber)) &&
            (identical(other.personalPathologicalHistory,
                    personalPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.personalPathologicalHistory,
                    personalPathologicalHistory)) &&
            (identical(other.familyPathologicalHistory,
                    familyPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.familyPathologicalHistory,
                    familyPathologicalHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(municipalityCode) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(skinColor) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(polyclinic) ^
      const DeepCollectionEquality().hash(surgery) ^
      const DeepCollectionEquality().hash(popularCouncil) ^
      const DeepCollectionEquality().hash(neighborhood) ^
      const DeepCollectionEquality().hash(blockNumber) ^
      const DeepCollectionEquality().hash(personalPathologicalHistory) ^
      const DeepCollectionEquality().hash(familyPathologicalHistory);

  @JsonKey(ignore: true)
  @override
  _$PatientPostEntityCopyWith<_PatientPostEntity> get copyWith =>
      __$PatientPostEntityCopyWithImpl<_PatientPostEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        get,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)
        put,
  }) {
    return post(
        id,
        firstname,
        lastname,
        ci,
        municipalityCode,
        sex,
        skinColor,
        bloodType,
        address,
        polyclinic,
        surgery,
        popularCouncil,
        neighborhood,
        blockNumber,
        personalPathologicalHistory,
        familyPathologicalHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        get,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)?
        put,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(
          id,
          firstname,
          lastname,
          ci,
          municipalityCode,
          sex,
          skinColor,
          bloodType,
          address,
          polyclinic,
          surgery,
          popularCouncil,
          neighborhood,
          blockNumber,
          personalPathologicalHistory,
          familyPathologicalHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientGetEntity value) get,
    required TResult Function(_PatientGetDetailEntity value) getDetail,
    required TResult Function(_PatientPostEntity value) post,
    required TResult Function(_PatientPutEntity value) put,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientGetEntity value)? get,
    TResult Function(_PatientGetDetailEntity value)? getDetail,
    TResult Function(_PatientPostEntity value)? post,
    TResult Function(_PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class _PatientPostEntity implements PatientEntity {
  const factory _PatientPostEntity(
          {required String id,
          required String firstname,
          required String lastname,
          required String ci,
          required String municipalityCode,
          required Sex sex,
          required SkinColor skinColor,
          required BloodType? bloodType,
          required String address,
          required String polyclinic,
          required String surgery,
          required String popularCouncil,
          required String neighborhood,
          required int blockNumber,
          required List<PathologicalEntity> personalPathologicalHistory,
          required List<PathologicalEntity> familyPathologicalHistory}) =
      _$_PatientPostEntity;

  String get id => throw _privateConstructorUsedError;
  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get ci => throw _privateConstructorUsedError;
  String get municipalityCode => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  SkinColor get skinColor => throw _privateConstructorUsedError;
  @override
  BloodType? get bloodType => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get polyclinic => throw _privateConstructorUsedError;
  String get surgery => throw _privateConstructorUsedError;
  String get popularCouncil => throw _privateConstructorUsedError;
  String get neighborhood => throw _privateConstructorUsedError;
  int get blockNumber => throw _privateConstructorUsedError;
  List<PathologicalEntity> get personalPathologicalHistory =>
      throw _privateConstructorUsedError;
  List<PathologicalEntity> get familyPathologicalHistory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientPostEntityCopyWith<_PatientPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PatientPutEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory _$PatientPutEntityCopyWith(
          _PatientPutEntity value, $Res Function(_PatientPutEntity) then) =
      __$PatientPutEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? firstname,
      String? lastname,
      String? ci,
      String? municipalityCode,
      Sex? sex,
      SkinColor? skinColor,
      BloodType? bloodType,
      String? address,
      String? polyclinic,
      String? surgery,
      String? popularCouncil,
      String? neighborhood,
      int? blockNumber,
      List<PathologicalEntity>? personalPathologicalHistory,
      List<PathologicalEntity>? familyPathologicalHistory});
}

/// @nodoc
class __$PatientPutEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements _$PatientPutEntityCopyWith<$Res> {
  __$PatientPutEntityCopyWithImpl(
      _PatientPutEntity _value, $Res Function(_PatientPutEntity) _then)
      : super(_value, (v) => _then(v as _PatientPutEntity));

  @override
  _PatientPutEntity get _value => super._value as _PatientPutEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? municipalityCode = freezed,
    Object? sex = freezed,
    Object? skinColor = freezed,
    Object? bloodType = freezed,
    Object? address = freezed,
    Object? polyclinic = freezed,
    Object? surgery = freezed,
    Object? popularCouncil = freezed,
    Object? neighborhood = freezed,
    Object? blockNumber = freezed,
    Object? personalPathologicalHistory = freezed,
    Object? familyPathologicalHistory = freezed,
  }) {
    return _then(_PatientPutEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstname: firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String?,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String?,
      ci: ci == freezed
          ? _value.ci
          : ci // ignore: cast_nullable_to_non_nullable
              as String?,
      municipalityCode: municipalityCode == freezed
          ? _value.municipalityCode
          : municipalityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex?,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as SkinColor?,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      polyclinic: polyclinic == freezed
          ? _value.polyclinic
          : polyclinic // ignore: cast_nullable_to_non_nullable
              as String?,
      surgery: surgery == freezed
          ? _value.surgery
          : surgery // ignore: cast_nullable_to_non_nullable
              as String?,
      popularCouncil: popularCouncil == freezed
          ? _value.popularCouncil
          : popularCouncil // ignore: cast_nullable_to_non_nullable
              as String?,
      neighborhood: neighborhood == freezed
          ? _value.neighborhood
          : neighborhood // ignore: cast_nullable_to_non_nullable
              as String?,
      blockNumber: blockNumber == freezed
          ? _value.blockNumber
          : blockNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      personalPathologicalHistory: personalPathologicalHistory == freezed
          ? _value.personalPathologicalHistory
          : personalPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>?,
      familyPathologicalHistory: familyPathologicalHistory == freezed
          ? _value.familyPathologicalHistory
          : familyPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>?,
    ));
  }
}

/// @nodoc

class _$_PatientPutEntity implements _PatientPutEntity {
  const _$_PatientPutEntity(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.ci,
      required this.municipalityCode,
      required this.sex,
      required this.skinColor,
      required this.bloodType,
      required this.address,
      required this.polyclinic,
      required this.surgery,
      required this.popularCouncil,
      required this.neighborhood,
      required this.blockNumber,
      required this.personalPathologicalHistory,
      required this.familyPathologicalHistory});

  @override
  final String? id;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final String? ci;
  @override
  final String? municipalityCode;
  @override
  final Sex? sex;
  @override
  final SkinColor? skinColor;
  @override
  final BloodType? bloodType;
  @override
  final String? address;
  @override
  final String? polyclinic;
  @override
  final String? surgery;
  @override
  final String? popularCouncil;
  @override
  final String? neighborhood;
  @override
  final int? blockNumber;
  @override
  final List<PathologicalEntity>? personalPathologicalHistory;
  @override
  final List<PathologicalEntity>? familyPathologicalHistory;

  @override
  String toString() {
    return 'PatientEntity.put(id: $id, firstname: $firstname, lastname: $lastname, ci: $ci, municipalityCode: $municipalityCode, sex: $sex, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PatientPutEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.ci, ci) ||
                const DeepCollectionEquality().equals(other.ci, ci)) &&
            (identical(other.municipalityCode, municipalityCode) ||
                const DeepCollectionEquality()
                    .equals(other.municipalityCode, municipalityCode)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.skinColor, skinColor) ||
                const DeepCollectionEquality()
                    .equals(other.skinColor, skinColor)) &&
            (identical(other.bloodType, bloodType) ||
                const DeepCollectionEquality()
                    .equals(other.bloodType, bloodType)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.polyclinic, polyclinic) ||
                const DeepCollectionEquality()
                    .equals(other.polyclinic, polyclinic)) &&
            (identical(other.surgery, surgery) ||
                const DeepCollectionEquality()
                    .equals(other.surgery, surgery)) &&
            (identical(other.popularCouncil, popularCouncil) ||
                const DeepCollectionEquality()
                    .equals(other.popularCouncil, popularCouncil)) &&
            (identical(other.neighborhood, neighborhood) ||
                const DeepCollectionEquality()
                    .equals(other.neighborhood, neighborhood)) &&
            (identical(other.blockNumber, blockNumber) ||
                const DeepCollectionEquality()
                    .equals(other.blockNumber, blockNumber)) &&
            (identical(other.personalPathologicalHistory,
                    personalPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.personalPathologicalHistory,
                    personalPathologicalHistory)) &&
            (identical(other.familyPathologicalHistory,
                    familyPathologicalHistory) ||
                const DeepCollectionEquality().equals(
                    other.familyPathologicalHistory,
                    familyPathologicalHistory)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(ci) ^
      const DeepCollectionEquality().hash(municipalityCode) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(skinColor) ^
      const DeepCollectionEquality().hash(bloodType) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(polyclinic) ^
      const DeepCollectionEquality().hash(surgery) ^
      const DeepCollectionEquality().hash(popularCouncil) ^
      const DeepCollectionEquality().hash(neighborhood) ^
      const DeepCollectionEquality().hash(blockNumber) ^
      const DeepCollectionEquality().hash(personalPathologicalHistory) ^
      const DeepCollectionEquality().hash(familyPathologicalHistory);

  @JsonKey(ignore: true)
  @override
  _$PatientPutEntityCopyWith<_PatientPutEntity> get copyWith =>
      __$PatientPutEntityCopyWithImpl<_PatientPutEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        get,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)
        put,
  }) {
    return put(
        id,
        firstname,
        lastname,
        ci,
        municipalityCode,
        sex,
        skinColor,
        bloodType,
        address,
        polyclinic,
        surgery,
        popularCouncil,
        neighborhood,
        blockNumber,
        personalPathologicalHistory,
        familyPathologicalHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        get,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeOfPositiveCasesOfCovid19Entity
                dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String polyclinic,
            String surgery,
            String popularCouncil,
            String neighborhood,
            int blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String? id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            SkinColor? skinColor,
            BloodType? bloodType,
            String? address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity>? personalPathologicalHistory,
            List<PathologicalEntity>? familyPathologicalHistory)?
        put,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(
          id,
          firstname,
          lastname,
          ci,
          municipalityCode,
          sex,
          skinColor,
          bloodType,
          address,
          polyclinic,
          surgery,
          popularCouncil,
          neighborhood,
          blockNumber,
          personalPathologicalHistory,
          familyPathologicalHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientGetEntity value) get,
    required TResult Function(_PatientGetDetailEntity value) getDetail,
    required TResult Function(_PatientPostEntity value) post,
    required TResult Function(_PatientPutEntity value) put,
  }) {
    return put(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientGetEntity value)? get,
    TResult Function(_PatientGetDetailEntity value)? getDetail,
    TResult Function(_PatientPostEntity value)? post,
    TResult Function(_PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(this);
    }
    return orElse();
  }
}

abstract class _PatientPutEntity implements PatientEntity {
  const factory _PatientPutEntity(
          {required String? id,
          required String? firstname,
          required String? lastname,
          required String? ci,
          required String? municipalityCode,
          required Sex? sex,
          required SkinColor? skinColor,
          required BloodType? bloodType,
          required String? address,
          required String? polyclinic,
          required String? surgery,
          required String? popularCouncil,
          required String? neighborhood,
          required int? blockNumber,
          required List<PathologicalEntity>? personalPathologicalHistory,
          required List<PathologicalEntity>? familyPathologicalHistory}) =
      _$_PatientPutEntity;

  String? get id => throw _privateConstructorUsedError;
  String? get firstname => throw _privateConstructorUsedError;
  String? get lastname => throw _privateConstructorUsedError;
  String? get ci => throw _privateConstructorUsedError;
  String? get municipalityCode => throw _privateConstructorUsedError;
  Sex? get sex => throw _privateConstructorUsedError;
  SkinColor? get skinColor => throw _privateConstructorUsedError;
  @override
  BloodType? get bloodType => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get polyclinic => throw _privateConstructorUsedError;
  String? get surgery => throw _privateConstructorUsedError;
  String? get popularCouncil => throw _privateConstructorUsedError;
  String? get neighborhood => throw _privateConstructorUsedError;
  int? get blockNumber => throw _privateConstructorUsedError;
  List<PathologicalEntity>? get personalPathologicalHistory =>
      throw _privateConstructorUsedError;
  List<PathologicalEntity>? get familyPathologicalHistory =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PatientPutEntityCopyWith<_PatientPutEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
