import 'package:freezed_annotation/freezed_annotation.dart';
part 'pathological_entity.freezed.dart';

@freezed
class PathologicalEntity with _$PathologicalEntity {
  const factory PathologicalEntity({
    required String name,
    String? treatments,
  }) = _PathologicalEntity;
}
