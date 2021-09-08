import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_entity.freezed.dart';
part 'error_entity.g.dart';

@freezed
class ErrorEntity with _$ErrorEntity {
  const factory ErrorEntity({
    required String errorCode,
    required String message,
  }) = _ErrorBaseEntity;

  factory ErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$ErrorEntityFromJson(json);
}
