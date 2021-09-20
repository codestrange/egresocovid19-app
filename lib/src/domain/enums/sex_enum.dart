enum Sex {
  Female,
  Male,
  Other,
}

Sex sexFromInt(int value) {
  if (value >= Sex.values.length) {
    throw Exception(
      'Try to convert $value to Sex enum when max value of Sex is ${Sex.values.length - 1}',
    );
  }
  return Sex.values[value];
}

int sexToInt(Sex value) {
  return value.index;
}

Sex? sexNullableFromInt(int? value) {
  if (value == null) {
    return null;
  }
  if (value >= Sex.values.length) {
    throw Exception(
      'Try to convert $value to Sex enum when max value of Sex is ${Sex.values.length - 1}',
    );
  }
  return Sex.values[value];
}

int? sexNullableToInt(Sex? value) {
  if (value == null) {
    return null;
  }
  return value.index;
}
