// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  PatientGetEntity get(
      {required String id,
      required String firstname,
      required String lastname,
      required String ci,
      required String province,
      required String municipality,
      required Sex sex,
      required int age,
      required SkinColor skinColor,
      required BloodType? bloodType,
      required String address,
      required String? polyclinic,
      required String? surgery,
      required String? popularCouncil,
      required String? neighborhood,
      required int? blockNumber,
      required List<PathologicalEntity> personalPathologicalHistory,
      required List<PathologicalEntity> familyPathologicalHistory}) {
    return PatientGetEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      province: province,
      municipality: municipality,
      sex: sex,
      age: age,
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

  PatientGetDetailEntity getDetail(
      {required String id,
      required String firstname,
      required String lastname,
      required String ci,
      required String province,
      required String municipality,
      required Sex sex,
      required int age,
      required SkinColor skinColor,
      required BloodType? bloodType,
      required String address,
      required String? polyclinic,
      required String? surgery,
      required String? popularCouncil,
      required String? neighborhood,
      required int? blockNumber,
      required List<PathologicalEntity> personalPathologicalHistory,
      required List<PathologicalEntity> familyPathologicalHistory,
      required DischargeDataEntity dischargeOfPositiveCasesOfCovid19}) {
    return PatientGetDetailEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      province: province,
      municipality: municipality,
      sex: sex,
      age: age,
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

  PatientPostEntity post(
      {required String firstname,
      required String lastname,
      required String ci,
      required String municipalityCode,
      required Sex sex,
      required int age,
      required SkinColor skinColor,
      required BloodType? bloodType,
      required String address,
      required String? polyclinic,
      required String? surgery,
      required String? popularCouncil,
      required String? neighborhood,
      required int? blockNumber,
      required List<PathologicalEntity> personalPathologicalHistory,
      required List<PathologicalEntity> familyPathologicalHistory}) {
    return PatientPostEntity(
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      municipalityCode: municipalityCode,
      sex: sex,
      age: age,
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

  PatientPutEntity put(
      {required String id,
      required String? firstname,
      required String? lastname,
      required String? ci,
      required String? municipalityCode,
      required Sex? sex,
      required int? age,
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
    return PatientPutEntity(
      id: id,
      firstname: firstname,
      lastname: lastname,
      ci: ci,
      municipalityCode: municipalityCode,
      sex: sex,
      age: age,
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
  String? get polyclinic => throw _privateConstructorUsedError;
  String? get surgery => throw _privateConstructorUsedError;
  String? get popularCouncil => throw _privateConstructorUsedError;
  String? get neighborhood => throw _privateConstructorUsedError;
  int? get blockNumber => throw _privateConstructorUsedError;

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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
    required TResult Function(PatientGetEntity value) get,
    required TResult Function(PatientGetDetailEntity value) getDetail,
    required TResult Function(PatientPostEntity value) post,
    required TResult Function(PatientPutEntity value) put,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
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
  $Res call(
      {BloodType? bloodType,
      String? polyclinic,
      String? surgery,
      String? popularCouncil,
      String? neighborhood,
      int? blockNumber});
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
    Object? polyclinic = freezed,
    Object? surgery = freezed,
    Object? popularCouncil = freezed,
    Object? neighborhood = freezed,
    Object? blockNumber = freezed,
  }) {
    return _then(_value.copyWith(
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
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
    ));
  }
}

/// @nodoc
abstract class $PatientGetEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory $PatientGetEntityCopyWith(
          PatientGetEntity value, $Res Function(PatientGetEntity) then) =
      _$PatientGetEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String ci,
      String province,
      String municipality,
      Sex sex,
      int age,
      SkinColor skinColor,
      BloodType? bloodType,
      String address,
      String? polyclinic,
      String? surgery,
      String? popularCouncil,
      String? neighborhood,
      int? blockNumber,
      List<PathologicalEntity> personalPathologicalHistory,
      List<PathologicalEntity> familyPathologicalHistory});
}

/// @nodoc
class _$PatientGetEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements $PatientGetEntityCopyWith<$Res> {
  _$PatientGetEntityCopyWithImpl(
      PatientGetEntity _value, $Res Function(PatientGetEntity) _then)
      : super(_value, (v) => _then(v as PatientGetEntity));

  @override
  PatientGetEntity get _value => super._value as PatientGetEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? province = freezed,
    Object? municipality = freezed,
    Object? sex = freezed,
    Object? age = freezed,
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
    return _then(PatientGetEntity(
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
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<PathologicalEntity>,
      familyPathologicalHistory: familyPathologicalHistory == freezed
          ? _value.familyPathologicalHistory
          : familyPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
    ));
  }
}

