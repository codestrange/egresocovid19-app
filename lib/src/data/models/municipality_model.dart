import 'package:json_annotation/json_annotation.dart';

part 'municipality_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MunicipalityModel {
  const MunicipalityModel({
    required this.name,
    required this.code,
  });

  final String name;
  final String code;

  static MunicipalityModel fromJson(Map<String, dynamic> json) =>
      _$MunicipalityModelFromJson(json);

  Map<String, dynamic> toJson() => _$MunicipalityModelToJson(this);
}
