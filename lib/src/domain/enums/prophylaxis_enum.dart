import 'package:json_annotation/json_annotation.dart';

enum Prophylaxis {
  @JsonValue(0)
  Prevengovir,
  @JsonValue(1)
  Vimang,
  @JsonValue(2)
  Moringa,
  @JsonValue(3)
  BiomodulinT,
  @JsonValue(4)
  VitaminC,
  @JsonValue(5)
  Polivit,
  @JsonValue(6)
  Turmeric,
  @JsonValue(7)
  Soverana2AndPlus,
  @JsonValue(8)
  Honey,
  @JsonValue(9)
  VitaminA,
  @JsonValue(10)
  Ginger,
  @JsonValue(11)
  SoveranaPlus,
  @JsonValue(12)
  Abdala,
  @JsonValue(13)
  Covid19Previously,
  @JsonValue(14)
  AnotherVaccineAgainstCovid,
}