/// @nodoc

class _$PatientGetEntity implements PatientGetEntity {
  const _$PatientGetEntity(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.ci,
      required this.province,
      required this.municipality,
      required this.sex,
      required this.age,
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
  final int age;
  @override
  final SkinColor skinColor;
  @override
  final BloodType? bloodType;
  @override
  final String address;
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
  final List<PathologicalEntity> personalPathologicalHistory;
  @override
  final List<PathologicalEntity> familyPathologicalHistory;

  @override
  String toString() {
    return 'PatientEntity.get(id: $id, firstname: $firstname, lastname: $lastname, ci: $ci, province: $province, municipality: $municipality, sex: $sex, age: $age, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PatientGetEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.ci, ci) &&
            const DeepCollectionEquality().equals(other.province, province) &&
            const DeepCollectionEquality()
                .equals(other.municipality, municipality) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.skinColor, skinColor) &&
            const DeepCollectionEquality().equals(other.bloodType, bloodType) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.polyclinic, polyclinic) &&
            const DeepCollectionEquality().equals(other.surgery, surgery) &&
            const DeepCollectionEquality()
                .equals(other.popularCouncil, popularCouncil) &&
            const DeepCollectionEquality()
                .equals(other.neighborhood, neighborhood) &&
            const DeepCollectionEquality()
                .equals(other.blockNumber, blockNumber) &&
            const DeepCollectionEquality().equals(
                other.personalPathologicalHistory,
                personalPathologicalHistory) &&
            const DeepCollectionEquality().equals(
                other.familyPathologicalHistory, familyPathologicalHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(ci),
      const DeepCollectionEquality().hash(province),
      const DeepCollectionEquality().hash(municipality),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(skinColor),
      const DeepCollectionEquality().hash(bloodType),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(polyclinic),
      const DeepCollectionEquality().hash(surgery),
      const DeepCollectionEquality().hash(popularCouncil),
      const DeepCollectionEquality().hash(neighborhood),
      const DeepCollectionEquality().hash(blockNumber),
      const DeepCollectionEquality().hash(personalPathologicalHistory),
      const DeepCollectionEquality().hash(familyPathologicalHistory));

