import 'package:json_annotation/json_annotation.dart';

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
  @JsonValue(10)
  Antibiotics,
}
