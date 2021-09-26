// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pathological_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PathologicalModel _$PathologicalModelFromJson(Map<String, dynamic> json) =>
    PathologicalModel(
      name: json['name'] as String,
      treatments: json['treatments'] as String,
    );

Map<String, dynamic> _$PathologicalModelToJson(PathologicalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'treatments': instance.treatments,
    };
