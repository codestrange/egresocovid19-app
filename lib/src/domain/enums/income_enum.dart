enum Income {
  Home,
  IsolationCenter,
  HospitalRoom,
  IntermediateTherapy,
  IntensiveTherapy,
}

Income incomeFromInt(int value) {
  if (value >= Income.values.length) {
    throw Exception(
      'Try to convert $value to Income enum when max value of Income is ${Income.values.length - 1}',
    );
  }
  return Income.values[value];
}

int incomeToInt(Income value) {
  return value.index;
}
