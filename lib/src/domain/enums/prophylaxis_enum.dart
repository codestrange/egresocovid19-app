enum Prophylaxis {
  Prevengovir,
  Vimang,
  Moringa,
  BiomodulinT,
  VitaminC,
  Polivit,
  Turmeric,
  Soverana2AndPlus,
  Honey,
  VitaminA,
  Ginger,
  SoveranaPlus,
  Abdala,
  Covid19Previously,
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
