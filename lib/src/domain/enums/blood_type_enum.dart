import 'package:json_annotation/json_annotation.dart';

enum BloodType {
  @JsonValue(0)
  Aplus,
  @JsonValue(1)
  Bplus,
  @JsonValue(2)
  ABplus,
  @JsonValue(3)
  Oplus,
  @JsonValue(4)
  Aminus,
  @JsonValue(5)
  Bminus,
  @JsonValue(6)
  ABminus,
  @JsonValue(7)
  Ominus,
}
