enum Treatment {
  Herferon,
  InterferonGeneric,
  Jusvinza,
  Heberferon,
  FraxiparinLowMolecularWeightHeparins,
  Nasalferon,
  Prednisone,
  Prevengovir,
  Betamethasone,
  Italizumab,
  Antibiotics,
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
