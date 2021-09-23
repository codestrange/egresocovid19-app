import 'package:json_annotation/json_annotation.dart';

enum Sex {
  @JsonValue(0)
  Female,
  @JsonValue(1)
  Male,
  @JsonValue(2)
  Other,
}
