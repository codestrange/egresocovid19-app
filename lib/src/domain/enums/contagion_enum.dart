import 'package:json_annotation/json_annotation.dart';

enum Contagion {
  @JsonValue(0)
  Traveler,
  @JsonValue(1)
  Contact,
  @JsonValue(2)
  Inderterminate,
}