  @JsonKey(ignore: true)
  @override
  $PatientGetEntityCopyWith<PatientGetEntity> get copyWith =>
      _$PatientGetEntityCopyWithImpl<PatientGetEntity>(this, _$identity);

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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
        age,
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
  }) {
    return get?.call(
        id,
        firstname,
        lastname,
        ci,
        province,
        municipality,
        sex,
        age,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
          age,
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
    required TResult Function(PatientGetEntity value) get,
    required TResult Function(PatientGetDetailEntity value) getDetail,
    required TResult Function(PatientPostEntity value) post,
    required TResult Function(PatientPutEntity value) put,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class PatientGetEntity implements PatientEntity {
  const factory PatientGetEntity(
          {required String id,
          required String firstname,
          required String lastname,
          required String ci,
          required String province,
          required String municipality,
          required Sex sex,
          required int age,
          required SkinColor skinColor,
          required BloodType? bloodType,
          required String address,
          required String? polyclinic,
          required String? surgery,
          required String? popularCouncil,
          required String? neighborhood,
          required int? blockNumber,
          required List<PathologicalEntity> personalPathologicalHistory,
          required List<PathologicalEntity> familyPathologicalHistory}) =
      _$PatientGetEntity;

  String get id;
  String get firstname;
  String get lastname;
  String get ci;
  String get province;
  String get municipality;
  Sex get sex;
  int get age;
  SkinColor get skinColor;
  @override
  BloodType? get bloodType;
  String get address;
  @override
  String? get polyclinic;
  @override
  String? get surgery;
  @override
  String? get popularCouncil;
  @override
  String? get neighborhood;
  @override
  int? get blockNumber;
  List<PathologicalEntity> get personalPathologicalHistory;
  List<PathologicalEntity> get familyPathologicalHistory;
  @override
  @JsonKey(ignore: true)
  $PatientGetEntityCopyWith<PatientGetEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientGetDetailEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory $PatientGetDetailEntityCopyWith(PatientGetDetailEntity value,
          $Res Function(PatientGetDetailEntity) then) =
      _$PatientGetDetailEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String firstname,
      String lastname,
      String ci,
      String province,
      String municipality,
      Sex sex,
      int age,
      SkinColor skinColor,
      BloodType? bloodType,
      String address,
      String? polyclinic,
      String? surgery,
      String? popularCouncil,
      String? neighborhood,
      int? blockNumber,
      List<PathologicalEntity> personalPathologicalHistory,
      List<PathologicalEntity> familyPathologicalHistory,
      DischargeDataEntity dischargeOfPositiveCasesOfCovid19});

  $DischargeDataEntityCopyWith<$Res> get dischargeOfPositiveCasesOfCovid19;
}

/// @nodoc
class _$PatientGetDetailEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements $PatientGetDetailEntityCopyWith<$Res> {
  _$PatientGetDetailEntityCopyWithImpl(PatientGetDetailEntity _value,
      $Res Function(PatientGetDetailEntity) _then)
      : super(_value, (v) => _then(v as PatientGetDetailEntity));

  @override
  PatientGetDetailEntity get _value => super._value as PatientGetDetailEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? province = freezed,
    Object? municipality = freezed,
    Object? sex = freezed,
    Object? age = freezed,
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
    return _then(PatientGetDetailEntity(
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
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<PathologicalEntity>,
      familyPathologicalHistory: familyPathologicalHistory == freezed
          ? _value.familyPathologicalHistory
          : familyPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
      dischargeOfPositiveCasesOfCovid19: dischargeOfPositiveCasesOfCovid19 ==
              freezed
          ? _value.dischargeOfPositiveCasesOfCovid19
          : dischargeOfPositiveCasesOfCovid19 // ignore: cast_nullable_to_non_nullable
              as DischargeDataEntity,
    ));
  }

  @override
  $DischargeDataEntityCopyWith<$Res> get dischargeOfPositiveCasesOfCovid19 {
    return $DischargeDataEntityCopyWith<$Res>(
        _value.dischargeOfPositiveCasesOfCovid19, (value) {
      return _then(_value.copyWith(dischargeOfPositiveCasesOfCovid19: value));
    });
  }
}

/// @nodoc

