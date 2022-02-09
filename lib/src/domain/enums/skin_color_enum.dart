import 'package:json_annotation/json_annotation.dart';

enum SkinColor {
  @JsonValue(0)
  White,
  @JsonValue(1)
  Black,
  @JsonValue(2)
  HalfBlood,
  @JsonValue(3)
  Other,
}
