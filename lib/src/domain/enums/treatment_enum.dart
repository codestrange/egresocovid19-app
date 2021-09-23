import 'package:freezed_annotation/freezed_annotation.dart';

enum Treatment {
  @JsonValue(0)
  Herferon,
  @JsonValue(1)
  InterferonGeneric,
  @JsonValue(2)
  Jusvinza,
  @JsonValue(3)
  Heberferon,
  @JsonValue(4)
  FraxiparinLowMolecularWeightHeparins,
  @JsonValue(5)
  Nasalferon,
  @JsonValue(6)
  Prednisone,
  @JsonValue(7)
  Prevengovir,
  @JsonValue(8)
  Betamethasone,
  @JsonValue(9)
  Italizumab,
}

Treatment treatmentFromInt(int value) {
  if (value >= Treatment.values.length) {
    throw Exception(
      'Try to convert $value to Treatment enum when max value of Treatment is ${Treatment.values.length - 1}',
    );
  }
  return Treatment.values[value];
}

int treatmentToInt(Treatment value) {
  return value.index;
}