class _$PatientGetDetailEntity implements PatientGetDetailEntity {
  const _$PatientGetDetailEntity(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.ci,
      required this.province,
      required this.municipality,
      required this.sex,
      required this.age,
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
  final int age;
  @override
  final SkinColor skinColor;
  @override
  final BloodType? bloodType;
  @override
  final String address;
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
  final List<PathologicalEntity> personalPathologicalHistory;
  @override
  final List<PathologicalEntity> familyPathologicalHistory;
  @override
  final DischargeDataEntity dischargeOfPositiveCasesOfCovid19;

  @override
  String toString() {
    return 'PatientEntity.getDetail(id: $id, firstname: $firstname, lastname: $lastname, ci: $ci, province: $province, municipality: $municipality, sex: $sex, age: $age, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory, dischargeOfPositiveCasesOfCovid19: $dischargeOfPositiveCasesOfCovid19)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PatientGetDetailEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.ci, ci) &&
            const DeepCollectionEquality().equals(other.province, province) &&
            const DeepCollectionEquality()
                .equals(other.municipality, municipality) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.skinColor, skinColor) &&
            const DeepCollectionEquality().equals(other.bloodType, bloodType) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.polyclinic, polyclinic) &&
            const DeepCollectionEquality().equals(other.surgery, surgery) &&
            const DeepCollectionEquality()
                .equals(other.popularCouncil, popularCouncil) &&
            const DeepCollectionEquality()
                .equals(other.neighborhood, neighborhood) &&
            const DeepCollectionEquality()
                .equals(other.blockNumber, blockNumber) &&
            const DeepCollectionEquality().equals(
                other.personalPathologicalHistory,
                personalPathologicalHistory) &&
            const DeepCollectionEquality().equals(
                other.familyPathologicalHistory, familyPathologicalHistory) &&
            const DeepCollectionEquality().equals(
                other.dischargeOfPositiveCasesOfCovid19,
                dischargeOfPositiveCasesOfCovid19));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(firstname),
        const DeepCollectionEquality().hash(lastname),
        const DeepCollectionEquality().hash(ci),
        const DeepCollectionEquality().hash(province),
        const DeepCollectionEquality().hash(municipality),
        const DeepCollectionEquality().hash(sex),
        const DeepCollectionEquality().hash(age),
        const DeepCollectionEquality().hash(skinColor),
        const DeepCollectionEquality().hash(bloodType),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(polyclinic),
        const DeepCollectionEquality().hash(surgery),
        const DeepCollectionEquality().hash(popularCouncil),
        const DeepCollectionEquality().hash(neighborhood),
        const DeepCollectionEquality().hash(blockNumber),
        const DeepCollectionEquality().hash(personalPathologicalHistory),
        const DeepCollectionEquality().hash(familyPathologicalHistory),
        const DeepCollectionEquality().hash(dischargeOfPositiveCasesOfCovid19)
      ]);

  @JsonKey(ignore: true)
  @override
  $PatientGetDetailEntityCopyWith<PatientGetDetailEntity> get copyWith =>
      _$PatientGetDetailEntityCopyWithImpl<PatientGetDetailEntity>(
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
        age,
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
  }) {
    return getDetail?.call(
        id,
        firstname,
        lastname,
        ci,
        province,
        municipality,
        sex,
        age,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
          age,
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
    required TResult Function(PatientGetEntity value) get,
    required TResult Function(PatientGetDetailEntity value) getDetail,
    required TResult Function(PatientPostEntity value) post,
    required TResult Function(PatientPutEntity value) put,
  }) {
    return getDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
  }) {
    return getDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(this);
    }
    return orElse();
  }
}

abstract class PatientGetDetailEntity implements PatientEntity {
  const factory PatientGetDetailEntity(
          {required String id,
          required String firstname,
          required String lastname,
          required String ci,
          required String province,
          required String municipality,
          required Sex sex,
          required int age,
          required SkinColor skinColor,
          required BloodType? bloodType,
          required String address,
          required String? polyclinic,
          required String? surgery,
          required String? popularCouncil,
          required String? neighborhood,
          required int? blockNumber,
          required List<PathologicalEntity> personalPathologicalHistory,
          required List<PathologicalEntity> familyPathologicalHistory,
          required DischargeDataEntity dischargeOfPositiveCasesOfCovid19}) =
      _$PatientGetDetailEntity;

