import 'package:json_annotation/json_annotation.dart';

enum Aftermath {
  @JsonValue(0)
  Fatigue,
  @JsonValue(1)
  Headache,
  @JsonValue(2)
  Alopecia,
  @JsonValue(3)
  RespiratorySymptoms,
  @JsonValue(4)
  MuscleBoneNeuropathicPain,
  @JsonValue(5)
  PsychologicalPsychiatricDisorders,
  @JsonValue(6)
  SexualDisorders,
  @JsonValue(7)
  SleepDisorder,
  @JsonValue(8)
  PersistenceOfLossOfSmell,
  @JsonValue(9)
  PersistenceOfLossOfAppetite,
  @JsonValue(10)
  GastrointestinalSymptoms,
  @JsonValue(11)
  Dizziness,
  @JsonValue(12)
  DesiresToVomit,
  @JsonValue(13)
  Others,
}
