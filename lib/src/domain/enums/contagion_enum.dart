import 'package:freezed_annotation/freezed_annotation.dart';

enum Contagion {
  @JsonValue(0)
  Traveler,
  @JsonValue(1)
  Contact,
  @JsonValue(2)
  Inderterminate,
}
