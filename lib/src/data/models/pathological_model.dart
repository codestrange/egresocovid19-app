import 'package:json_annotation/json_annotation.dart';

part 'pathological_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PathologicalModel {
  const PathologicalModel({
    required this.name,
    required this.treatments,
  });

  final String name;
  final String treatments;

  static PathologicalModel fromJson(Map<String, dynamic> json) =>
      _$PathologicalModelFromJson(json);

  Map<String, dynamic> toJson() => _$PathologicalModelToJson(this);
}
