// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvinceModel _$ProvinceModelFromJson(Map<String, dynamic> json) =>
    ProvinceModel(
      name: json['name'] as String,
      code: json['code'] as String,
      municipalities: (json['municipalities'] as List<dynamic>)
          .map((e) => MunicipalityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProvinceModelToJson(ProvinceModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'municipalities': instance.municipalities.map((e) => e.toJson()).toList(),
    };
