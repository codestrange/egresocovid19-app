enum Aftermath {
  Fatigue,
  Headache,
  Alopecia,
  RespiratorySymptoms,
  MuscleBoneNeuropathicPain,
  PsychologicalPsychiatricDisorders,
  SexualDisorders,
  SleepDisorder,
  PersistenceOfLossOfSmell,
  PersistenceOfLossOfAppetite,
  GastrointestinalSymptoms,
  Dizziness,
  DesiresToVomit,
  Others,
}

Aftermath aftermathFromInt(int value) {
  if (value >= Aftermath.values.length) {
    throw Exception(
      'Try to convert $value to Aftermath enum when max value of Aftermath is ${Aftermath.values.length - 1}',
    );
  }
  return Aftermath.values[value];
}

int aftermathToInt(Aftermath value) {
  return value.index;
}
