// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorBaseEntity _$_$_ErrorBaseEntityFromJson(Map<String, dynamic> json) {
  return _$_ErrorBaseEntity(
    errorCode: json['errorCode'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_ErrorBaseEntityToJson(_$_ErrorBaseEntity instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'message': instance.message,
    };
