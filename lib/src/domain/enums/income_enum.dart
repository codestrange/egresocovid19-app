import 'package:freezed_annotation/freezed_annotation.dart';

enum Income {
  @JsonValue(0)
  Home,
  @JsonValue(1)
  IsolationCenter,
  @JsonValue(2)
  HospitalRoom,
  @JsonValue(3)
  IntermediateTherapy,
  @JsonValue(4)
  IntensiveTherapy,
}
