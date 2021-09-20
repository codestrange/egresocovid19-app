import 'package:egresocovid19/src/data/models/municipality_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'province_model.g.dart';

@JsonSerializable()
class ProvinceModel {
  const ProvinceModel({
    required this.name,
    required this.code,
    required this.municipalities,
  });

  final String name;
  final String code;
  final List<MunicipalityModel> municipalities;

  static ProvinceModel fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProvinceModelToJson(this);
}
