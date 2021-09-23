enum BloodType {
  Aplus,
  Bplus,
  ABplus,
  Oplus,
  Aminus,
  Bminus,
  ABminus,
  Ominus,
}

BloodType? bloodTypeFromInt(int? value) {
  if (value == null) {
    return null;
  }
  if (value >= BloodType.values.length) {
    throw Exception(
      'Try to convert $value to BloodType enum when max value of BloodType is ${BloodType.values.length - 1}',
    );
  }
  return BloodType.values[value];
}

int? bloodTypeToInt(BloodType? value) {
  if (value == null) {
    return null;
  }
  return value.index;
}
