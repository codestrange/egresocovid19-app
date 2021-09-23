import 'package:freezed_annotation/freezed_annotation.dart';

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

Prophylaxis prophylaxisFromInt(int value) {
  if (value >= Prophylaxis.values.length) {
    throw Exception(
      'Try to convert $value to Prophylaxis enum when max value of Prophylaxis is ${Prophylaxis.values.length - 1}',
    );
  }
  return Prophylaxis.values[value];
}

int prophylaxisToInt(Prophylaxis value) {
  return value.index;
}
