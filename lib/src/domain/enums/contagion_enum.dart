enum Contagion {
  Traveler,
  Contact,
  Inderterminate,
}

Contagion contagionFromInt(int value) {
  if (value >= Contagion.values.length) {
    throw Exception(
      'Try to convert $value to Contagion enum when max value of Contagion is ${Contagion.values.length - 1}',
    );
  }
  return Contagion.values[value];
}

int contagionToInt(Contagion value) {
  return value.index;
}