  String get id;
  String get firstname;
  String get lastname;
  String get ci;
  String get province;
  String get municipality;
  Sex get sex;
  int get age;
  SkinColor get skinColor;
  @override
  BloodType? get bloodType;
  String get address;
  @override
  String? get polyclinic;
  @override
  String? get surgery;
  @override
  String? get popularCouncil;
  @override
  String? get neighborhood;
  @override
  int? get blockNumber;
  List<PathologicalEntity> get personalPathologicalHistory;
  List<PathologicalEntity> get familyPathologicalHistory;
  DischargeDataEntity get dischargeOfPositiveCasesOfCovid19;
  @override
  @JsonKey(ignore: true)
  $PatientGetDetailEntityCopyWith<PatientGetDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientPostEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory $PatientPostEntityCopyWith(
          PatientPostEntity value, $Res Function(PatientPostEntity) then) =
      _$PatientPostEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String firstname,
      String lastname,
      String ci,
      String municipalityCode,
      Sex sex,
      int age,
      SkinColor skinColor,
      BloodType? bloodType,
      String address,
      String? polyclinic,
      String? surgery,
      String? popularCouncil,
      String? neighborhood,
      int? blockNumber,
      List<PathologicalEntity> personalPathologicalHistory,
      List<PathologicalEntity> familyPathologicalHistory});
}

/// @nodoc
class _$PatientPostEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements $PatientPostEntityCopyWith<$Res> {
  _$PatientPostEntityCopyWithImpl(
      PatientPostEntity _value, $Res Function(PatientPostEntity) _then)
      : super(_value, (v) => _then(v as PatientPostEntity));

  @override
  PatientPostEntity get _value => super._value as PatientPostEntity;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? municipalityCode = freezed,
    Object? sex = freezed,
    Object? age = freezed,
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
    return _then(PatientPostEntity(
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
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
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
              as List<PathologicalEntity>,
      familyPathologicalHistory: familyPathologicalHistory == freezed
          ? _value.familyPathologicalHistory
          : familyPathologicalHistory // ignore: cast_nullable_to_non_nullable
              as List<PathologicalEntity>,
    ));
  }
}

/// @nodoc

class _$PatientPostEntity implements PatientPostEntity {
  const _$PatientPostEntity(
      {required this.firstname,
      required this.lastname,
      required this.ci,
      required this.municipalityCode,
      required this.sex,
      required this.age,
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
  final int age;
  @override
  final SkinColor skinColor;
  @override
  final BloodType? bloodType;
  @override
  final String address;
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
  final List<PathologicalEntity> personalPathologicalHistory;
  @override
  final List<PathologicalEntity> familyPathologicalHistory;

  @override
  String toString() {
    return 'PatientEntity.post(firstname: $firstname, lastname: $lastname, ci: $ci, municipalityCode: $municipalityCode, sex: $sex, age: $age, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PatientPostEntity &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.ci, ci) &&
            const DeepCollectionEquality()
                .equals(other.municipalityCode, municipalityCode) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.skinColor, skinColor) &&
            const DeepCollectionEquality().equals(other.bloodType, bloodType) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.polyclinic, polyclinic) &&
            const DeepCollectionEquality().equals(other.surgery, surgery) &&
            const DeepCollectionEquality()
                .equals(other.popularCouncil, popularCouncil) &&
            const DeepCollectionEquality()
                .equals(other.neighborhood, neighborhood) &&
            const DeepCollectionEquality()
                .equals(other.blockNumber, blockNumber) &&
            const DeepCollectionEquality().equals(
                other.personalPathologicalHistory,
                personalPathologicalHistory) &&
            const DeepCollectionEquality().equals(
                other.familyPathologicalHistory, familyPathologicalHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(ci),
      const DeepCollectionEquality().hash(municipalityCode),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(skinColor),
      const DeepCollectionEquality().hash(bloodType),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(polyclinic),
      const DeepCollectionEquality().hash(surgery),
      const DeepCollectionEquality().hash(popularCouncil),
      const DeepCollectionEquality().hash(neighborhood),
      const DeepCollectionEquality().hash(blockNumber),
      const DeepCollectionEquality().hash(personalPathologicalHistory),
      const DeepCollectionEquality().hash(familyPathologicalHistory));

  @JsonKey(ignore: true)
  @override
  $PatientPostEntityCopyWith<PatientPostEntity> get copyWith =>
      _$PatientPostEntityCopyWithImpl<PatientPostEntity>(this, _$identity);

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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
        firstname,
        lastname,
        ci,
        municipalityCode,
        sex,
        age,
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
  }) {
    return post?.call(
        firstname,
        lastname,
        ci,
        municipalityCode,
        sex,
        age,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
          firstname,
          lastname,
          ci,
          municipalityCode,
          sex,
          age,
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
    required TResult Function(PatientGetEntity value) get,
    required TResult Function(PatientGetDetailEntity value) getDetail,
    required TResult Function(PatientPostEntity value) post,
    required TResult Function(PatientPutEntity value) put,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }
}

