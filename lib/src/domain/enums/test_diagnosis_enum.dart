import 'package:freezed_annotation/freezed_annotation.dart';

enum TestDiagnosis {
  @JsonValue(0)
  AntigenTest,
  @JsonValue(1)
  Biosensor,
  @JsonValue(2)
  PCR,
  @JsonValue(3)
  IgMIgGAntibodyTest,
}
