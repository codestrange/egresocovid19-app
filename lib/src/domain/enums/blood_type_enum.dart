import 'package:json_annotation/json_annotation.dart';

enum BloodType {
  @JsonValue(0)
  Unknown,
  @JsonValue(1)
  Aplus,
  @JsonValue(2)
  Bplus,
  @JsonValue(3)
  ABplus,
  @JsonValue(4)
  Oplus,
  @JsonValue(5)
  Aminus,
  @JsonValue(6)
  Bminus,
  @JsonValue(7)
  ABminus,
  @JsonValue(8)
  Ominus,
}