abstract class PatientPostEntity implements PatientEntity {
  const factory PatientPostEntity(
          {required String firstname,
          required String lastname,
          required String ci,
          required String municipalityCode,
          required Sex sex,
          required int age,
          required SkinColor skinColor,
          required BloodType? bloodType,
          required String address,
          required String? polyclinic,
          required String? surgery,
          required String? popularCouncil,
          required String? neighborhood,
          required int? blockNumber,
          required List<PathologicalEntity> personalPathologicalHistory,
          required List<PathologicalEntity> familyPathologicalHistory}) =
      _$PatientPostEntity;

  String get firstname;
  String get lastname;
  String get ci;
  String get municipalityCode;
  Sex get sex;
  int get age;
  SkinColor get skinColor;
  @override
  BloodType? get bloodType;
  String get address;
  @override
  String? get polyclinic;
  @override
  String? get surgery;
  @override
  String? get popularCouncil;
  @override
  String? get neighborhood;
  @override
  int? get blockNumber;
  List<PathologicalEntity> get personalPathologicalHistory;
  List<PathologicalEntity> get familyPathologicalHistory;
  @override
  @JsonKey(ignore: true)
  $PatientPostEntityCopyWith<PatientPostEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientPutEntityCopyWith<$Res>
    implements $PatientEntityCopyWith<$Res> {
  factory $PatientPutEntityCopyWith(
          PatientPutEntity value, $Res Function(PatientPutEntity) then) =
      _$PatientPutEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String? firstname,
      String? lastname,
      String? ci,
      String? municipalityCode,
      Sex? sex,
      int? age,
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
class _$PatientPutEntityCopyWithImpl<$Res>
    extends _$PatientEntityCopyWithImpl<$Res>
    implements $PatientPutEntityCopyWith<$Res> {
  _$PatientPutEntityCopyWithImpl(
      PatientPutEntity _value, $Res Function(PatientPutEntity) _then)
      : super(_value, (v) => _then(v as PatientPutEntity));

  @override
  PatientPutEntity get _value => super._value as PatientPutEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? ci = freezed,
    Object? municipalityCode = freezed,
    Object? sex = freezed,
    Object? age = freezed,
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
    return _then(PatientPutEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
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

class _$PatientPutEntity implements PatientPutEntity {
  const _$PatientPutEntity(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.ci,
      required this.municipalityCode,
      required this.sex,
      required this.age,
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
  final int? age;
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
    return 'PatientEntity.put(id: $id, firstname: $firstname, lastname: $lastname, ci: $ci, municipalityCode: $municipalityCode, sex: $sex, age: $age, skinColor: $skinColor, bloodType: $bloodType, address: $address, polyclinic: $polyclinic, surgery: $surgery, popularCouncil: $popularCouncil, neighborhood: $neighborhood, blockNumber: $blockNumber, personalPathologicalHistory: $personalPathologicalHistory, familyPathologicalHistory: $familyPathologicalHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PatientPutEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstname, firstname) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.ci, ci) &&
            const DeepCollectionEquality()
                .equals(other.municipalityCode, municipalityCode) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.skinColor, skinColor) &&
            const DeepCollectionEquality().equals(other.bloodType, bloodType) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.polyclinic, polyclinic) &&
            const DeepCollectionEquality().equals(other.surgery, surgery) &&
            const DeepCollectionEquality()
                .equals(other.popularCouncil, popularCouncil) &&
            const DeepCollectionEquality()
                .equals(other.neighborhood, neighborhood) &&
            const DeepCollectionEquality()
                .equals(other.blockNumber, blockNumber) &&
            const DeepCollectionEquality().equals(
                other.personalPathologicalHistory,
                personalPathologicalHistory) &&
            const DeepCollectionEquality().equals(
                other.familyPathologicalHistory, familyPathologicalHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstname),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(ci),
      const DeepCollectionEquality().hash(municipalityCode),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(skinColor),
      const DeepCollectionEquality().hash(bloodType),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(polyclinic),
      const DeepCollectionEquality().hash(surgery),
      const DeepCollectionEquality().hash(popularCouncil),
      const DeepCollectionEquality().hash(neighborhood),
      const DeepCollectionEquality().hash(blockNumber),
      const DeepCollectionEquality().hash(personalPathologicalHistory),
      const DeepCollectionEquality().hash(familyPathologicalHistory));

  @JsonKey(ignore: true)
  @override
  $PatientPutEntityCopyWith<PatientPutEntity> get copyWith =>
      _$PatientPutEntityCopyWithImpl<PatientPutEntity>(this, _$identity);

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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)
        getDetail,
    required TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)
        post,
    required TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
        age,
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String id,
            String firstname,
            String lastname,
            String ci,
            String province,
            String municipality,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
  }) {
    return put?.call(
        id,
        firstname,
        lastname,
        ci,
        municipalityCode,
        sex,
        age,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
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
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory,
            DischargeDataEntity dischargeOfPositiveCasesOfCovid19)?
        getDetail,
    TResult Function(
            String firstname,
            String lastname,
            String ci,
            String municipalityCode,
            Sex sex,
            int age,
            SkinColor skinColor,
            BloodType? bloodType,
            String address,
            String? polyclinic,
            String? surgery,
            String? popularCouncil,
            String? neighborhood,
            int? blockNumber,
            List<PathologicalEntity> personalPathologicalHistory,
            List<PathologicalEntity> familyPathologicalHistory)?
        post,
    TResult Function(
            String id,
            String? firstname,
            String? lastname,
            String? ci,
            String? municipalityCode,
            Sex? sex,
            int? age,
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
          age,
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
    required TResult Function(PatientGetEntity value) get,
    required TResult Function(PatientGetDetailEntity value) getDetail,
    required TResult Function(PatientPostEntity value) post,
    required TResult Function(PatientPutEntity value) put,
  }) {
    return put(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
  }) {
    return put?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PatientGetEntity value)? get,
    TResult Function(PatientGetDetailEntity value)? getDetail,
    TResult Function(PatientPostEntity value)? post,
    TResult Function(PatientPutEntity value)? put,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(this);
    }
    return orElse();
  }
}

abstract class PatientPutEntity implements PatientEntity {
  const factory PatientPutEntity(
          {required String id,
          required String? firstname,
          required String? lastname,
          required String? ci,
          required String? municipalityCode,
          required Sex? sex,
          required int? age,
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
      _$PatientPutEntity;

  String get id;
  String? get firstname;
  String? get lastname;
  String? get ci;
  String? get municipalityCode;
  Sex? get sex;
  int? get age;
  SkinColor? get skinColor;
  @override
  BloodType? get bloodType;
  String? get address;
  @override
  String? get polyclinic;
  @override
  String? get surgery;
  @override
  String? get popularCouncil;
  @override
  String? get neighborhood;
  @override
  int? get blockNumber;
  List<PathologicalEntity>? get personalPathologicalHistory;
  List<PathologicalEntity>? get familyPathologicalHistory;
  @override
  @JsonKey(ignore: true)
  $PatientPutEntityCopyWith<PatientPutEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
